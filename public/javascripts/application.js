// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function remove_fields(link) {
    $(link).prev("input[type=hidden]").val("1");
    $(link).closest(".fields").hide();
}

function add_fields(link, association, content) {  
    var new_id = new Date().getTime();
    var regexp = new RegExp("new_" + association, "g");
    $(link).parent().before(content.replace(regexp, new_id));
}

function f()
{
   $("#myDiv").hide()
}

function s()
{
    document.getElementById("box").select()
}

function q(){
    $(document).ready(function(){
$(".flip").click(function(){
    $(".panel").slideToggle("slow");
  });
});
}

function x(){
    $(document).ready(function(){
$("input").keyup( function(){loadXMLDoc(this.value)});
});
}


function loadXMLDoc(str)
{
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status ==200 )
    {
    document.getElementById("food").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("POST","ajax",true);
xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
xmlhttp.send("q=" + str);
}
