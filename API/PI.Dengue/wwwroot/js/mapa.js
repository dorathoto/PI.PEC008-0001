//https://developers.google.com/maps/documentation/javascript/examples/layer-heatmap
let map, heatmap;
var array = [];

function initMap() {
    getMarkers();
    map = new google.maps.Map(document.getElementById("map"), {
        zoom: 13,
        center: { lat: -23.1155867, lng: -46.5532067},
        //center: { lat: 37.775, lng: -122.434 },
        mapTypeId: "satellite",
    });
    heatmap = new google.maps.visualization.HeatmapLayer({
        data: array,
        map: map,
    });
    document
        .getElementById("toggle-heatmap")
        .addEventListener("click", toggleHeatmap);
    document
        .getElementById("change-gradient")
        .addEventListener("click", changeGradient);
    document
        .getElementById("change-opacity")
        .addEventListener("click", changeOpacity);
    document
        .getElementById("change-radius")
        .addEventListener("click", changeRadius);
}

function toggleHeatmap() {
    heatmap.setMap(heatmap.getMap() ? null : map);
}

function changeGradient() {
    const gradient = [
        "rgba(0, 255, 255, 0)",
        "rgba(0, 255, 255, 1)",
        "rgba(0, 191, 255, 1)",
        "rgba(0, 127, 255, 1)",
        "rgba(0, 63, 255, 1)",
        "rgba(0, 0, 255, 1)",
        "rgba(0, 0, 223, 1)",
        "rgba(0, 0, 191, 1)",
        "rgba(0, 0, 159, 1)",
        "rgba(0, 0, 127, 1)",
        "rgba(63, 0, 91, 1)",
        "rgba(127, 0, 63, 1)",
        "rgba(191, 0, 31, 1)",
        "rgba(255, 0, 0, 1)",
    ];

    heatmap.set("gradient", heatmap.get("gradient") ? null : gradient);
}

function changeRadius() {
    heatmap.set("radius", heatmap.get("radius") ? null : 20);
}

function changeOpacity() {
    heatmap.set("opacity", heatmap.get("opacity") ? null : 0.2);
}


function getMarkers() {
    $.ajax({
        url: '/api/Lista',
        type: 'GET',
        data: null,
        dataType: 'json',
        success: mapData => {
            console.log(mapData);
            mapData.forEach(m => {
                createMarker(m.lat, m.long);
            });
           // makeHeat();
        }
    });
}

function createMarker(lat, lng) {
    let latLng = { location: new google.maps.LatLng(lat, lng), weight: 11 };
    array.push(latLng);
}

function makeHeat() {
    new google.maps.visualization.HeatmapLayer({ map: map, data: array, maxIntensity: 5, opacity: 0.3, radius: 15 });
}

