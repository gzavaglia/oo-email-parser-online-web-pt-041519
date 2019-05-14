# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
requi
class EmailParser
  attr_accessor :emails 
  
  def initialize(data)
    @emails = data
  end
  
  def self.parse
    csv_emails.split.collect do |address|
      address.split(',') 
    end
    .flatten.uniq 
  end #parse method
end #Class 