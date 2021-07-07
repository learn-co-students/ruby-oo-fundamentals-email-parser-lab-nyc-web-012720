# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :email_address

    def initialize(email_address ="john@doe.com")
        @email_address = email_address
    end
    

    def parse
        parse = @email_address.split(/[,\s]+/).uniq 

    end
end

# email_addresses = "john@doe.com, someone@gmail.com  john.doe@hotmail.com, john@doe.com"
# parser = EmailAddressParser.new(email_addresses)
# puts parser.parse
