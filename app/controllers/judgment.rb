get '/judgments' do
  erb :'/judgments/index'
end

post '/judgments' do
  p params
  @name = params[:name]
  @filename = params[:file][:filename]
  file = params[:file][:tempfile]
  # if request.xhr?
    # p "pass"
    File.open("./public/#{@filename}", 'wb') do |f|
      f.write(file.read)
    end
    erb :'/judgments/_uploaded_image', layout: false, locals: { name: @name, filename: @filename  }
  # else
    # p "fail"
    # redirect '/judgments'
  # end
end
