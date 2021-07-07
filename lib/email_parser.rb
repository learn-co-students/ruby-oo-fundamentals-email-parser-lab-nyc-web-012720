# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser

attr_accessor :email

    def initialize(email)
        @email = email
    end

def parse
    @email.split(/[,\s]+/).uniq
end
end

email_addresses = "ricky@ricky.net, ricky@ricky.com ricardo@cows.com, wee@woo.yah ricky@ricky.net"
parser = EmailAddressParser.new(email_addresses)
