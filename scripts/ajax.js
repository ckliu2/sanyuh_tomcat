	var http_request = false;
	var currentPos = null;
	function send_request(url) {   //��l�ơB���w�B�z��ơB�o�e�ШD���
		http_request = false;
		//��l��XMLHttpRequest��H
		if(window.XMLHttpRequest) { //BROWSER��Mozilla 
			http_request = new XMLHttpRequest();
			if (http_request.overrideMimeType) {//�]�mMiME���O
				http_request.overrideMimeType('text/xml');
			}
		}
		else if (window.ActiveXObject) { // BROWSER��IE
			try {
				http_request = new ActiveXObject("Msxml2.XMLHTTP");
			} catch (e) {
				try {
					http_request = new ActiveXObject("Microsoft.XMLHTTP");
				} catch (e) {}
			}
		}
		if (!http_request) { // �ШD���`
			window.alert("XMLHttpRequest���ѡI.");
			return false;
		}
		http_request.onreadystatechange = processRequest;
		//�T�w�o�e�ШD���覡�O�_�BURL �P�_�O�_�P�B����		
		http_request.open("GET", url, true);
		http_request.send(null);
	}
	
	
	// �B�z��^�H���[��
    function processRequest() {    
        if (http_request.readyState == 4) { // SERVER�w�����ǰe����
            if (http_request.status == 200) { // BROWSER�w��������            	
                document.getElementById(currentPos).innerHTML = http_request.responseText;  //��ܸ��
 			 } else { //�Ǧ^�����`
                alert("�A�ҽШD�����������`�I");
            }
        }
    }
	
	function getMessage(id,page) {		
		document.getElementById(id).parentNode.style.display = "";
		document.getElementById(id).innerHTML = "wait..."
		currentPos = id;
		send_request(page);
	}

