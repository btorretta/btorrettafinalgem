require 'net/https'
class Servicedesk
# This is just meant to take in a ticket from a user prompt and pass back the status
# example: input 671148 at the command prompt
#no arguments needed
#This is my documentation
#note at the moment, its specific to the my environment, so I'll have to make it general as a gem. To use it as your own, you'd want to stub in your api and u/p

 attr_accessor :ticket
 def initialize
 @ticket = ticket
 end
 def lets_ask(*ticket)
           i = puts "What is your ticket number?"
           ticket = gets.chomp
           ticket = ticket.to_i
           site = Net::HTTP.new(yourapihere.com", 443)
           site.use_ssl = true
           response = site.get2("/v1/incident/IUAT#{ticket}.yaml", 'Authorization' =>'Basic ' + ["user:password"].pack('m').strip)
           puts response.body
              if response.body.match("error") then raise SyntaxError.new('Please enter your Incident number without letters, for example 671148') end
 end
 #n= Servicedesk.new
#n.lets_ask
end
class ServiceDesk2 <Servicedesk
n= Servicedesk.new
 n.lets_ask
end
