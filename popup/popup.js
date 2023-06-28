$(function () {
  // contact form animations
  $("#contact").click(function () {
    $("#contactForm").fadeToggle();
  });
  $(document).mouseup(function (e) {
    var container = $("#contactForm");

    if (
      !container.is(e.target) && // if the target of the click isn't the container...
      container.has(e.target).length === 0
    ) {
      // ... nor a descendant of the container
      container.fadeOut();
    }
  });
});

$(".closeButton, .cancel_btn").live("click", function () {
  $(".pageOverlay").fadeOut("fast");
  $(".popupWrapper").fadeOut("fast");
  $(".movable").removeClass("movable");
  return false;
});
