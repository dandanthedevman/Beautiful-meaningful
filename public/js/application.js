$(document).ready(function() {

  /*************************************
    Step by step ajax
    1. What am I interacting with on the page? (button, form, link)
    2. How are we interacting with this thing?  (click, submit, hover, mouseover)
      A) Determine if we need event delegation (is the element stable, i.e. will it always be on the page at page load)
      B) If we do need event delegation, find the nearest stable parent and delegate to it
    3. Do we have a default behavior to prevent?
    4. Check that everything is wired up (console.log)
    5. Set up ajax call
        - url
        - method/type
        - data if you need to send it
        - dataType (what you expect back from the server)
    6. Test is out... make sure you are hitting your route
    7. Figure out if you need modifications to your controller (request.xhr?)
       - What do you need to send back? (partial, json, string)
    8. Check to see we are getting the right thing back.  (console.log)
    9. figure out what we are updating on the page (html element) - OPEN INSPECTOR
   10. update the page
  *************************************/

  $(".submit-button").on("click", function() {
    /* Act on the event */
    event.preventDefault();
    console.log("yo")
  });

});
