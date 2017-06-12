var Observable = require("FuseJS/Observable");

var music_user_value = Observable("");
var music = Observable(""); 
var music_urL = 'https://ws.audioscrobbler.com/2.0/?method=track.search&track=' + music_user_value.value + '&api_key=3e56246655a7a46c2d011bed1a1b807c&format=json';

//https://ws.audioscrobbler.com/2.0/?method=track.search&track=as&api_key=3e56246655a7a46c2d011bed1a1b807c&format=json
var musicLength = music_user_value.length;


if (musicLength != 0) {

}


function musicList() {   

var music_urL = 'https://ws.audioscrobbler.com/2.0/?method=track.search&track=' + music_user_value.value + '&api_key=3e56246655a7a46c2d011bed1a1b807c&format=json';
					 fetch(music_urL)
                        .then(function(response) { return response.json(); })
                        .then(function(responseObject) { 
                            music.value = responseObject; 
                    			debug_log(JSON.stringify(music.value));
                                debug_log("Hier ist die Musik");
                        });
}

module.exports = {
	music: music,
	musicList: musicList,
	music_user_value: music_user_value
}