$(document).on('turbolinks:load', function(){
  $('.rating').raty({ path: '/assets', scoreName: 'comment[rating]' });
  $('.rated').raty({ path: '/assets',
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');
    }
  });

//Product Image Zoom

  $(".img_zoom").ezPlus({
    zoomType: "lens",
    lensShape: "round",
    lensSize: 200
  });
});