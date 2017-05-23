var Observable = require("FuseJS/Observable");

var pictures = Observable();


function thumbnails(){
  pictures.value = "";
fetch("https://weddingfun-cookingtest.rhcloud.com/images/api/")
  .then(function(result) {
    if (result.status !== 200) {
      debug_log(result.status);
    }
  result.json().then(function(data) {
  debug_log("Übersicht ist da!");
  var laenge = data.length;
  for (var i=0; i<laenge; i++) {
  var item = data[i];
  pictures.add(item);
    }
  });
});

};

    module.exports = {
    pictures: pictures,
    thumbnails: thumbnails
    }

