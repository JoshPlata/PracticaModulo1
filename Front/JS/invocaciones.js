function getBreeds() {
  ajax_get('https://api.thedogapi.com/v1/breeds', function(data) {
        var search_str= document.getElementById("breed_search").value;
        console.log(search_str);

            for (var i = 0; i < data.length; i++) {
                console.log(data[i].name);
                if(data[i].name==search_str){                    
                    console.log(search_str);
                    getDogByBreed(data[i].id);
                }                                 
           }                   
          

    
  });
}

function getDogByBreed(breed_id) {
  
    
  ajax_get('https://api.thedogapi.com/v1/images/search?include_breed=1&breed_id=' + breed_id, function(data) {

    if (data.length == 0) {
      
      clearBreed();
      $("#breed_data_table").append("<tr><td>Sorry, no Image for that breed yet</td></tr>");
    } else {
      
      displayBreed(data[0])
    }
  });
}

function clearBreed() {
  $('#breed_image').attr('src', "");
  $("#breed_data_table tr").remove();
}


function displayBreed(image) {
  $('#breed_image').attr('src', image.url);
  $("#breed_data_table tr").remove();

  var breed_data = image.breeds[0]
  $.each(breed_data, function(key, value) {
    if (key == 'weight' || key == 'height') value = value.metric    
    $("#breed_data_table").append("<tr><td>" + key + "</td><td>" + value + "</td></tr>");
  });
}

function ajax_get(url, callback) {
  var xmlhttp = new XMLHttpRequest();
  xmlhttp.onreadystatechange = function() {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
      try {
        var data = JSON.parse(xmlhttp.responseText);
      } catch (err) {
        console.log(err.message + " in " + xmlhttp.responseText);
        return;
      }
      callback(data);
    }
  };

  xmlhttp.open("GET", url, true);
  xmlhttp.send();
}

