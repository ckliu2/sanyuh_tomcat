<%@ include file="/common/taglibs.jsp"%>

<table border="0" cellspacing="1" >
      <tr>
        <td class="cContentTitle" ><fmt:message key="careers.list"/></td>
      </tr>
      <tr class="cActionButtonLine">
        <td>
           <button onclick="location.href='editCompanyCareers.do'" class="cButton"><fmt:message key="common.new"/></button>
            <ww:if test="functionOpenPeriodMessage != null">
                <span class="cLabel2">(<fmt:message key="common.function.openPeriod"/>: <ww:property value="functionOpenPeriodMessage"/>)</span>
            </ww:if>
        </td>
      </tr>
      <tr>
        <td>
<c:set var="count" value="0" />
<display:table name="companyCareersList" class="list" cellspacing="1" requestURI="" id="row" export="false" pagesize="${GLOBAL_pagesize}" sort="list">
    <display:setProperty name="paging.banner.placement" value="bottom" />    
    <display:column titleKey="company.name" sortable="true">    
      ${row.company.name}
    </display:column>
    <display:column property="name" sortable="true" titleKey="careers.name" style="text-align:left" />
    <display:column property="jobStatus" sortable="true" titleKey="careers.jobStatus" style="text-align:left" />
    <display:column property="candidatesWay" sortable="true" titleKey="careers.candidates" style="text-align:left" />
    <display:column property="address" sortable="true" titleKey="careers.address" style="text-align:left" />
    <display:column property="timeover" sortable="true" titleKey="careers.timeover" style="text-align:left" decorator="com.base.web.displaytag.YesNoDecorator"/>
    <display:column property="allow" sortable="true" titleKey="careers.allow" style="text-align:left" decorator="com.base.web.displaytag.YesNoDecorator"/>
    <display:column property="lastModifiedDate" sortable="true" titleKey="common.lastModifiedDate" style="text-align:left" />
    <display:column titleKey="common.action">
        <ww:if test="recordEditable == true">
            <a href="editCompanyCareers.do?careers.id=<c:out value="${row.id}"/>"><fmt:message key="common.edit"/></a>&nbsp;&nbsp;
            <a href="#" onClick="javascript:return myConfirm('<fmt:message key="common.confirmDelete1"/><c:out value="${row.company.name}/${row.name}" /><fmt:message key="common.confirmDelete2"/>', 'form1', 'careers.id', '${row.id}')"><fmt:message key="common.delete"/></a>
        </ww:if>
        <ww:else>
           <a href="editCompanyCareers.do?careers.id=<c:out value="${row.id}"/>"><fmt:message key="common.view"/></a>&nbsp;&nbsp;
        </ww:else>
    </display:column>
    <c:set var="count" value="${count+1}" />
</display:table>
        </td>
    </tr>
      <tr class="cActionButtonLine">
        <td>
            <button onclick="location.href='editCompanyCareers.do'" class="cButton"><fmt:message key="common.new"/></button>
            <ww:if test="functionOpenPeriodMessage != null">
                <span class="cLabel2">(<fmt:message key="common.function.openPeriod"/>: <ww:property value="functionOpenPeriodMessage"/>)</span>
            </ww:if>
        </td>
      </tr>
</table>
<form name="form1" action="saveCompanyCareers.do">
    <input type="hidden" name="delete" value="yes">
    <input type="hidden" name="careers.id" value="">
    <select name="selectedCareersIds" multiple="true" style="display:none"></select>
</form>
