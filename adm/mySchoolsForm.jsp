<%@ include file="/common/taglibs.jsp"%>

<ww:form name="mySchoolsForm" action="saveMySchools" method="POST">
  <ww:hidden name="mySchools.id" value="${mySchools.id}"/>
  <table border="0" cellspacing="1" >
    <tr><td class="cContentTitle" colspan="2" ><fmt:message key="mySchools.form"/></td></tr>
    <tr class="cActionButtonLine">
      <td colspan="2">
        <ww:if test="recordEditable == true">
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="mySchools.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
        </ww:if>
        <ww:else>
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton" DISABLED>&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton" DISABLED>&nbsp;
            <ww:if test="mySchools.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>"  class="cButton" DISABLED>
            </ww:if>
        </ww:else>
      </td>
    </tr>
    
    <tr><td class="cInputCaption">國內/外<span class="cRequired">*</span></td>
        <td class="cInputColumn">
        
            <ww:radio name="mySchools.country" 
               list="countryLocal"
               listKey="id"
               listValue="value"
            /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('mySchools.country')"/></span>
        
        </td>
    </tr>
    
    <tr><td class="cInputCaption"><fmt:message key="mySchools.name"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="mySchools.name" value="%{mySchools.name}" maxlength="100" cssClass="cInputTextFieldLong" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('mySchools.name')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="mySchools.department"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="mySchools.department" value="%{mySchools.department}" maxlength="30" cssClass="cInputTextFieldLong" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('mySchools.department')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="mySchools.degree"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:select name="mySchools.degreeId" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="degreeList"
               listKey="id"
               listValue="caption_"
               cssClass="cInputListField"
            /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('mySchools.degreeId')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="mySchools.status"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:select name="mySchools.statusId" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="statusList"
               listKey="id"
               listValue="caption_"
               cssClass="cInputListField"
            /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('mySchools.statusId')"/></span>
        </td>
    </tr>
    
    <tr><td class="cInputCaption">進修原因<span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textarea name="mySchools.result" value="%{mySchools.result}" cssClass="cInputTextArea" cols="45" rows="12" />
            <span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('mySchools.result')"/></span>
        </td>
    </tr>
    
    
    <tr><td class="cInputCaption"><fmt:message key="common.lastModifiedDate"/></td>
        <td class="cInputColumn">
            <span class="cLabel"><ww:property value="mySchools.lastModifiedDate" /></span>
        </td>
    </tr>


    <tr><td class="cInputCaption"><fmt:message key="common.createdDate"/></td>
        <td class="cInputColumn">
            <span class="cLabel"><ww:property value="mySchools.createdDate" /></span>
        </td>
    </tr>

    <tr class="cActionButtonLine">
      <td colspan="2">
        <ww:if test="recordEditable == true">
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="mySchools.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
        </ww:if>
        <ww:else>
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton" DISABLED>&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton" DISABLED>&nbsp;
            <ww:if test="mySchools.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>"  class="cButton" DISABLED>
            </ww:if>
        </ww:else>
      </td>
    </tr>
  </table>
</ww:form>


<script>
 
 function reflash(count){
 	 $('#schoolCount', opener.document).do(count); 	 	 	 
 	 if(count==0){ 	 		
 	 	 $('input[id=mygraduationsIds-2]', opener.document).attr("checked",false);
 	 }else{
     $('input[id=mygraduationsIds-2]', opener.document).attr("checked",true);
   }
   
   //window.opener.parent.location.reload();
   window.opener.parent.memberForm.action="saveGraduate1.do";
   window.opener.parent.memberForm.submit();
   
   alert("<fmt:message key='common.save'/><fmt:message key='common.successful'/>");
   window.close();
   
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
