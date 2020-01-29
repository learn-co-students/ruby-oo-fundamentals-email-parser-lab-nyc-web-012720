# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :email

    def initialize (email)
        @email = email
    end

   def parse
    # .uniq
    # n = [1,1,1,2,3,4,5]
    # n.uniq=[1,2,3,4,5]
    email.gsub(/[\s,]/,' ').split(' ').uniq
    end
end


