var Observable = require("FuseJS/Observable");
var pictures = Observable();

fetch("https://api.backendless.com/7448545A-B59D-DCDC-FFC5-BEAB58E04800/E0686645-674C-AD2A-FF57-08AEA4E31100/files/media/Hochzeit/")
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
	//pictures.value=data;
		}
	});
});


		module.exports = {
		pictures: pictures,
		}

		//https://pixabay.com/api/?key=134183-60435312b6db97c2df70ecd93&q=yellow+flowers&image_type=photo&pretty=true
		//http://cookingtest-cookingtest.rhcloud.com/recipes/api/recipes/