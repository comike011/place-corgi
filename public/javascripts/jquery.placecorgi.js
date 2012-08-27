jQuery.fn.placecorgi = function() {
  $(this).find('.corgi').each(function() {
    $(this).attr("src", getCorgi($(this)));
  });
};

function getCorgi(element){
  var height = element.attr("height");
  var width = element.attr("width");
  var placeCorgiURL = "http://placecorgi.com/";
  if(height == 0 || isNaN(height)){
    height = 300;
  }
  if(width == 0 || isNaN(width)){
    width = 300;
  }
  placeCorgiURL = placeCorgiURL + width + "/" + height;
  return placeCorgiURL;
}
