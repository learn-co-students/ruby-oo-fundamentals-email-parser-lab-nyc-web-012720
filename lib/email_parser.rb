class EmailAddressParser
    attr_accessor :emails 
    emails = []
    def initialize(email_string)
        @email_string = email_string
    end 
    def parse
        no_comma = @email_string.split(",")
        rejoin = no_comma.join
        no_space = rejoin.split(" ")
        no_space.uniq
    end 
end 
