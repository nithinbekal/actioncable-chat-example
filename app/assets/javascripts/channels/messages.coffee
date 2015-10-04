
# on load for turbolinks
$(document).on "page:change", ->
  $("#new_message").on
    "ajax:success": ->
      $('#message_body').val('')
