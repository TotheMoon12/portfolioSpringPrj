var images = $("#project-images").text().split(",");
var imageCount = images.length;
var index = 0;
var title = $("#title").text();

$(".next").click(function() {
  if (images[0] == 'null') {
	return;
  }
  
  if (index + 1 < imageCount) {
	++index;
  }
  
  console.log(images[index]);
  var img = $('#project-img');
  var src = img.attr("src");
  /*var number = Number(img.attr("name"));*/

/*  var fileNum = Number(img.attr("max"));
  number = (number + 1) % fileNum;
  if (number == 0) {
    ++number;
  }*/
  let category = img.attr("category"); 

  /*const fileName = "images/img-" + number + ".jpg";*/
  const fileName = "images/project/" + category + "/" + title + "/" + images[index];
  
  img.attr("src",fileName);
  img.attr("name", number);  
  img.addClass("hidden");  
  setTimeout(function() {
    img.removeClass("hidden");
  }, 10);  
})

$(".prev").click(function() {
  if (images[0] == 'null') {
	return;
  }	
	
  --index;
  if (index <= 0) {
	index = 0; 
  }
  
  var img = $('#project-img');
  /*var src = img.attr("src");*/
  
/*  var number = Number(img.attr("name"));  

  console.log(src);
  var fileNum = Number(img.attr("max"));
  number = (number - 1);
  if (number == 0) {
    number = fileNum - 1;
  }*/

  let category = img.attr("category"); 
  const fileName = "images/project/" + category + "/" + title + "/" + images[index];
  /*const fileName = "images/img-" + number + ".jpg";*/
  img.attr("src",fileName);
  img.attr("name", number);  
  img.addClass("hidden");  
  setTimeout(function() {
    img.removeClass("hidden");
  }, 10);   
})