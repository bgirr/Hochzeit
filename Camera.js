var Observable = require("FuseJS/Observable");
var Camera = require("FuseJS/Camera");
var CameraRoll = require("FuseJS/CameraRoll");
var ImageTools = require("FuseJS/ImageTools");
var FileSystem = require("FuseJS/FileSystem");
var Storage = require("FuseJS/Storage");
var SAVEUSER = "localStorage.json";


var userId = Observable("");

var images = Observable();
var pictures = Observable();
var favIcon = Observable("Hidden"); 
var exports = module.exports;

var response_ok = false;


Storage.read(SAVEUSER).then(function(content) {
    var data = JSON.parse(content);
    userId.value = data.id;
    debug_log(userName.value);
  })


exports.takePicture = function()
{
   Camera.takePicture(150, 150).then(function(image) {
            CameraRoll.publishImage(image);
            return ImageTools.getBufferFromImage(image).then(function(buffer) {
                return fetch('https://content.dropboxapi.com/2/files/upload', 
                  { method: "POST", 
                  headers: {"Authorization": "Bearer ig8CID6XnEwAAAAAAAAD6Jkw0ctldVWMPeG2n5ElxEtcXhL0s-LPvJRePVHJNWaM",
                  "Dropbox-API-Arg": '{"path":"/hochzeit/logo4.png"}',
                  "Content-type": "application/octet-stream",

                  },
                  body: buffer });
            });
        }).then(function(response) {
            console.log("Got response");
            response_ok = response.ok;
            console.log(response_ok);
            return response.json();
        }).then(function(responseObject) {
          console.log("Hier der Response:");
          console.log(JSON.stringify(responseObject));
        }).catch(function(e){
            console.log("Error");
            console.log(e);
        });

};


exports.CameraRollWedding = function()
{
   CameraRoll.getImage().then(function(image) {
            return ImageTools.getBase64FromImage(image).then(function(buffer) {
                return fetch('https://weddingfun-cookingtest.rhcloud.com/images/api/uploadImage/base64/body/', 
                  { method: "POST", 
                  headers: {"Data-User-Id": userId},
                  body: "data:image/jpeg;base64,"+buffer

                  });
            });
        }).then(function(response) {
            console.log("Got response");
            console.log(response.status);
            response_ok = response.ok;
            console.log(response_ok);
            return response.json();
        }).then(function(responseObject) {
          console.log("Hier der Response:");
          console.log(JSON.stringify(responseObject));
        }).catch(function(e){
            console.log("Error");
            console.log(e);
        });

};


exports.PictureWedding = function()
{
   Camera.takePicture(150, 150).then(function(image) {
            CameraRoll.publishImage(image);
            return ImageTools.getBase64FromImage(image).then(function(buffer) {
                return fetch('https://weddingfun-cookingtest.rhcloud.com/images/api/uploadImage/base64/body/', 
                  { method: "POST", 
                  headers: {"Data-User-Id": userId},
                  body: "data:image/jpeg;base64,"+buffer

                  });
            });
        }).then(function(response) {
            console.log("Got response");
            console.log(response.status);
            response_ok = response.ok;
            console.log(response_ok);
            return response.json();
        }).then(function(responseObject) {
          console.log("Hier der Response:");
          console.log(JSON.stringify(responseObject));
        }).catch(function(e){
            console.log("Error");
            console.log(e);
        });

};



function thumbnails(){
fetch("https://weddingfun-cookingtest.rhcloud.com/images/api/",
   { method: "GET", 
                  headers: {"Data-User-Id": userId},
                  })
  .then(function(result) {
    if (result.status !== 200) {
      debug_log(result.status);
    }
  result.json().then(function(data) {
  debug_log("Übersicht ist da!");
  debug_log(JSON.stringify(data));
  data.sort(function(a, b){return new Date(b.dateAdded) - new Date(a.dateAdded)});
  var laenge = data.length;
  for (var i=0; i<laenge; i++) {
    if (data[i].heartByCurrentUser == false) {
    data[i].heartByCurrentUser = "Hidden";
  }
  else {
  data[i].heartByCurrentUser = "Visible"
  }
  var item = data[i];
  pictures.add(item);
    }
    debug_log(JSON.stringify(pictures));
  });
});
};


function likeImage(a){
  var picture = a.data.id;
  favIcon.value = 'Visible';
  debug_log(picture);
  fetch('https://weddingfun-cookingtest.rhcloud.com/images/api/heart/'+ picture +'/',
     { method: "POST", 
         headers: {"Data-User-Id": userID.value, 
      "Content-Type": "text/plain"}})
  .then(function(response) {
            console.log("Got response");
            console.log(response.status);
            response_ok = response.ok;
            console.log(response_ok);
            return response.json();
        }).then(function(responseObject) {

          console.log("Hier der Response:");
          console.log(JSON.stringify(responseObject));
        }).catch(function(e){
            console.log("Error");
            console.log(e);
        });

}

    module.exports = {
    pictures: pictures,
    thumbnails: thumbnails,
    likeImage: likeImage,
    favIcon: favIcon
    }

