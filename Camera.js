var Observable = require("FuseJS/Observable");
var Camera = require("FuseJS/Camera");
var CameraRoll = require("FuseJS/CameraRoll");
var ImageTools = require("FuseJS/ImageTools");

var exports = module.exports;

//  These observables will be used to display an image and its information

var imagePath = exports.imagePath = Observable();
var imageName = exports.imageName = Observable();
var imageSize = exports.imageSize = Observable();

//  This is used to keep the last image displayed as a base64 string in memory
var lastImage = "";
//  When we receive an image object we want to display, we call this
var displayImage = function(image)
{
  imagePath.value = image.path;
  imageName.value = image.name;
  imageSize.value = image.width+"x"+image.height;
  ImageTools.getImageFromBase64(image).then(
    function(b64)
    {
      lastImage = b64;
    }
  );
}

/*
    1. Take an unscaled "raw" picture
    2. Pass the picture into ImageTools.resize to scale and then crop it to 320x320
    3. Publish the scaled image to the device cameraroll
    4. Display the final image
*/

var response_ok = false;

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

/*
  1. Take an unscaled "raw" picture
  2. Crop the image with a rectangle and save the result to a new file.
  3. Display the new image.
*/

exports.takeCroppedPicture = function()
{
  Camera.takePicture().then(
    function(image)
    {
      var options = { x: 20, y:20, width:320, height:320 };
      ImageTools.crop(image, options).then(
        function(image)
        {
          displayImage(image);
        }
      );
    }
  );
}

/*
  1. Take an aspect-corrected 100x100 resized image
  2. Get the image bytes as an arraybuffer
  3. Pass the image bytes back in to create a new image from them
  4. Display the returned image
*/

exports.takeSmallPicture = function()
{
  Camera.takePicture(100, 100).then(
    function(image) {
      ImageTools.getBufferFromImage(image).then(
        function(buffer) {
          ImageTools.getImageFromBuffer(buffer).then(
            function(image) {
              displayImage(image);
            }
          )
        }
      )
    }
  ).catch(
    function(reason){
      console.log("Couldn't take picture: "+reason);
    }
  );
}

/*
  1. Spawn a dialog to fetch an image from the camera roll
  2. Display the image
*/

exports.selectImage = function()
{
  CameraRoll.getImage().then(
    function(image)
    {
      console.log("received image: "+image.path+", "+image.width+"/"+image.height);
      displayImage(image);
    }
  ).catch(
    function(reason){
      console.log("Couldn't get image: "+reason);
    }
  );
};

/*
  Bounce the last displayed image via base64 and display the reloaded image
*/
exports.b64Test = function()
{
  ImageTools.getImageFromBase64(lastImage).then(
    function(image){
      displayImage(image);
    }
  );
};