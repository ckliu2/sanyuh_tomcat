<%@ include file="/common/taglibs.jsp"%>

<script src="${ctx}/scripts/jquery-1.9.1.js"></script>
<link rel="stylesheet" type="text/css" href="${ctx}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/css/displaytag.css" />  
<link rel="shortcut icon" href="${ctx}/images/favicon.ico" />
     
<form name="form1" method="post" action="saveExam.do">

<table width="50%" border="1" align="center"  class="cContentTable2">
  
  <tr>
    <td colspan="2" ><div align="center"><strong>準備考試</strong></div></td>
  </tr>
  <tr>
    <td nowrap="nowrap" class="cInputCaption2">您主要準備何種考試</td>
    <td nowrap="nowrap" class="cInputCaption1">
      <ww:radio  name="exam" id="exam"       
               list="examList"
               listKey="id"
               listValue="valueUs"
               
       />  
     <input type="text" name="member1.examOther" id="examOther" class="cInputTextField"/>     
    </td>
  </tr>
  
  <tr>
    <td colspan="2" nowrap="nowrap" >
      <div align="center">
        <input type="button" name="button" id="button" value="送出" onclick="ck();"/>
      </div>
    </td>
  </tr>
  
  
</table>

</form>


<script>

  function radioClick(name){
  	var i=0;  	
  	$("input[name='"+name+"']").each(function() {
    	if ($(this).is(":checked"))
      {
      	i++;
      }
    });
    return i;
  }

  function ck(){
  	var txt='';
  	var exam=radioClick('exam');
  	var examOther=$('#examOther').val();  

  	if(exam==0){
  		 txt+='「您主要準備何種考試」為必填欄位!\n';    		
  	}
  	
  	var examId=$('input[name=exam]:checked').val();
  	if(parseInt(examId)==448){  		
  		 if(examOther==''){
  		 txt+='「請填寫其他考試名稱!」\n';   
  		} 		
  	}
  	
    if(txt.length==0){
   	   form1.submit();
    }else{
 	    alert(txt);      
    }
  }

  
  <%
  String msg=request.getParameter("msg"); 
  if (msg != null && msg.equals("1")) {
  %>
   window.opener.parent.location.reload();
   alert("<fmt:message key='common.save'/><fmt:message key='common.successful'/>");
   window.close();
  <%
   }
  %>   
</script>



 