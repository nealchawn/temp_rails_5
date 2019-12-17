$(document).ready ->
  #######################
  # Question Navigator
  $("#js-click_me").click (e) ->
  	$("#js-text").html "I am here from js."

update_answer = (answer, review) ->
  console.log("hi start")