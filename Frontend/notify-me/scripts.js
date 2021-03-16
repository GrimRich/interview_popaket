$("form p#incomplete-label").on("click", function (e) {
  if ($(this).closest("form").hasClass("closed")) {
    $(this)
      .closest("form")
      .removeClass("closed")
      .addClass("open")
      .setTimeout(function () {
        $("form").find('input[type="email"]').focus();
      }, 1000);
  }
});

$("form").on("submit", function (e) {
  e.preventDefault();
  $("form")
    .addClass("complete")
    .setTimeout(function () {
      $("form").find('input[type="email"]').val("");
    }, 200);
});

var testEmail = /^[ ]*([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})[ ]*$/i;
$("input#email").bind("input propertychange", function () {
  if (testEmail.test(jQuery(this).val())) {
    $("form").removeClass("invalid").addClass("valid");
  } else {
    $("form").addClass("invalid").removeClass("valid");
  }
});
