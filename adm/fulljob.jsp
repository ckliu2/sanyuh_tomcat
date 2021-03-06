<%@ include file="/common/taglibs.jsp"%>

<script src="${ctx}/scripts/jquery-1.9.1.js"></script>
<link rel="stylesheet" type="text/css" href="${ctx}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/css/displaytag.css" />  
<link rel="shortcut icon" href="${ctx}/images/favicon.ico" />
     
<form name="form1" method="post" action="saveFullJob.do">

<table width="50%" border="1" align="center"  class="cContentTable2">
  
  <tr>
    <td colspan="2" ><div align="center"><strong>全職工作</strong></div></td>
  </tr>
  <tr>
    <td nowrap="nowrap" class="cInputCaption2">您任職的機構性質為</td>
    <td nowrap="nowrap" class="cInputCaption1">
      <ww:radio  name="fulljob" id="fulljob"       
               list="fulljobList"
               listKey="id"
               listValue="caption_"
               
       />  
     <input type="text" name="member.fulljobOther" id="fulljobOther" class="cInputTextField"/>
     
    </td>
  </tr>
  <tr>
    <td nowrap="nowrap" class="cInputCaption2">您花了多久時間找到第1份工作?</td>
    <td nowrap="nowrap" class="cInputCaption1">
     <ww:radio  name="fulljobDays" id="fulljobDays"       
               list="fulljobDaysList"
               listKey="id"
               listValue="valueTw"
               
       /> 
    </td>
  </tr>
  <tr>
    <td nowrap="nowrap" class="cInputCaption2">您現在平均年薪是?</td>
    <td nowrap="nowrap" class="cInputCaption1">
    <ww:radio  name="fulljobSalary" id="fulljobSalary"             
               list="fulljobSalaryList"
               listKey="id"
               listValue="caption_"
               
       />
    </td>
  </tr>
  <tr>
    <td nowrap="nowrap" class="cInputCaption2">您現在工作主要所在地為何?</td>
    <td nowrap="nowrap" class="cInputCaption1">    
    <ww:radio  name="fulljobArea" id="fulljobArea" onclick="fulljobAreaCheck();"            
               list="fulljobAreaList"
               listKey="id"
               listValue="caption_"
               
       />
    </td>
  </tr>
  
  
  <tr id="fulljobLocationPanel">
    <td nowrap="nowrap" class="cInputCaption2">&nbsp;</td>
    <td nowrap="nowrap" class="cInputCaption1">
    <ww:radio  name="fulljobLocation" id="fulljobLocation"        
               list="fulljobLocationList"
               listKey="id"
               listValue="caption_"
               
       />    
    </td>
  </tr>
  
  
  <tr id="fulljobCityPanel">
    <td nowrap="nowrap" class="cInputCaption2">&nbsp;</td>
    <td nowrap="nowrap" class="cInputCaption1">    
     <ww:select name="jobCountry" id="jobCountry"
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="country1List"
               listKey="id"
               listValue="keyName+'-'+valueCh"
               cssClass="cInputListField"
            />  
    </td>
  </tr>
  
  
  <tr>
    <td width="41%" nowrap="nowrap" class="cInputCaption2">您的工作需要證照嗎?</td>
    <td width="59%" nowrap="nowrap" class="cInputCaption1">
    <ww:radio  name="fulljobLicence" id="fulljobLicence"             
               list="fulljobLicenceList"
               listKey="id"
               listValue="caption_"
               
       />    
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
  	var fulljobCount=radioClick('fulljob');
  	var fulljobDays=radioClick('fulljobDays');
  	var fulljobSalary=radioClick('fulljobSalary');
  	var fulljobArea=radioClick('fulljobArea');
  	var fulljobLocation=radioClick('fulljobLocation');
  	var jobCountry=$('#jobCountry').val();
  	var fulljobOther=$('#fulljobOther').val();  	
  	var fulljobLicence=radioClick('fulljobLicence');
  	
  	

  	if(fulljobCount==0){
  		 txt+='「機構性質」為必填欄位!\n';    		
  	}
  	
  	var fulljobId=$('input[name=fulljob]:checked').val();
  	if(parseInt(fulljobId)==436){  		
  		 if(fulljobOther==''){
  		 txt+='「請填寫機構性質名稱!」\n';   
  		} 		
  	}
  	
  	if(fulljobDays==0){
  		 txt+='「您花了多久時間找到第1份工作」為必填欄位!\n';    		
  	}
  	if(fulljobSalary==0){
  		 txt+='「平均年薪」為必填欄位!\n';    		
  	}
  	if(fulljobArea==0){
  		 txt+='「工作所在地」為必填欄位!\n';    		
  	}
  	
  	
  	
  	var fulljobAreaId=$('input[name=fulljobArea]:checked').val();
  	if(parseInt(fulljobAreaId)==480){  		
  		 if(parseInt(fulljobLocation)==0){
  		 txt+='「國內地區」為必填欄位!\n';   
  		} 		
  	}
  	
  	if(parseInt(fulljobAreaId)==482){  		
  		 if(jobCountry==''){
  		 txt+='「國外地區」為必填欄位!\n';   
  		} 		
  	}
  	
  	fulljobLocation
  	if(fulljobLicence==0){
  		 txt+='「您的工作需要證照嗎?」為必填欄位!\n';    		
  	}
  	
     if(txt.length==0){
   	   form1.submit();
     }else{
 	    alert(txt);      
     }
  }
  
   
  function fulljobAreaCheck(){
  	var fulljobAreaId=$('input[name=fulljobArea]:checked').val();
  	if(parseInt(fulljobAreaId)==480){  		
  		 $("#fulljobLocationPanel").show();
  	}else{
  		 $("#fulljobLocationPanel").hide();
  	}  
  	
  	if(parseInt(fulljobAreaId)==482){  		
  		 $("#fulljobCityPanel").show();
  	}else{
  		 $("#fulljobCityPanel").hide();
  	} 	
  	 
  }

  function bye()
  {
  	window.close();
  }
  
  $("#fulljobLocationPanel").hide(); 
  $("#fulljobCityPanel").hide();
  
  
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



 