$(document).ready(function() {
  if ($('.remove-alert').length > 0) {
    setTimeout(function(){
      $('.remove-alert').fadeOut();
    }, 7000);
  }
  $( "#sorry-doenst-work" ).on( "click", function() {
    alert("Sorry! Still building out this feature! Check back soon!!!")
  });
});
