<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="template/common/js/jquery-2.0.0.js"></script>
	<script type="text/javascript" src="typeahead/typeahead.jquery.min.js"></script>
	<script type="text/javascript" src="typeahead/typeahead.bundle.min.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	 var bestPictures = new Bloodhound({
		    datumTokenizer: Bloodhound.tokenizers.obj.whitespace('value'),
		    queryTokenizer: Bloodhound.tokenizers.whitespace,
		    prefetch: '../data/films/post_1960.json',
		    remote: {
		      url: '../data/films/queries/%QUERY.json',
		      wildcard: '%QUERY'
		    }
       });
	  $('.typeahead').typeahead(null, {
		    name: 'best-pictures',
		    display: 'value',
		    source: bestPictures,
		    templates: {
		      empty: [
		        '<div class="empty-message">',
		          'unable to find any Best Picture winners that match the current query',
		        '</div>'
		      ].join('\n'),
		    }
		  });
	</script>

  </head>
  
  <body>
     <div>
     	<input class="typeahead" type="text" placeholder="test">
     </div>
  </body>
</html>
