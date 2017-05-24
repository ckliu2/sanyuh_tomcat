<%@ include file="/common/taglibs.jsp"%>

<ww:form name="productForm" action="saveProduct" method="POST" enctype="multipart/form-data">
  <ww:hidden name="product.id" value="${product.id}"/>
  <table border="0" cellspacing="1" class="cContentTable">
    <tr><td class="cContentTitle" colspan="2" ><fmt:message key="product.form"/></td></tr>
    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>" >
        <ww:if test="recordEditable == true">
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="product.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
        </ww:if>
        <ww:else>
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton" DISABLED>&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton" DISABLED>&nbsp;
            <ww:if test="product.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>"  class="cButton" DISABLED>
            </ww:if>
        </ww:else>
      </td>
    </tr>
    <tr><td class="cInputCaption"><fmt:message key="product.no"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="product.no" value="%{product.no}" maxlength="0" cssClass="cInputTextField" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('product.no')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="product.name"/><span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="product.name" value="%{product.name}" maxlength="0" cssClass="cInputTextField" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('product.name')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="product.overview"/></td>
        <td class="cInputColumn">
            <ww:textfield name="product.overview" value="%{product.overview}" maxlength="0" cssClass="cInputTextField" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="product.specification"/></td>
        <td class="cInputColumn">
            <ww:textfield name="product.specification" value="%{product.specification}" maxlength="0" cssClass="cInputTextField" />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="product.productType"/></td>
        <td class="cInputColumn">
            <ww:select name="product.productTypeId" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="productTypeList"
               listKey="id"
               listValue="caption_"
               cssClass="cInputListField"
            />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="product.logo"/></td>
        <td class="cInputColumn">
        <ww:if test="product.logo != null">
            <input type="checkbox" name="removeLogo" onclick="if (this.checked == true) document.productForm.fileLogo.style.display='inline'; else document.productForm.fileLogo.style.display='none';" value="<ww:property value="product.logo.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadLogo.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.logo.fileName"/>"><ww:property value="product.logo.fileName" /> (<ww:property value="product.logo.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileLogo" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.logoId" value="${product.logo.id}"/>
            <ww:hidden name="product.logoFileName" value="${product.logo.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileLogo" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>

        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="product.photos"/></td>
        <td class="cInputColumn">
            <ww:checkboxlist name="photosIds" 
               list="photosList"
               listKey="id"
               listValue="caption_"
               value = "%{photosIds}"
            />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="product.downloads"/></td>
        <td class="cInputColumn">
            <ww:checkboxlist name="downloadsIds" 
               list="downloadsList"
               listKey="id"
               listValue="caption_"
               value = "%{downloadsIds}"
            />
        </td>
    </tr>

    <tr><td class="cInputCaption"><fmt:message key="product.diagrams"/></td>
        <td class="cInputColumn">
            <ww:checkboxlist name="diagramsIds" 
               list="diagramsList"
               listKey="id"
               listValue="caption_"
               value = "%{diagramsIds}"
            />
        </td>
    </tr>

    <tr class="cActionButtonLine">
      <td colspan="2">
        <input type=button onclick="javascript:history.back()" class="cButton" value="<fmt:message key="common.back"/>" >
        <ww:if test="recordEditable == true">
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton">&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton">&nbsp;
            <ww:if test="product.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>" class="cButton">
            </ww:if>
        </ww:if>
        <ww:else>
            <input type="submit" value="<fmt:message key="common.save"/>" class="cButton" DISABLED>&nbsp;
            <input type="reset" value="<fmt:message key="common.reset"/>" class="cButton" DISABLED>&nbsp;
            <ww:if test="product.id != null">
              <input type="submit" name="delete" onClick="javascript:return confirm('<fmt:message key="common.confirmDelete"/>')" value="<fmt:message key="common.delete"/>"  class="cButton" DISABLED>
            </ww:if>
        </ww:else>
      </td>
    </tr>
  </table>
</ww:form>
