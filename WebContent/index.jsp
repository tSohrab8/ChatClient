<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Chat Client</title>
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script>
        
	        (function doPoll(){
	            $.get('TimeServe', function(data) {
	            	$("#somediv").html(data);
	                //alert(data);  // process results here
	                setTimeout(doPoll,100);
	            });
	        })();
	        
            function sendMessage(){
            	var message = $('#message').val();
            	$.get('TimeServe',{message : message}, function(data){
            		$("#somediv").html(data)}
            	);
            }
            
        </script>
    </head>
    <body>
    	<input type="text" id="message">
        <button id="sub" onclick="sendMessage()">Enter Message</button>
        <div id="somediv"></div>
    </body>
</html>