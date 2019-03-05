# 2. Scrape network information from the local host to include: ☐ 
# a. All network interfaces IP addresses, subnets, gateways and DNS servers. ☐ 
# b. The public IP address for NAT’ed host.  (eg:  if ip == private, use webservice to identify public IP).  ☐ 

#https://stackoverflow.com/questions/42566/getting-the-hostname-or-ip-in-ruby-on-rails

require 'socket'

#a.




#b.
def local_ip
  orig, Socket.do_not_reverse_lookup = Socket.do_not_reverse_lookup, true  # turn off reverse DNS resolution temporarily

  UDPSocket.open do |s|
    s.connect '64.233.187.99', 1
    s.addr.last #Ruby returns last evaluated value, the IP. 
  end
ensure
  Socket.do_not_reverse_lookup = orig
end

#puts local_ip