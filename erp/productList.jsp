<%@ include file="/common/taglibs.jsp"%>

<table border="0" cellspacing="1" class="cContentTable">
      <tr>
        <td class="cContentTitle" ><fmt:message key="product.list"/></td>
      </tr>
      <tr class="cActionButtonLine">
        <td>
             <button onclick="location.href='editProduct.do'" class="cButton"><fmt:message key="common.new"/></button>
           
    
        </td>
      </tr>
      <tr>
        <td>
<c:set var="count" value="0" />
<display:table name="productList" class="list" cellspacing="1" requestURI="" id="row" export="false" pagesize="${GLOBAL_pagesize}" sort="list">
    <display:setProperty name="paging.banner.placement" value="bottom" />   
    <display:column property="productType.name" sortable="true" titleKey="product.productType" style="text-align:left"/>
    <display:column property="no" sortable="true" titleKey="product.no" style="text-align:left" />
    <display:column property="name" sortable="true" titleKey="product.name" style="text-align:left" />
    
  
    <display:column titleKey="common.action">
        <ww:if test="recordEditable == true">
            <a href="editProduct.do?product.id=<c:out value="${row.id}"/>"><fmt:message key="common.edit"/></a>&nbsp;&nbsp;
            <a href="#" onClick="javascript:return myConfirm('<fmt:message key="common.confirmDelete1"/><c:out value="${row.no}" /><fmt:message key="common.confirmDelete2"/>', 'form1', 'product.id', '${row.id}')"><fmt:message key="common.delete"/></a>
        </ww:if>
        <ww:else>
           <a href="editProduct.do?product.id=<c:out value="${row.id}"/>"><fmt:message key="common.view"/></a>&nbsp;&nbsp;
        </ww:else>
    </display:column>
    <c:set var="count" value="${count+1}" />
</display:table>
        </td>
    </tr>
      <tr class="cActionButtonLine">
        <td>
             <button onclick="location.href='editProduct.do'" class="cButton"><fmt:message key="common.new"/></button>
   
        </td>
      </tr>
</table>
<form name="form1" action="saveProduct.do">
    <input type="hidden" name="delete" value="yes">
    <input type="hidden" name="product.id" value="">
    <select name="selectedProductIds" multiple="true" style="display:none"></select>
</form>
