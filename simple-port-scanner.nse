-- HEAD --

description = [[
This is a simple script example that determines if a port is open.
]]

author = "Null Byte"

-- code reference: https://null-byte.wonderhowto.com/how-to/get-started-writing-your-own-nse-scripts-for-nmap-0187403/

-- RULE --

portrule = function(host, port)
	return port.protocol == "tcp"
		and port.state == "open"
end


-- ACTION --

action = function(host, port)
	return "This port is open!"
end
