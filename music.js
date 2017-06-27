var Observable = require("FuseJS/Observable");
var LocalNotify = require("LocalNotify");
var music_user_value = Observable("");
var music = Observable(""); 
var music_image = Observable("");
var music_urL = 'https://ws.audioscrobbler.com/2.0/?method=track.search&track=' + music_user_value.value + '&api_key=3e56246655a7a46c2d011bed1a1b807c&format=json';

//https://ws.audioscrobbler.com/2.0/?method=track.search&track=as&api_key=3e56246655a7a46c2d011bed1a1b807c&format=json
var musicLength = music_user_value.length;


if (musicLength != 0) {

}


function musicList() {   

LocalNotify.later(4, "Musik", "Song wird gesucht!", "payload", true);
var music_urL = 'https://ws.audioscrobbler.com/2.0/?method=track.search&track=' + music_user_value.value + '&api_key=3e56246655a7a46c2d011bed1a1b807c&format=json';
					 fetch(music_urL)
                        .then(function(response) { return response.json(); })
                        .then(function(responseObject) { 
                            music.value = responseObject;
                            var laenge =  responseObject.results.trackmatches.track.length;
                            debug_log('Anzahl Suchergebnisse: ' +laenge);
                            //json_object = JSON.parse(responseObject);
                            for (var i=0; i<laenge; i++) {
                            	//var item = responseObject.results.trackmatches.track[i];
 								//music.add(item);
                            	//json_object.results.trackmatches.track[i].imageNew.add(music.value.results.trackmatches.track[i].image[2]["#text"];);
                            	//imageNew = 'Test';
                            	music.value.results.trackmatches.track[i].imageNew = music.value.results.trackmatches.track[i].image[2]["#text"];
                            	//music.value.results.trackmatches.track[i].add(imageNew); 
                            	//debug_log(music.value.results.trackmatches.track[1].imageNew);
                            	debug_log('Die Image-URL ist: ' + music.value.results.trackmatches.track[i].imageNew);
                            	//music.add(image);
                            }

                           // music.value = JSON.stringify(json_object); 
                            //debug_log(JSON.stringify(music.value.results.trackmatches.track[1].image[2]["#text"]));
                            //music.value = responseObject.music.results.trackmatches.track;
                            	//JSON.parse(music.value);
                    			debug_log(JSON.stringify(music.value));
                                debug_log("Hier ist die Musik");
                        });
}

module.exports = {
	music: music,
	musicList: musicList,
	music_user_value: music_user_value,
	music_image: music_image
}