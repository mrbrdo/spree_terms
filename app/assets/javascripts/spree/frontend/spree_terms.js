Spree.checkout_payment_validate = function() {
  if (!$('#accept_terms').is(":checked")) {
    $('#accept_terms_error').removeClass('d-none').addClass('d-flex');
    $([document.documentElement, document.body]).animate({
        scrollTop: $('#accept_terms').parent().offset().top - $('#header').height()
    }, 500);
    return false;
  }
  return true;
}

Spree.ready(function ($) {
  $('#accept_terms').change(function() {
    $('#accept_terms_error').removeClass('d-flex').addClass('d-none');
  });

  $('#checkout_form_payment').submit(function (e) {
    if (!Spree.checkout_payment_validate()) {
      e.preventDefault();
      return false;
    }
  });
});
