<%@ include file="/common/taglibs.jsp"%>

<c:set var="required" value="" />
<c:set var="required1" value="" />
<ww:if test="member.graduate == false">
 <c:set var="required" value="<span class='cRequired'>*</span>" /> 
</ww:if>
<ww:else>
 <c:set var="required1" value="<span class='cRequired'>*</span>" /> 
</ww:else>

<ww:form name="myJobsForm" action="saveMyJobs" method="POST">
  <ww:hidden name="myJobs.id" value="${myJobs.id}"/>
  <table border="0" cellspacing="1" >
    <tr><td class="cContentTitle" colspan="2" ><fmt:message key="myJobs.form"/></td></tr>
    <tr class="cActionButtonLine">
      <td colspan="2"> 
             
        <input type="submit" value="<fmt:message key="common.save"/>" class="cButton" onClick="javascript:return ck();">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="myJobs.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
      </td>
    </tr>
    <tr><td class="cInputCaption"><fmt:message key="myJobs.name"/>${required}</td>
        <td class="cInputColumn">
            <input type="text" name="myJobs.name" id="name" maxlength="100" value="${myJobs.name}" class="cInputTextFieldLong" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="myJobs.department"/></td>
        <td class="cInputColumn">
            <ww:textfield name="myJobs.department" value="%{myJobs.department}" maxlength="50" cssClass="cInputTextField" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="myJobs.jobTitle"/>${required}</td>
        <td class="cInputColumn">
            <input type="text" name="myJobs.jobTitle" id="jobTitle" maxlength="30" value="${myJobs.jobTitle}"  class="cInputTextFieldShort" ${rq}/>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="myJobs.phone"/></td>
        <td class="cInputColumn">
            <ww:textfield name="myJobs.phone" value="%{myJobs.phone}" maxlength="20" cssClass="cInputTextFieldShort" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="myJobs.email"/></td>
        <td class="cInputColumn">
            <ww:textfield name="myJobs.email" value="%{myJobs.email}" maxlength="50" cssClass="cInputTextField" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="myJobs.website"/></td>
        <td class="cInputColumn">
            <ww:textfield name="myJobs.website" value="%{myJobs.website}" maxlength="50" cssClass="cInputTextField" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="myJobs.address"/></td>
        <td class="cInputColumn">
            <ww:textfield name="myJobs.address" value="%{myJobs.address}" maxlength="100" cssClass="cInputTextFieldLong" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="myJobs.beginDate"/>${required}</td>
        <td class="cInputColumn">
        
        <ww:datepicker cssClass="cInputTextFieldShort" name="beginDate" id="beginDate" value="%{beginDate}" language="zh" format="%Y/%m/%d" readonly="true" />
        
        <span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('beginDate')"/></span>
       
         
        
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="myJobs.endDate"/></td>
        <td class="cInputColumn">        
            <ww:datepicker cssClass="cInputTextFieldShort" name="endDate" id="endDate" value="%{endDate}" language="zh" format="%Y/%m/%d" readonly="true"/>
            <span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('endDate')"/></span>
       
        </td>
    </tr>
    

    <tr><td class="cInputCaption"><fmt:message key="myJobs.orgType"/></td>
        <td class="cInputColumn">
            <ww:textfield name="myJobs.orgType" value="%{myJobs.orgType}" maxlength="100" cssClass="cInputTextFieldLong" />
        </td>
    </tr>


    <tr><td class="cInputCaption"><fmt:message key="myJobs.industry"/>${required}${required1}</td>
        <td class="cInputColumn">
            <ww:select name="myJobs.industryId" id="industry"
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="industryList"
               listKey="id"
               listValue="name"
               cssClass="cInputListField"
            />
        </td>
    </tr>
    
    <tr><td class="cInputCaption">工作性質${required}${required1}</td>
        <td class="cInputColumn">
        
            <ww:select name="myJobs.naturework1Id"  id="naturework1Id" onchange="subMenu(naturework1Id,naturework2Id);"
               headerKey=""
               headerValue="請選擇工作性質..."
               list="naturework1List"
               listKey="id"
               listValue="caption_"
               cssClass="cInputListField"
            />
            
            <ww:select name="myJobs.naturework2Id" id="naturework2Id" onchange="subMenu(naturework2Id,naturework3Id);"
               headerKey=""
               headerValue="請選擇工作類別..."
               list="naturework2List"
               listKey="id"
               listValue="caption_"
               cssClass="cInputListField"
            />
            
            <ww:select name="myJobs.naturework3Id" id="naturework3Id" onchange="natureworktxt();"
               headerKey=""
               headerValue="請選擇工作屬性..."
               list="naturework3List"
               listKey="id"
               listValue="caption_"
               cssClass="cInputListField"
            />
            
            <ww:textfield name="myJobs.natureworkOthers" id="natureworkOthers" value="%{myJobs.natureworkOthers}" maxlength="100" cssClass="cInputTextField" />
        </td>
    </tr>
    
    <tr><td class="cInputCaption">年收入${required}</td>
        <td class="cInputColumn">
            <ww:select name="myJobs.salaryId" id="salary"
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="salaryList"
               listKey="id"
               listValue="caption_"
               cssClass="cInputListField"
            />
        </td>
    </tr>
    
    <tr><td class="cInputCaption">就讀科系相關性${required}${required1}</td>
        <td class="cInputColumn">
            <ww:select name="myJobs.relationId" id="relation"
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="relationList"
               listKey="id"
               listValue="caption_"
               cssClass="cInputListField"
            />
        </td>
    </tr>

    <tr><td class="cInputCaption">具有管理責任${required}</td>
        <td class="cInputColumn">
            <ww:select name="myJobs.manageId" id="manage" onchange="mymanage();"
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="manageList"
               listKey="id"
               listValue="caption_"
               cssClass="cInputListField"
            />
        </td>
    </tr>

    <tr><td class="cInputCaption">管理人數</td>
        <td class="cInputColumn">
            <ww:textfield name="myJobs.managePeople" id="managePeople" value="%{myJobs.managePeople}" cssClass="cInputTextFieldTiny" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('myJobs.managePeople')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="myJobs.status"/>${required}</td>
        <td class="cInputColumn">
            <ww:select name="myJobs.statusId" id="status"
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="statusList"
               listKey="id"
               listValue="value"
               cssClass="cInputListField"
            /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('myJobs.statusId')"/></span>
        </td>
    </tr>
    
    
    <tr><td class="cInputCaption"><fmt:message key="common.lastModifiedDate"/></td>
        <td class="cInputColumn">
            <span class="cLabel"><ww:property value="myJobs.lastModifiedDate" /></span>
        </td>
    </tr>


    <tr><td class="cInputCaption"><fmt:message key="common.createdDate"/></td>
        <td class="cInputColumn">
            <span class="cLabel"><ww:property value="myJobs.createdDate" /></span>
        </td>
    </tr>

    <tr class="cActionButtonLine">
      <td colspan="2">
       
       <input type="submit" value="<fmt:message key="common.save"/>" class="cButton" onClick="javascript:return ck();">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="myJobs.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
        
      </td>
    </tr>
  </table>
