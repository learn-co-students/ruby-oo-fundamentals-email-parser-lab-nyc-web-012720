# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :emails

    def initialize (email_addresses)
        @emails = email_addresses
    end

    def parse
        @emails.tr(', ', ' ').split(" ").uniq
    end
end

