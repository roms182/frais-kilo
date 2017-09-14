// doit pouvoir être refacto...
$( function() {

  $('#start-place-input').change( function(e) {
    if (["Add New","Ajouter un lieu"].includes($('#start-place-input').val())) {
      $('.add-new-start-place').removeClass('hidden').hide().slideDown(800);
    }
    else {
      $('.add-new-start-place').slideUp(800, function() {
        $('#travel_expense_new_start_place').val('');
      });
    };
  })

  $('#end-place-input').change( function(e) {
    if (["Add New","Ajouter un lieu"].includes($('#end-place-input').val())) {
      $('.add-new-end-place').removeClass('hidden').hide().slideDown(800);
    }
    else {
      $('.add-new-end-place').slideUp(800, function() {
        $('#travel_expense_new_end_place').val('');
      });
    };
  })
});
