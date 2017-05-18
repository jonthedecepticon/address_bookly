$(document).on('turbolinks:load', function() {
  if ($('.remove-alert').length > 0) {
    setTimeout(function(){
      $('.remove-alert').fadeOut();
    }, 7000);
  }
});
