var Observable = require("FuseJS/Observable");
var content = Observable();



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
	content.add(item);
		}
	});
});


		module.exports = {
		content: content
		}