var req;
var secondBoxId;
var thirdBoxId;
var splitwords;

function queryKeyWord(keyword, box2Id, action, paramName)
{ 	
    secondBoxId = box2Id;
    var url=action + "?" + paramName + "=" + encodeURIComponent(keyword);  

    if (window.XMLHttpRequest){
        req = new XMLHttpRequest();
        req.onreadystatechange = populateSecondBox;
        try {
            req.open("GET", url, true);
        } catch (e) {
            alert('<fmt:message key="msg.connectFailed"/>');
        }
        req.send(null);
    } else if (window.ActiveXObject) { // IE
        req = new ActiveXObject("Microsoft.XMLHTTP");
        if (req) {
            req.onreadystatechange = populateSecondBox;
            try {
                req.open("GET", url, true);
            } catch (e) {
                alert('<fmt:message key="msg.connectFailed"/>');
            }
            req.send();
        }
    }
}


function retrieveSecondOptions(firstBox, box2Id, action, paramName)
{
   
    secondBoxId = box2Id;
    thirdBoxId = '';   
   
    if(firstBox.selectedIndex < 0){
        return;
    }
    var selectedOption = firstBox.options[firstBox.selectedIndex].value;
    var url=action + "?" + paramName + "=" + selectedOption;
    //alert(url);
    if (window.XMLHttpRequest){
        req = new XMLHttpRequest();
        req.onreadystatechange = populateSecondBox;
        try {
            req.open("GET", url, true);
        } catch (e) {
            alert('<fmt:message key="msg.connectFailed"/>');
        }
        req.send(null);
    } else if (window.ActiveXObject) { // IE
        req = new ActiveXObject("Microsoft.XMLHTTP");
        if (req) {
            req.onreadystatechange = populateSecondBox;            
            try {
                req.open("GET", url, true);
            } catch (e) {
                alert('<fmt:message key="msg.connectFailed"/>');
            }
            req.send();
        }
    }
}

  //Callback function
function populateSecondBox()
{
   var newSelect=eval('document.all.'+secondBoxId);
   newSelect.length=0;
    if (req.readyState == 4) {
        if (req.status == 200) { // OK response 
            //Split the document
            var returnElements = mysplit(trim(req.responseText));
            
            //Process each of the elements
            for ( var i=0; i< returnElements.length; i++ ) {
                  var valueLabelPair = mysplitElements(  trim(returnElements[i])  );                 
                  var newOpt;
                  newOpt = document.createElement("OPTION");
		              newOpt.text = valueLabelPair[1];
		              newOpt.value = valueLabelPair[0];		             
		              
		              newSelect.add(newOpt);		          
            }
            if (thirdBoxId != '') {
            	//�O�d�Ĥ@�ӿﶵ�u�п��...�v
            	document.getElementById(thirdBoxId).options.length = 1;
            }
            
        } else {
           // alert("Bad response by the server");
        }
    }
}

function mysplitElements(words)
{
  var s=words.split("|"); 
  return s; 
}

function mysplit(words)
{
  var splitwords1=words.split(","); 
  return splitwords1;
}


function retrieve2and3Options(firstBox, box2Id, box3Id, action, paramName)
{
    secondBoxId = box2Id;
    thirdBoxId = box3Id;

    if(firstBox.selectedIndex < 0){
        return;
    }

	var d = new Date();
	
    var selectedOption = firstBox.options[firstBox.selectedIndex].value;
    var url=action + "?" + paramName + "=" + selectedOption+"&"+d.getTime();

    if (window.XMLHttpRequest){
        req = new XMLHttpRequest();
        req.onreadystatechange = populateSecondBox;
        try {
            req.open("GET", url, true);
        } catch (e) {
            alert('<fmt:message key="msg.connectFailed"/>');
        }
        req.send(null);
    } else if (window.ActiveXObject) { // IE
        req = new ActiveXObject("Microsoft.XMLHTTP");
        if (req) {
            req.onreadystatechange = populateSecondBox;
            try {
                req.open("GET", url, true);
            } catch (e) {
                alert('<fmt:message key="msg.connectFailed"/>');
            }
            req.send();
        }
    }
}


//�h���r�ꥪ�䪺�ťյ��
function ltrim(instr){
return instr.replace(/^[\s]*/gi,"");
}

//�h���r��k�䪺�ťյ��
function rtrim(instr){
return instr.replace(/[\s]*$/gi,"");
}

//�h���r��e�᪺�ťյ��
function trim(instr){
instr = ltrim(instr);
instr = rtrim(instr);
return instr;
}

/******************************************************************************************************************/

	var http_request = false;
	function sendRequest(url) {
		http_request = false;
		if(window.XMLHttpRequest) { 
			http_request = new XMLHttpRequest();
			if (http_request.overrideMimeType) {
				http_request.overrideMimeType('text/xml');
			}
		}
		else if (window.ActiveXObject) { 
			try {
				http_request = new ActiveXObject("Msxml2.XMLHTTP");
			} catch (e) {
				try {
					http_request = new ActiveXObject("Microsoft.XMLHTTP");
				} catch (e) {}
			}
		}
		if (!http_request) {
			window.alert("XMLHttpRequest error..");
			return false;
		}		
		http_request.onreadystatechange = processRequest1;	
		http_request.open("GET", url, true);
		http_request.send(null);
	}

    function processRequest1() {    	
        if (http_request.readyState == 4) { 
            if (http_request.status == 200) {                 
                //alert(http_request.responseText);
            } else { 
                alert("processRequest() error..");
            }
        }
    }


function testAjax(url) {
	alert(url);
}