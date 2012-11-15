// JavaScript Document
function filter(catv){
	/*alert ('we got '+catv);*/
	/*if ($(radio).is(':checked')){*/
		$('#map_canvas').gmap('find', 'markers', { 'property': 'catx', 'value': catv }, function(marker, found) {
			/*alert ("lat:"+marker.position+" cat:"+marker.catx+" found:"+found);*/
		marker.setVisible(found);
		
	});
	/*}*/
	/*else{
		alert ('something else');
	};*/
};

function resetbtn(){
	$('#map_canvas').gmap('find', 'markers', { 'property': 'catx', 'value': ['0','1','2','3'] }, function(marker, found) {
		marker.setVisible(found);
	})
	$("input[type='radio']").attr("checked",false).checkboxradio("refresh");
};


function lavrute(markerlat, markerlong) 
{		
	var directionsDisplay;
	var directionsService = new google.maps.DirectionsService();
	var map;
	
	
	  directionsDisplay = new google.maps.DirectionsRenderer();
	  var start = pos;
	  
	  var mapOptions = 
	  {
    mapTypeId: google.maps.MapTypeId.ROADMAP,
		}
	 	map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
		directionsDisplay.setMap(map);
	  end = '('+markerlat+', '+markerlong+')';
	  var request = 
	  {
		origin:start,
		destination:end,
		travelMode: google.maps.TravelMode.WALKING
	  };
	  directionsService.route(request, function(response, status) {
		if (status == google.maps.DirectionsStatus.OK) {
		  directionsDisplay.setDirections(response);
		}
});

	$('#refreshbtn').show();
	$('#footeritem').hide();
	

}

