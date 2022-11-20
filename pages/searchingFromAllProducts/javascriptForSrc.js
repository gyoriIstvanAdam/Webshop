$(document).ready(function() {
    $("#srcButton").click(function() {

        var adatok = {
            SrcText: $("#SrcText").val()
        }

        $.post("pages/searchingFromAllProducts/getProductsLike.php", adatok, function(eredmeny, status) {

            var tomb = JSON.parse(eredmeny);

            var szoveg = "";
            for (var i = 0; i < tomb.length; i++) {
                if (i % 0 == 1)
                    szoveg += '<table><tr class="table table-striped table-class">';
                szoveg += '<div  id="tablazat1">';
                szoveg += '<img id="kepm" src="imageOfProducts/' + tomb[i].Product_Pic + '">';
                szoveg += '<li id="termekar">' + tomb[i].Product_Price + ' Ft</li>';
                szoveg += '<li id="termekar" > ' + tomb[i].Product_Name + '</li>';
                szoveg += '<li id="termekleiras" >A termék rövid leírása: ' + tomb[i].Product_Disc + '</li></div>';
                szoveg += '</tr></table>';
                if (i % 1 == 0)
                ;
            }
            document.getElementById("contentSpaceForTheProducts").innerHTML = szoveg;


        });


    });

});