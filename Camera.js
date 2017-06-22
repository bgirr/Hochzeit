var Observable = require("FuseJS/Observable");
var Camera = require("FuseJS/Camera");
var CameraRoll = require("FuseJS/CameraRoll");
var ImageTools = require("FuseJS/ImageTools");
var FileSystem = require("FuseJS/FileSystem");
var Storage = require("FuseJS/Storage");
var SAVEUSER = "localStorage.json";
var SAVETHUMBNAIL = "localThumbnail.json";
var SAVEPAGE = "localPage.txt"
var saveData = Observable("");
var savePage = Observable("");
var pictures = Observable();

key = Observable("");
showname = Observable("");
userID = Observable("");
ErrorMessage = Observable("");
defaultPage = Observable("secondPage")

ErrorMessage.value = "";


var images = Observable();
var favIcon = Observable("Hidden"); 


var response_ok = false;


function getuserID () {
    Storage.read(SAVEUSER).then(function(content) {
    var data = JSON.parse(content);
    userName.value = data.showName;
    userID.value = data.id;
    if(data.id == ""){
      debug_log("Hier gibt es keine ID");
    }
    debug_log('Die UserID ist: ' + userID.value);
    debug_log('Der UserName ist: ' + userName.value);
  })
}


function takePicture ()
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
          thumbnails();
        }).catch(function(e){
            console.log("Error");
            console.log(e);
        });

};