</ww:form>


<script>
 
 function reflash(count){
 	
 	 $('#graduateCount', opener.document).do(count); 	 	 	 
 	 if(count==0){ 	 		
 	 	 $('input[id=mygraduationsIds-1]', opener.document).attr("checked",false);
 	 }else{
     $('input[id=mygraduationsIds-1]', opener.document).attr("checked",true);
   }
   
   //alert("reflash="+count);
   window.opener.parent.memberForm.action="saveGraduate1.do";
   window.opener.parent.memberForm.submit();
   alert("<fmt:message key='common.save'/><fmt:message key='common.successful'/>");
   window.close();
 	
 	
 	
 	 /*
   window.opener.parent.location.reload();
   alert("<fmt:message key='common.save'/><fmt:message key='common.successful'/>");
   window.close();
   */
 }

 <%
 String reload=request.getParameter("reload");
 String count=request.getParameter("count");
 //out.println("reload="+reload);
  if (reload != null && reload.equals("1")) {
 %>
   reflash('<%=count%>');
 <%
 }
 %> 
</script>



<script>

 function mymanage(){
 	 
 	 if($("select#manage").val()!=66){  	
    $('#managePeople').val("0");
   }else{   	
   	$('#managePeople').val("");
   }
 }

 function ck(){
 	var title='';
 	
    if($("select#industry").val()==''){
    	title+='「產業類別」為必填欄位! \n';    
    }  
    if($("select#naturework1Id").val()==''){
    	title+='「工作性質1」為必填欄位! \n';    
    } 
    if($("select#naturework2Id").val()==''){
    	title+='「工作性質2」為必填欄位! \n';    
    }
    if($("select#naturework3Id").val()==''){
    	title+='「工作性質3」為必填欄位! \n';    
    }
    if($("select#relation").val()==''){
    	 title+='「就讀科系相關性」為必填欄位! \n';    	
    } 
 	
 <ww:if test="member.graduate == false">
    if($("#name").val()==''){
    	title+='「服務公司」為必填欄位! \n';
    }
    if($("select#salary").val()==''){
    	 title+='「年收入」為必填欄位! \n';    	
    }
    if($("#jobTitle").val()==''){
    	 title+='「工作職稱」為必填欄位! \n';    	
    }
    if($("#beginDate").val()==''){
    	 title+='「到職時間」為必填欄位! \n';    	
    }
    if($("select#status").val()==''){
    	 title+='「任職狀態」為必填欄位! \n';    	
    }
    if($("select#manage").val()==''){
    	 title+='「具有管理責任」為必填欄位! \n';    	
    }    
 </ww:if>
 
    if($("select#manage").val()==66 && $('#managePeople').val()==''){
     	title+='請輸入「管理人數」\n';    	     	
    }
 
 if(title.length==0){
 	return true;
 }else{
 	alert(title);
 	return false;
 } 
}

//判斷是否有其他工作性質
natureworktxt();

function natureworktxt()
{
	var txt=$("#naturework3Id").find("option:selected").text(); 	
	if(txt.match('其他')!=null){
		$("#natureworkOthers").show(); 
	}else{
		$("#natureworkOthers").hide();
	}
  
}

function subMenu(menu1,menu2)
{
	var menu1Value=$(menu1).val();
	
	//清除第2層
	if(menu2.id=='naturework2Id'){
		$(menu2).empty().append('<option>請選擇工作類別..</option>');
	}else{
		$(menu2).empty().append('<option>請選擇工作屬性..</option>');
	}
	
//取得第2層資料	
 var urls='natureworkSubMenu.do?menu1Value='+menu1Value;
	$.getJSON(urls,function( data ) {  
    $.each( data,function( key, val ) {
     //alert(val.name+'--'+val.id);    
     $(menu2).append($("<option></option>").attr("value", val.id ).text( val.name )); 
  });
 });
	
}

 


</script>



 