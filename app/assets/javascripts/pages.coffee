$(document).ready ->
  #######################
  # Question Navigator
  $("#js-click_me").click (e) ->
  	$("#js-text").html "I am here from js."
  $("#js-current_bio").click (e) ->
  	$.ajax
    url: "/pages/current_member_bio"
    type: 'get'
    success: (data, textStatus, request) ->
      #console.log(JSON.parse(request.responseText).bio)
      $("#js-person_bio").html(JSON.parse(request.responseText)["bio"])
   $("#js-update_bio").click (e) ->
  	$.ajax
    url: "/pages/update_member_bio"
    type: 'get'
    success: (data, textStatus, request) ->
      console.log("successful update")
      #$("#js-person_bio").html "I am here from js."
  

update_answer = (answer, review) ->
  console.log("hi start")