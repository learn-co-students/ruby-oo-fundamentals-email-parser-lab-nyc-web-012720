# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry' 

class EmailAddressParser

attr_accessor :email

def initialize(email = ' ')
	@email = email
end

def parse
	result = []
	delimiters = [',', ' ', "'"]
	temp = @email.split(Regexp.union(delimiters))

	sanatized_email_array = temp.reject{|e| e == ""}
	sanatized_email_array= sanatized_email_array.uniq
	sanatized_email_array.each {|n|
		k = n.split('@)')
		result << k[-1]
	}
	return result
end

end
