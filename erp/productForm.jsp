<%@ include file="/common/taglibs.jsp"%>

 <!---dropzone -->
<link rel="stylesheet" type="text/css" href="${ctx}/css/dropzone.css">
<script src="${ctx}/scripts/dropzone.js"></script>
<script src="${ctx}/scripts/dropzone-amd-module.js"></script>

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
    
     <tr><td class="cInputCaption">product class</td>
        <td class="cInputColumn">
            <ww:select name="product.productTypeId" 
               headerKey=""
               headerValue="%{getText('common.pleaseSelect')}..."
               list="productTypeList"
               listKey="id"
               listValue="name"
               cssClass="cInputListField"
            />
        </td>
    </tr>
    
    
    
    <tr><td class="cInputCaption">product no<span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="product.no" value="%{product.no}"  cssClass="cInputTextFieldLong" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('product.no')"/></span>
        </td>
    </tr>

    <tr><td class="cInputCaption">product name<span class="cRequired">*</span></td>
        <td class="cInputColumn">
            <ww:textfield name="product.name" value="%{product.name}"  cssClass="cInputTextFieldLong" /><span class="cInputValidationError"><ww:property value="showHtmlErrorMessage('product.name')"/></span>
        </td>
    </tr>

    
    <tr><td class="cInputCaption">
    	overview <p>
      specification <p>
      log <p>
      product photos <p>
      downloads <p>
      diagrams    	
    	</td>
        <td class="cInputColumn">
        	
           <div class="easyui-accordion" style="width:100%;height:auto;">
             <div title="overview" data-options="iconCls:'icon-1'" style="overflow:auto;padding:10px;">
                      
               <FCK:editor instanceName="product.overview">
			         	<jsp:attribute name="value">
				           <c:out value="${product.overview}" escapeXml="false"/>
				        </jsp:attribute>
				        <jsp:body>
					          <FCK:config SkinPath="skins/office2003/"/>
				        </jsp:body>
			          </FCK:editor>  
			       
              </div>
              <div title="specification" data-options="iconCls:'icon-2'" style="padding:10px;">
              	
              	<FCK:editor instanceName="product.specification">
			         	<jsp:attribute name="value">
				           <c:out value="${product.specification}" escapeXml="false"/>
				        </jsp:attribute>
				        <jsp:body>
					          <FCK:config SkinPath="skins/office2003/"/>
				        </jsp:body>
			          </FCK:editor> 
              	
              </div>      
              
              <div title="log" data-options="iconCls:'icon-3'" style="padding:10px;">
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
              </div>	
              
              
              <div title="product photos" data-options="iconCls:'icon-4'" style="padding:10px;">
              	
              	
              	   <ww:if test="product.productPhoto1 != null">
                    <input type="checkbox" name="removeProductPhoto1" onclick="if (this.checked == true) document.productForm.fileProductPhoto1.style.display='inline'; else document.productForm.fileProductPhoto1.style.display='none';" value="<ww:property value="product.productPhoto1.fileName"/>"><fmt:message key="common.delete"/>
                    <a href="${ctx}/<fmt:message key="product.uploadProductPhoto1.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.productPhoto1.fileName"/>"><ww:property value="product.productPhoto1.fileName" /> (<ww:property value="product.productPhoto1.size" /> bytes)</a><br>
                    <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileProductPhoto1" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
                    <ww:hidden name="product.productPhoto1Id" value="${product.productPhoto1.id}"/>
                    <ww:hidden name="product.productPhoto1FileName" value="${product.productPhoto1.fileName}"/>
                   </ww:if>
                   <ww:else>
                    <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileProductPhoto1" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
                    </ww:else>
                    
                    <br>
                    
                    <ww:if test="product.productPhoto2 != null">
            <input type="checkbox" name="removeProductPhoto2" onclick="if (this.checked == true) document.productForm.fileProductPhoto2.style.display='inline'; else document.productForm.fileProductPhoto2.style.display='none';" value="<ww:property value="product.productPhoto2.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadProductPhoto2.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.productPhoto2.fileName"/>"><ww:property value="product.productPhoto2.fileName" /> (<ww:property value="product.productPhoto2.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileProductPhoto2" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.productPhoto2Id" value="${product.productPhoto2.id}"/>
            <ww:hidden name="product.productPhoto2FileName" value="${product.productPhoto2.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileProductPhoto2" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
         <br>
         
         
          <ww:if test="product.productPhoto3 != null">
            <input type="checkbox" name="removeProductPhoto3" onclick="if (this.checked == true) document.productForm.fileProductPhoto3.style.display='inline'; else document.productForm.fileProductPhoto3.style.display='none';" value="<ww:property value="product.productPhoto3.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadProductPhoto3.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.productPhoto3.fileName"/>"><ww:property value="product.productPhoto3.fileName" /> (<ww:property value="product.productPhoto3.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileProductPhoto3" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.productPhoto3Id" value="${product.productPhoto3.id}"/>
            <ww:hidden name="product.productPhoto3FileName" value="${product.productPhoto3.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileProductPhoto3" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
        <br>
        
        <ww:if test="product.productPhoto4 != null">
            <input type="checkbox" name="removeProductPhoto4" onclick="if (this.checked == true) document.productForm.fileProductPhoto4.style.display='inline'; else document.productForm.fileProductPhoto4.style.display='none';" value="<ww:property value="product.productPhoto4.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadProductPhoto4.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.productPhoto4.fileName"/>"><ww:property value="product.productPhoto4.fileName" /> (<ww:property value="product.productPhoto4.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileProductPhoto4" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.productPhoto4Id" value="${product.productPhoto4.id}"/>
            <ww:hidden name="product.productPhoto4FileName" value="${product.productPhoto4.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileProductPhoto4" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
        <br>
        
        <ww:if test="product.productPhoto5 != null">
            <input type="checkbox" name="removeProductPhoto5" onclick="if (this.checked == true) document.productForm.fileProductPhoto5.style.display='inline'; else document.productForm.fileProductPhoto5.style.display='none';" value="<ww:property value="product.productPhoto5.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadProductPhoto5.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.productPhoto5.fileName"/>"><ww:property value="product.productPhoto5.fileName" /> (<ww:property value="product.productPhoto5.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileProductPhoto5" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.productPhoto5Id" value="${product.productPhoto5.id}"/>
            <ww:hidden name="product.productPhoto5FileName" value="${product.productPhoto5.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileProductPhoto5" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
        <br>
        
        <ww:if test="product.productPhoto6 != null">
            <input type="checkbox" name="removeProductPhoto6" onclick="if (this.checked == true) document.productForm.fileProductPhoto6.style.display='inline'; else document.productForm.fileProductPhoto6.style.display='none';" value="<ww:property value="product.productPhoto6.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadProductPhoto6.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.productPhoto6.fileName"/>"><ww:property value="product.productPhoto6.fileName" /> (<ww:property value="product.productPhoto6.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileProductPhoto6" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.productPhoto6Id" value="${product.productPhoto6.id}"/>
            <ww:hidden name="product.productPhoto6FileName" value="${product.productPhoto6.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileProductPhoto6" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
        <br>
        
        <ww:if test="product.productPhoto7 != null">
            <input type="checkbox" name="removeProductPhoto7" onclick="if (this.checked == true) document.productForm.fileProductPhoto7.style.display='inline'; else document.productForm.fileProductPhoto7.style.display='none';" value="<ww:property value="product.productPhoto7.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadProductPhoto7.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.productPhoto7.fileName"/>"><ww:property value="product.productPhoto7.fileName" /> (<ww:property value="product.productPhoto7.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileProductPhoto7" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.productPhoto7Id" value="${product.productPhoto7.id}"/>
            <ww:hidden name="product.productPhoto7FileName" value="${product.productPhoto7.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileProductPhoto7" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
        <br>
        
        <ww:if test="product.productPhoto8 != null">
            <input type="checkbox" name="removeProductPhoto8" onclick="if (this.checked == true) document.productForm.fileProductPhoto8.style.display='inline'; else document.productForm.fileProductPhoto8.style.display='none';" value="<ww:property value="product.productPhoto8.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadProductPhoto8.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.productPhoto8.fileName"/>"><ww:property value="product.productPhoto8.fileName" /> (<ww:property value="product.productPhoto8.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileProductPhoto8" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.productPhoto8Id" value="${product.productPhoto8.id}"/>
            <ww:hidden name="product.productPhoto8FileName" value="${product.productPhoto8.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileProductPhoto8" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
        <br>
        
        <ww:if test="product.productPhoto9 != null">
            <input type="checkbox" name="removeProductPhoto9" onclick="if (this.checked == true) document.productForm.fileProductPhoto9.style.display='inline'; else document.productForm.fileProductPhoto9.style.display='none';" value="<ww:property value="product.productPhoto9.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadProductPhoto9.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.productPhoto9.fileName"/>"><ww:property value="product.productPhoto9.fileName" /> (<ww:property value="product.productPhoto9.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileProductPhoto9" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.productPhoto9Id" value="${product.productPhoto9.id}"/>
            <ww:hidden name="product.productPhoto9FileName" value="${product.productPhoto9.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileProductPhoto9" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
        <br>
        
        <ww:if test="product.productPhoto10 != null">
            <input type="checkbox" name="removeProductPhoto10" onclick="if (this.checked == true) document.productForm.fileProductPhoto10.style.display='inline'; else document.productForm.fileProductPhoto10.style.display='none';" value="<ww:property value="product.productPhoto10.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadProductPhoto10.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.productPhoto10.fileName"/>"><ww:property value="product.productPhoto10.fileName" /> (<ww:property value="product.productPhoto10.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileProductPhoto10" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.productPhoto10Id" value="${product.productPhoto10.id}"/>
            <ww:hidden name="product.productPhoto10FileName" value="${product.productPhoto10.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileProductPhoto10" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
        
                    
              </div>		
              
              
         <div title="downloads" data-options="iconCls:'icon-5'" style="padding:10px;">
              
              <ww:if test="product.download1 != null">
            <input type="checkbox" name="removeDownload1" onclick="if (this.checked == true) document.productForm.fileDownload1.style.display='inline'; else document.productForm.fileDownload1.style.display='none';" value="<ww:property value="product.download1.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadDownload1.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.download1.fileName"/>"><ww:property value="product.download1.fileName" /> (<ww:property value="product.download1.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileDownload1" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.download1Id" value="${product.download1.id}"/>
            <ww:hidden name="product.download1FileName" value="${product.download1.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileDownload1" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
        <br>
        
         <ww:if test="product.download2 != null">
            <input type="checkbox" name="removeDownload2" onclick="if (this.checked == true) document.productForm.fileDownload2.style.display='inline'; else document.productForm.fileDownload2.style.display='none';" value="<ww:property value="product.download2.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadDownload2.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.download2.fileName"/>"><ww:property value="product.download2.fileName" /> (<ww:property value="product.download2.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileDownload2" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.download2Id" value="${product.download2.id}"/>
            <ww:hidden name="product.download2FileName" value="${product.download2.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileDownload2" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
        <br>
        
        <ww:if test="product.download3 != null">
            <input type="checkbox" name="removeDownload3" onclick="if (this.checked == true) document.productForm.fileDownload3.style.display='inline'; else document.productForm.fileDownload3.style.display='none';" value="<ww:property value="product.download3.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadDownload3.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.download3.fileName"/>"><ww:property value="product.download3.fileName" /> (<ww:property value="product.download3.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileDownload3" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.download3Id" value="${product.download3.id}"/>
            <ww:hidden name="product.download3FileName" value="${product.download3.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileDownload3" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
        <br>
        
        <ww:if test="product.download4 != null">
            <input type="checkbox" name="removeDownload4" onclick="if (this.checked == true) document.productForm.fileDownload4.style.display='inline'; else document.productForm.fileDownload4.style.display='none';" value="<ww:property value="product.download4.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadDownload4.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.download4.fileName"/>"><ww:property value="product.download4.fileName" /> (<ww:property value="product.download4.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileDownload4" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.download4Id" value="${product.download4.id}"/>
            <ww:hidden name="product.download4FileName" value="${product.download4.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileDownload4" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
        <br>
        
        <ww:if test="product.download5 != null">
            <input type="checkbox" name="removeDownload5" onclick="if (this.checked == true) document.productForm.fileDownload5.style.display='inline'; else document.productForm.fileDownload5.style.display='none';" value="<ww:property value="product.download5.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadDownload5.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.download5.fileName"/>"><ww:property value="product.download5.fileName" /> (<ww:property value="product.download5.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileDownload5" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.download5Id" value="${product.download5.id}"/>
            <ww:hidden name="product.download5FileName" value="${product.download5.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileDownload5" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
        <br>
        
        <ww:if test="product.download6 != null">
            <input type="checkbox" name="removeDownload6" onclick="if (this.checked == true) document.productForm.fileDownload6.style.display='inline'; else document.productForm.fileDownload6.style.display='none';" value="<ww:property value="product.download6.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadDownload6.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.download6.fileName"/>"><ww:property value="product.download6.fileName" /> (<ww:property value="product.download6.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileDownload6" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.download6Id" value="${product.download6.id}"/>
            <ww:hidden name="product.download6FileName" value="${product.download6.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileDownload6" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>        
        
        <br>
        
        <ww:if test="product.download7 != null">
            <input type="checkbox" name="removeDownload7" onclick="if (this.checked == true) document.productForm.fileDownload7.style.display='inline'; else document.productForm.fileDownload7.style.display='none';" value="<ww:property value="product.download7.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadDownload7.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.download7.fileName"/>"><ww:property value="product.download7.fileName" /> (<ww:property value="product.download7.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileDownload7" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.download7Id" value="${product.download7.id}"/>
            <ww:hidden name="product.download7FileName" value="${product.download7.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileDownload7" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
        <br>
        
        <ww:if test="product.download8 != null">
            <input type="checkbox" name="removeDownload8" onclick="if (this.checked == true) document.productForm.fileDownload8.style.display='inline'; else document.productForm.fileDownload8.style.display='none';" value="<ww:property value="product.download8.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadDownload8.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.download8.fileName"/>"><ww:property value="product.download8.fileName" /> (<ww:property value="product.download8.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileDownload8" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.download8Id" value="${product.download8.id}"/>
            <ww:hidden name="product.download8FileName" value="${product.download8.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileDownload8" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
        <br>
        
        <ww:if test="product.download9 != null">
            <input type="checkbox" name="removeDownload9" onclick="if (this.checked == true) document.productForm.fileDownload9.style.display='inline'; else document.productForm.fileDownload9.style.display='none';" value="<ww:property value="product.download9.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadDownload9.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.download9.fileName"/>"><ww:property value="product.download9.fileName" /> (<ww:property value="product.download9.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileDownload9" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.download9Id" value="${product.download9.id}"/>
            <ww:hidden name="product.download9FileName" value="${product.download9.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileDownload9" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
        <br>
        
        <ww:if test="product.download10 != null">
            <input type="checkbox" name="removeDownload10" onclick="if (this.checked == true) document.productForm.fileDownload10.style.display='inline'; else document.productForm.fileDownload10.style.display='none';" value="<ww:property value="product.download10.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadDownload10.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.download10.fileName"/>"><ww:property value="product.download10.fileName" /> (<ww:property value="product.download10.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileDownload10" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.download10Id" value="${product.download10.id}"/>
            <ww:hidden name="product.download10FileName" value="${product.download10.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileDownload10" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
                      
         </div>
         
         
         <div title="diagrams" data-options="iconCls:'icon-6'" style="padding:10px;">
         	
         	<ww:if test="product.diagram1 != null">
            <input type="checkbox" name="removeDiagram1" onclick="if (this.checked == true) document.productForm.fileDiagram1.style.display='inline'; else document.productForm.fileDiagram1.style.display='none';" value="<ww:property value="product.diagram1.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadDiagram1.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.diagram1.fileName"/>"><ww:property value="product.diagram1.fileName" /> (<ww:property value="product.diagram1.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileDiagram1" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.diagram1Id" value="${product.diagram1.id}"/>
            <ww:hidden name="product.diagram1FileName" value="${product.diagram1.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileDiagram1" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
        <br>
        
        <ww:if test="product.diagram2 != null">
            <input type="checkbox" name="removeDiagram2" onclick="if (this.checked == true) document.productForm.fileDiagram2.style.display='inline'; else document.productForm.fileDiagram2.style.display='none';" value="<ww:property value="product.diagram2.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadDiagram2.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.diagram2.fileName"/>"><ww:property value="product.diagram2.fileName" /> (<ww:property value="product.diagram2.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileDiagram2" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.diagram2Id" value="${product.diagram2.id}"/>
            <ww:hidden name="product.diagram2FileName" value="${product.diagram2.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileDiagram2" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
        <br>
        
        <ww:if test="product.diagram3 != null">
            <input type="checkbox" name="removeDiagram3" onclick="if (this.checked == true) document.productForm.fileDiagram3.style.display='inline'; else document.productForm.fileDiagram3.style.display='none';" value="<ww:property value="product.diagram3.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadDiagram3.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.diagram3.fileName"/>"><ww:property value="product.diagram3.fileName" /> (<ww:property value="product.diagram3.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileDiagram3" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.diagram3Id" value="${product.diagram3.id}"/>
            <ww:hidden name="product.diagram3FileName" value="${product.diagram3.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileDiagram3" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
        <br>
        
        <ww:if test="product.diagram4 != null">
            <input type="checkbox" name="removeDiagram4" onclick="if (this.checked == true) document.productForm.fileDiagram4.style.display='inline'; else document.productForm.fileDiagram4.style.display='none';" value="<ww:property value="product.diagram4.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadDiagram4.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.diagram4.fileName"/>"><ww:property value="product.diagram4.fileName" /> (<ww:property value="product.diagram4.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileDiagram4" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.diagram4Id" value="${product.diagram4.id}"/>
            <ww:hidden name="product.diagram4FileName" value="${product.diagram4.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileDiagram4" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
        <br>
        
        <ww:if test="product.diagram5 != null">
            <input type="checkbox" name="removeDiagram5" onclick="if (this.checked == true) document.productForm.fileDiagram5.style.display='inline'; else document.productForm.fileDiagram5.style.display='none';" value="<ww:property value="product.diagram5.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadDiagram5.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.diagram5.fileName"/>"><ww:property value="product.diagram5.fileName" /> (<ww:property value="product.diagram5.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileDiagram5" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.diagram5Id" value="${product.diagram5.id}"/>
            <ww:hidden name="product.diagram5FileName" value="${product.diagram5.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileDiagram5" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
         <br>
         
         <ww:if test="product.diagram6 != null">
            <input type="checkbox" name="removeDiagram6" onclick="if (this.checked == true) document.productForm.fileDiagram6.style.display='inline'; else document.productForm.fileDiagram6.style.display='none';" value="<ww:property value="product.diagram6.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadDiagram6.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.diagram6.fileName"/>"><ww:property value="product.diagram6.fileName" /> (<ww:property value="product.diagram6.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileDiagram6" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.diagram6Id" value="${product.diagram6.id}"/>
            <ww:hidden name="product.diagram6FileName" value="${product.diagram6.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileDiagram6" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
        <br>
        
        <ww:if test="product.diagram7 != null">
            <input type="checkbox" name="removeDiagram7" onclick="if (this.checked == true) document.productForm.fileDiagram7.style.display='inline'; else document.productForm.fileDiagram7.style.display='none';" value="<ww:property value="product.diagram7.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadDiagram7.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.diagram7.fileName"/>"><ww:property value="product.diagram7.fileName" /> (<ww:property value="product.diagram7.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileDiagram7" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.diagram7Id" value="${product.diagram7.id}"/>
            <ww:hidden name="product.diagram7FileName" value="${product.diagram7.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileDiagram7" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
        <br>
        
        <ww:if test="product.diagram8 != null">
            <input type="checkbox" name="removeDiagram8" onclick="if (this.checked == true) document.productForm.fileDiagram8.style.display='inline'; else document.productForm.fileDiagram8.style.display='none';" value="<ww:property value="product.diagram8.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadDiagram8.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.diagram8.fileName"/>"><ww:property value="product.diagram8.fileName" /> (<ww:property value="product.diagram8.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileDiagram8" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.diagram8Id" value="${product.diagram8.id}"/>
            <ww:hidden name="product.diagram8FileName" value="${product.diagram8.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileDiagram8" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
        <br>
        
         <ww:if test="product.diagram9 != null">
            <input type="checkbox" name="removeDiagram9" onclick="if (this.checked == true) document.productForm.fileDiagram9.style.display='inline'; else document.productForm.fileDiagram9.style.display='none';" value="<ww:property value="product.diagram9.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadDiagram9.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.diagram9.fileName"/>"><ww:property value="product.diagram9.fileName" /> (<ww:property value="product.diagram9.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileDiagram9" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.diagram9Id" value="${product.diagram9.id}"/>
            <ww:hidden name="product.diagram9FileName" value="${product.diagram9.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileDiagram9" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
        
         <br>
         
         <ww:if test="product.diagram10 != null">
            <input type="checkbox" name="removeDiagram10" onclick="if (this.checked == true) document.productForm.fileDiagram10.style.display='inline'; else document.productForm.fileDiagram10.style.display='none';" value="<ww:property value="product.diagram10.fileName"/>"><fmt:message key="common.delete"/>
            <a href="${ctx}/<fmt:message key="product.uploadDiagram10.relativeUrl"/>/<ww:property value="product.id"/>/<ww:property value="product.diagram10.fileName"/>"><ww:property value="product.diagram10.fileName" /> (<ww:property value="product.diagram10.size" /> bytes)</a><br>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px;display:none" name="fileDiagram10" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" />
            <ww:hidden name="product.diagram10Id" value="${product.diagram10.id}"/>
            <ww:hidden name="product.diagram10FileName" value="${product.diagram10.fileName}"/>
        </ww:if>
        <ww:else>
            <ww:file cssClass="cInputTextFieldLong" cssStyle="height:20px" name="fileDiagram10" accept="application/pdf,application/msword,application/vnd.ms-excel,application/vnd.ms-powerpoint,image/gif,image/jpeg,image/bmp,image/png,image/tiff" /><br>
        </ww:else>
         
         
         	
          </div>
         
         
             </div>

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


 

<script>
	    
</script>	
