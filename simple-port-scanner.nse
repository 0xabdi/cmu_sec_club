-- HEAD --

-- This section provides a brief description of what the script does 

description = [[
This is a simple script example that determines if a port is open.
]]

author = "Null Byte"

-- code reference: https://null-byte.wonderhowto.com/how-to/get-started-writing-your-own-nse-scripts-for-nmap-0187403/


-- This rule function determine if a tcp port is open

-- RULE --

portrule = function(host, port)
	return port.protocol == "tcp"
		and port.state == "open"
end


-- If a port is open, the below action will print "The port is open"
-- ACTION --

action = function(host, port)
	return "This port is open!"
end
