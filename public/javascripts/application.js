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

function x(data){
    $(document).ready(function(){
$("input").keyup( function()
{
    loadXMLDoc(this.value);



});
});
}








function loadTextDoc(str)
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
    xmlDoc=xmlhttp.responseXML;
    
    document.getElementById("food").innerHTML=showXMLContents(xmlDoc, "FOOD")
    }
  }
xmlhttp.open("POST","ajax_xml",true);
xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
xmlhttp.send("q=" + str);
}

function showXMLContents(data, target)
{
    txt="";
    x=data.getElementsByTagName(target);
    for (i=0;i<x.length;i++)
      {
      txt=txt + x[i].childNodes[0].nodeValue + "<br />";
      }
      return txt;
}

  function BuildXMLFromString (text) {
      alert(text)
            var message = "";
            if (window.DOMParser) { // all browsers, except IE before version 9
                var parser = new DOMParser();
                try {
                    xmlDoc = parser.parseFromString (text, "text/xml");
                } catch (e) {
                        // if text is not well-formed,
                        // it raises an exception in IE from version 9
                    alert ("XML parsing error.");
                    return false;
                };
            }
            else {  // Internet Explorer before version 9
                xmlDoc = CreateMSXMLDocumentObject ();
                if (!xmlDoc) {
                    alert ("Cannot create XMLDocument object");
                    return false;
                }

                xmlDoc.loadXML (text);
            }

            var errorMsg = null;
            if (xmlDoc.parseError && xmlDoc.parseError.errorCode != 0) {
                errorMsg = "XML Parsing Error: " + xmlDoc.parseError.reason
                          + " at line " + xmlDoc.parseError.line
                          + " at position " + xmlDoc.parseError.linepos;
            }
            else {
                if (xmlDoc.documentElement) {
                    if (xmlDoc.documentElement.nodeName == "parsererror") {
                        errorMsg = xmlDoc.documentElement.childNodes[0].nodeValue;
                    }
                }
                else {
                    errorMsg = "XML Parsing Error!";
                }
            }

            if (errorMsg) {
                alert (errorMsg);
                return false;
            }

            alert ("Parsing was successful!");
            return true;
        }