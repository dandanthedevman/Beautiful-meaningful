get '/judgments' do
  erb :'/judgments/index'
end

post '/judgments' do
  @name = params[:name]
  @filename = params[:file][:filename]
  file = params[:file][:tempfile]
 
  File.open("./public/#{@filename}", 'wb') do |f|
    f.write(file.read)
  end
  
  uri = URI('https://westcentralus.api.cognitive.microsoft.com/vision/v1.0/analyze')
  uri.query = URI.encode_www_form({
  # Request parameters
  'visualFeatures' => 'Tags',
  # 'details' => '{string}',
  'language' => 'en'
  })
  request = Net::HTTP::Post.new(uri.request_uri)
  # Request headers
  request['Content-Type'] = 'application/json'
  # Request headers
  request['Ocp-Apim-Subscription-Key'] = 'bcbf5a3d4c104d4ab54d8c54220aa935'
  # Request body
  p request.body = {"url" => "https://fierce-tundra-82811.herokuapp.com/#{@filename}"}.to_json
  
  response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
    http.request(request)
  end
  response = response.body
  @tags = JSON.parse(response, symbolize_keys: true)

  erb :'/judgments/response'

end