function CameraRollWedding ()
{
  getuserID();
   CameraRoll.getImage().then(function(image) {
            return ImageTools.getBase64FromImage(image).then(function(buffer) {
                return fetch('https://weddingfun-cookingtest.rhcloud.com/images/api/uploadImage/base64/body/', 
                  { method: "POST", 
                  headers: {"Data-User-Id": userID.value},
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
          var item = responseObject;
          pictures[0].add(item);          
          debug_log("Neues Bild ist hier!");
        }).catch(function(e){
            debug_log("Error");
            debug_log(e);
        });
      
};





function PictureWedding ()
{   
  getuserID();
   Camera.takePicture(150,150).then(function(image) {
            debug_log("Hier kommt das Bild!")
            CameraRoll.publishImage(image);
            return ImageTools.getBase64FromImage(image).then(function(buffer) {
              debug_log("Schicke an Backend");
                return fetch('https://weddingfun-cookingtest.rhcloud.com/images/api/uploadImage/base64/body/', 
                  { method: "POST", 
                  headers: {"Data-User-Id": userID.value},
                  body: "data:image/jpeg;base64,"+buffer
                  });
            });
        }).then(function(response) {
            debug_log("Verschickt");
            debug_log(response.status);
            response_ok = response.ok;
            debug_log(response_ok);
            return response.json();
        }).then(function(responseObject) {
          var item = responseObject;
          pictures[0].add(item);
          debug_log("Hier der Response:");
          debug_log(JSON.stringify(responseObject));
          thumbnails();
        }).catch(function(e){
            debug_log("Error");
            debug_log(e);
        });

};



function thumbnails(){

  Storage.read(SAVEUSER).then(function(content) {
    var data = JSON.parse(content);
    userID.value = data.id;
    debug_log("UserID: " + userID.value);
  })
  
fetch("https://weddingfun-cookingtest.rhcloud.com/images/api/",
   { method: "GET", 
                  headers: {"Data-User-Id": userID},
                  })
  .then(function(result) {
    if (result.status !== 200) {
      debug_log(result.status);
    }
  result.json().then(function(data) {
  debug_log("Übersicht ist da!");
  //debug_log(JSON.stringify(data));
  data.sort(function(a, b){return new Date(b.dateAdded) - new Date(a.dateAdded)});
  var laenge = 0;
  var laenge = data.length;
  for (var i=0; i<laenge; i++) {
    if (data[i].heartByCurrentUser == false) {
    data[i].heartByCurrentUser = "Hidden";
  }
  if (data[i].heartByCurrentUser == true)   {
  data[i].heartByCurrentUser = "Visible"
  }
  var item = data[i];
  pictures.add(item);
  //pictures.sort(function(a, b){return new Date(b.dateAdded) - new Date(a.dateAdded)});
    }
    //Storage.write(SAVETHUMBNAIL, pictures);
    //debug_log(JSON.stringify(pictures));
  });
});
};


function likeImage(a){
  var ImageID = a.data.id;
  //favIcon.value = 'Visible';
  debug_log('Schicke Request mit ImageID ' + ImageID + ' und UserID: ' + userID.value);

  fetch('https://weddingfun-cookingtest.rhcloud.com/images/api/heart/'+ ImageID +'/',
     { method: "POST", 
         headers: {"Data-User-Id": userID, 
      "Content-Type": "text/plain"}})
  .then(function(response) {
            console.log("Favorit erfolgreich angelegt!");
            console.log(response.status);
            return response.json();
        }).then(function(responseObject) {
          debug_log('Das ist der FavResponse: ' + JSON.stringify(responseObject));

          pictures.value.heartByCurrentUser = responseObject.heartByCurrentUser;

          thumbnails();

        /*  for (var i=0; i<pictures.length; i++) {
           // debug_log('Prüfe' + JSON.stringify(pictures.value.id));
            if (pictures.value.id == responseObject.id){
              debug_log('Change');
              pictures.heartByCurrentUser = 'Visible'
            }
          }

          */
          
        }).catch(function(e){
            console.log('Es ist folgender Fehler aufgetretetn: ' + JSON.stringify(e.status));
        }).then(function() {
            debug_log('Hier ist die picture-Ob: ' + JSON.stringify(pictures.value));
            Storage.read(SAVETHUMBNAIL).then(function(content){
            debug_log('Bin in der richtigen Funktion...')
            var data = JSON.parse(content);
            debug_log('Hier sind alle Bilder: ' + JSON.stringify(data));
          })
          })
/*Storage.read(SAVETHUMBNAIL).then(function(content) {
    var data = JSON.parse(content);
    debug_log("Hier der Read")
    debug_log(JSON.stringify(data));
    userId.value = data.id;
    debug_log(userName.value);
  }) */

}




Storage.read(SAVEUSER).then(function(content) {
    var data = JSON.parse(content);
    savePage.value = data.startPage;
    if (savePage.value == 'registered') {
      router.goto("firstPage");
    }

  })





function read_file () {
  debug_log("Versuche zu lesen!");
  Storage.read(SAVEUSER).then(function(content) {
    var data = JSON.parse(content);
    saveData.value = data.id;
    savePage.value = data.startPage;
    debug_log(savePage.value);
    debug_log(saveData.value);
  })


};


function login_clicked()
{ debug_log("Hier rein");
  ErrorMessage.value = "";
  var bodyText = '{"key": "' + key.value + '", "showName": "' + showname.value + '"}';
  //"{key" + key.value + ", showName: " + showname.value + "}";

  debug_log(bodyText);

  fetch('https://weddingfun-cookingtest.rhcloud.com/users/api/registerUser/', 
                  {method: "POST", 
                  headers: {
                  "Content-type": "application/json",
                  },
                  body: bodyText
                  })

  .then(function(resp) {
        if (resp.status == 200) {
            console.log('OK');
            return resp.json();
        } else {

          
            console.log('Network failure: ' + resp.status);
            ErrorMessage.value = "Es ist ein Fehler aufgetreten! Grund:" + JSON.stringify(resp.body);
            //Fehlermeldung anzeigen 
        }
    })
    .then(function(json) {
        console.log('JSON:');
        userID.value = json.id;
        //debug_log(userID);
        //var userValue =  '{"key": "' + userID + '"}';
        var userValue = JSON.stringify(json);
        //debug_log(userValue);
        Storage.write(SAVEUSER, userValue);
        //debug_log(userValue);
        var userPage = 'firstPage';
        //debug_log(userPage);
        Storage.write(SAVEPAGE, userPage)
        debug_log('Die ID ist: ' + userID.value);
        router.goto("firstPage");
          //Response ID abspeichern
      //Username abspeichern
      //Seite auf SinglePage wechslen

    })
   
/*    .catch(function(err) {
        console.log('Error');
        console.log("Fehlergrund: " + JSON.stringify(err));
    });
*/
}


  function login (responseObject) {
          console.log("Hier der Response:");
          console.log(JSON.stringify(responseObject));
          userID.value = responseObject.id;
          debug_log(userID.value);
      router.goto("firstPage");
    };


  function switch_page () {
    debug_log("geklickt");
router.goto("firstPage");
  };


    module.exports = {
    pictures: pictures,
    thumbnails: thumbnails,
    likeImage: likeImage,
    favIcon: favIcon,
    PictureWedding: PictureWedding,
    CameraRollWedding: CameraRollWedding,
    login_clicked: login_clicked,
    key: key,
    showname: showname,
    defaultPage: defaultPage,
    ErrorMessage: ErrorMessage,
    read_file: read_file,
    switch_page: switch_page

    }

