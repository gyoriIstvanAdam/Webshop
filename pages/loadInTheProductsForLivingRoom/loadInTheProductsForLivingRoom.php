<?php
if(session_status() != PHP_SESSION_ACTIVE){
	session_start(); 
} 


?>
<script>
    var pageFirstElement =1;
    var PageLastElement=6;  
//$(document).ready(function() { }=
    var ready = (callback) => {
  if (document.readyState != "loading") callback();
  else document.addEventListener("DOMContentLoaded", callback);
}
  function reloadProductsOfThePage(tomb)
{
    var szoveg = "";
    for (var i = 0; i < tomb.length; i++) {
        if (i % 0 == 1)
        szoveg += '<table id="page'+i+'"><tr>';
        szoveg +=  '<div  id="tablazat1">';
        szoveg += get_included_files='<img id="kepm" src="imageOfProducts/' + tomb[i].Product_Pic + '">';
        szoveg += '<li id="termekar">' + tomb[i].Product_Price + ' Ft</li>';
        szoveg += '<li id="termeknev" > ' + tomb[i].Product_Name + '</li>';
        szoveg += '<li id="termekleiras" >A termék rövid leírása: ' + tomb[i].Product_Disc + '</li></div>';
        szoveg +='</tr></table>';
       
    }
    console.log(szoveg)
    document.getElementById("contentSpaceForTheProducts").innerHTML = szoveg;
}

ready(async () => { 

    
     productsFromFirstPage = await getProductsFromTo(pageFirstElement, PageLastElement);
     reloadProductsOfThePage(productsFromFirstPage);
     responseForAllProducts = await numPages()
});
</script>
<div id="listingTable"></div>
<button id="previousButton" onclick="prevPage()">Előző oldal</button>
Oldal: <span id="page"></span>
<button id="nextButton" onclick="nextPage()">Következő oldal</button>
<script>

async function getProductsFromTo(from, to) 
{
    let result = [];

    let requestSucceeded;
	let waitUntilAjaxGotResponse = new Promise(function(resolve, reject) { 
		requestSucceeded = resolve;
        requestFailed = reject;
	});

    $.ajax({
        type: "POST",
        url: "pages/loadInTheProductsForLivingRoom/getProductsFromTo.php",
        data: {"from": from, "to":to },
        dataType: "json"
    }).done(function( responseArrayJson ) {
        result = responseArrayJson;
        requestSucceeded();
    }).fail(function() {
        requestFailed();
    }).always(function() {
         console.log( "always" );
    });
   
    await waitUntilAjaxGotResponse;
    return result;
}
var currentPage = 1;
var productsPerPage = 6;

async function prevPage()
{
    console.log("prevPage");
    if (currentPage > 1) {
        currentPage--;
        changePage(currentPage);
        pageFirstElement-=productsPerPage;
        PageLastElement-=productsPerPage;
        result= await getProductsFromTo(pageFirstElement, PageLastElement);
        window.scrollTo({ top: 0, behavior: 'smooth' });
        reloadProductsOfThePage(result);

    }
}

 async function nextPage()
{
        console.log("nextPage");
    if (currentPage < responseForAllProducts) {
        console.log("if")
        currentPage++;
        changePage(currentPage);
        pageFirstElement+=productsPerPage;
        PageLastElement+=productsPerPage;
        console.log("await")
        result=await getProductsFromTo(pageFirstElement, PageLastElement);
        console.log("after await")
        await get_included_files;
        window.scrollTo({ top: 0, behavior: 'smooth' });
        
        reloadProductsOfThePage(result);

    }
}

 async function changePage(page)
{
    var nextButton = document.getElementById("nextButton");
    var previousButton = document.getElementById("previousButton");
    var listing_table = document.getElementById("listingTable");
    var page_span = document.getElementById("page");

 
    if (page < 1) page = 1;
    if (page > responseForAllProducts) page = responseForAllProducts;

    listing_table.innerHTML = "";

    for (var i = (page-1) * productsPerPage; i < (page * productsPerPage); i++) {
       
    }
    page_span.innerHTML = page;

    if (page == 1) {
        previousButton.style.visibility = "hidden";
    } else {
        previousButton.style.visibility = "visible";
    }

    if (page == responseForAllProducts) {
        nextButton.style.visibility = "hidden";
    } else {
        nextButton.style.visibility = "visible";
    }
}


async function responseForAllProducts(){responseForAllProducts
    let result = 0;

    let requestSucceeded;
	let waitUntilAjaxGotResponse = new Promise(function(resolve, reject) { 
		requestSucceeded = resolve;
        requestFailed = reject;
	});
$.ajax({
        type: "POST",
        url: "pages/loadInTheProductsForLivingRoom/getNumberOfProducts.php", 
        dataType: "json"
    }).done(function( responseArrayJson ) {
        result = responseArrayJson;
        requestSucceeded();
    }).fail(function() {
        requestFailed();
    }).always(function() {
         console.log( "always" );
    });

    await waitUntilAjaxGotResponse;
    return result;
}
 
async function numPages()
{
    return Math.ceil( (await responseForAllProducts()) / productsPerPage);
}

window.onload = function() {
    changePage(1);
    
};


</script>