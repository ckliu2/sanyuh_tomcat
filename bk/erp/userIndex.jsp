<%@ include file="/common/taglibs.jsp"%>

<div id="pp" style="position:relative">
   
		<div style="width:30%;" id='col1'>	 

		<!------------------------------ column 1 ------------------------------>	
		   	 
				<div id="portlet1" title="<div align='center'><font size='2'>公告</font></div>" style="text-align:center;height:280px;padding:5px">
					 sasv
  		  </div>
  		  
  		  
		<!------------------------------ column 1 ------------------------------>		
		</div>			
			
		<div style="width:30%;" id='col2'>    
			
		<!------------------------------ column 2 ------------------------------>
			
		   	 
				<div id="portlet2" title="<div align='center'><font size='2'>異動申請</font></div>" style="text-align:center;height:280px;padding:5px">
					 
  		  </div>
  		 
      			
		<!------------------------------ column 2 ------------------------------>		
		
		</div>			
			
		<div style="width:30%;" id='col3'>				
		<!------------------------------ column 3 ------------------------------>
			
		  <!--   	 
				<div id="portlet3" title="<div align='center'><font size='2'>122</div>" style="text-align:center;height:280px;padding:5px">
				
				</div>
			-->	
		<!------------------------------ columns 3 ------------------------------>		
		
		</div>
	
	  <div id="myevent1" class="easyui-window" data-options="modal:true,closed:true,iconCls:'icon-save'" style="width:45%;height:auto;padding:10px;top:1px"></div>
     
			
 
</div>
		

<script>
		$(function(){
			$('#pp').portal({
				border:false,
				fit:true
			});
			
		});
</script>