<%-- 
    Document   : AddBikeBrand
    Created on : July 03, 2015, 7:21:36 AM
    Author     : windya yasas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="content.jsp" %>

<script>
$(document).ready(function(){

	var thumb = $('#thumb');	

	new AjaxUpload('imageUpload', {
		action: $('#newHotnessForm').attr('action'),
		name: 'image',
		onSubmit: function(file, extension) {
			$('#preview').addClass('loading');
		},
		onComplete: function(file, response) {
			thumb.load(function(){
				$('#preview').removeClass('loading');
				thumb.unbind();
			});
			thumb.attr('src', response);
		}
	});
})
</script>
<script src="validateScript.js"></script>
<script>
function xmlhttpPost(field)
{ 
var xmlHttpReq = false; 
var self = this; 

// Mozilla/Safari 
if (window.XMLHttpRequest) { 
self.xmlHttpReq = new XMLHttpRequest(); 
} 
// IE 
else if (window.ActiveXObject) { 
self.xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP"); 
} 
self.xmlHttpReq.open('POST', "AddBikeBrand1.jsp", false); 
self.xmlHttpReq.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); 
self.xmlHttpReq.onreadystatechange = function()
{
    
    if (self.xmlHttpReq.readyState != 4 && self.xmlHttpReq.status == 200)
 {
     document.getElementById(field).innerHTML = "Validating..";
 }
  else if (self.xmlHttpReq.readyState == 4)
  { 
     updatepage(field,self.xmlHttpReq.responseText); 
  } 
}
var word1 ='Bname='+ escape( document.getElementById('Bname').value);
var word2 ='regno='+ escape( document.getElementById('regno').value);
var word3 ='description='+ escape( document.getElementById('description').value);


var the_data =word1 +'&'+ word2+'&'+ word3;
self.xmlHttpReq.send(the_data); 
*/




}
function updatepage(field,str){ 
document.getElementById(field).innerHTML = str;
alert('Successfuly Added');


} 

</script>

</head>
<% if(session.getAttribute("noti").toString()== "yes")
{
    %><%="<body class='page page-id-39 page-template-default no-fittext basic' onload='JavaScript:noti()'>"%><%
}
else
{
    %><%="<body class='page page-id-39 page-template-default no-fittext basic' >"%><% 
}
session.setAttribute("noti","No");
%>
	<div id="page">

		<header id="header">
			<%@include file="header.jsp" %>
<!-- #site-navigation -->

			 <div class="title-card-wrapper">
               
			</div>

		</header>

		<main>
                    <br>
	<div class="container">
		<div class="row">

<div id="primary" class="col-md-8 pull-right hfeed">
									<!-- #post-39 -->

					
<div id="comments" class="comments-area">
<article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						<h1 class="entry-title"  style="color:white">Add Bike Brand</h1>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>	
	
<div id="respond" class="comment-respond">
    
    
							</div><!-- #respond -->
			</div><!-- #comments .comments-area -->			</div>
			
				<div id="secondary" class="col-md-4" role="complementary">
                                    <article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						<h1 class="entry-title">Monthly Expenditure</h1>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>

<aside id="search-2" class="widget widget_search">
   <div id="respond" class="comment-respond">
<form action="AddMonthlyExpend1.jsp" method="post"  class="comment-form" >

							
<p ><label for="author">Stationary </label>
<input  type="number" min="0.00" name="stat" id="stat"   size="100" aria-required="true"  required placeholder="Enter the expense "></p>

<p ><label for="author">Current Bill</label> 
<input  min="0.00" type="number" name="cbill" id="cbill"  size="100" aria-required="true"  required placeholder="Enter the expense "></p>
<p ><label for="author">Water Bill </label> 
    <input   type="number" min="0.00" name="wbill" id="wbill" size="100" aria-required="true"  required placeholder="Enter the expense "></p>
<p ><label for="author">Employee Salaries </label> 
    <input   type="number" min="0.00" name="esal" id="esal" size="100" aria-required="true"  required placeholder="Enter the expense "></p>
<p><label for="author">Income tax</label> 
    <input  type="number"  min="0.00" name="tax" id="tax" size="100" aria-required="true"  required placeholder="Enter the expense "></p>
<p ><label for="author">Telephone Bill</label> 
    <input  type="number"  min="0.00" name="tbill" id="tbill" size="100" aria-required="true"  required placeholder="Enter the expense  "></p>
<p ><label for="author">Damages</label> 
    <input type="number"  min="0.00" name="dam" id="dam" size="100" aria-required="true"  required placeholder="Enter the expense  "></p>
<p ><label for="author">Vehicle Maintains</label> 
    <input  type="number" min="0.00" name="vmain" id="vmain" size="100" aria-required="true"  required placeholder="Enter the expense "></p>


<p class="form-submit">
<input type="submit" class="submit" value="Add "> 
</p>					
</form>
   </div>
</aside>

</div><!-- #secondary.widget-area -->		</div>
	</div>

	</main><!-- main -->
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>
