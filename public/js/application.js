$(document).ready(function() {
  $("form").on("submit", function(event) {
    event.preventDefault();

    var url = $(this).attr("action")
    var data = $(this).serialize();

    $.post(url, data, function(serverResponse, status, request) {
      $("#grandma_says").html(serverResponse);
      $("#user_input").val('');
    });
  });
});
