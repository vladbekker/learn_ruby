require 'bundler/setup'
require 'pry'
require 'net/netconf'
require 'highline/import'
hostnames = [
	'ops-switch02.r3.cg24.tx01.shuttercorp.net',
	'ops-switch02.r4.cg24.tx01.shuttercorp.net',
	'ops-switch02.r5.cg24.tx01.shuttercorp.net',
	'ops-switch02.r6.cg24.tx01.shuttercorp.net',
	'ops-switch02.r7.cg24.tx01.shuttercorp.net',
	'ops-switch02.r8.cg24.tx01.shuttercorp.net'
]
password = ask("Password: ") { |p| p.echo = false }

report = {}

hostnames.each do |hostname|
puts "Connecting to: #{hostname}" 
login = { :target => hostname, :username => 'vbekker', :password => password }
#puts login.inspect


device = Netconf::SSH.new( login )
device.open
#binding.pry
inv = device.rpc.get_chassis_inventory
description = inv.xpath('//chassis/description').first.text
info = device.rpc.get_software_information
version= info.xpath('//package-information[name="jbase"]/comment').text
report[hostname] = version
end
binding.pry
