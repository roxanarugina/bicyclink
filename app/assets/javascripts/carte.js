// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


var map = L.map('map').setView([51.505, -0.09], 13);

L.tileLayer('http://{s}.tile.mapbox.com/v3/foursquare.meku766r/{z}/{x}/{y}.png', {
    attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://cloudmade.com">CloudMade</a>',
    maxZoom: 18
}).addTo(map);

var marker = L.marker([51.5, -0.09]).addTo(map);


var lc = L.control.locate({position: 'topleft'}).addTo(map);
