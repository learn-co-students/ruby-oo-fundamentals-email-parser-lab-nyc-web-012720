# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :arg
    def initialize (arg)
        @arg = arg
    end 
    def parse 
       
        # new_array = @arg.split("/[\s,]+/")
        new_array = @arg.split(" ")
        arr = []
        counter = 0 
        while counter < new_array.length
            if !(arr.include? new_array[counter])
                arr.push(new_array[counter].delete(','))
            end
            counter += 1 
        end 

        arr
    end 

end 
