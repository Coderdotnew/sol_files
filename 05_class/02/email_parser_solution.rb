# create a class, EmailParser, that accepts a string of unformatted emails upon intialization 
# create a method, parse, that can be called on the class and separates unique email addresses

class EmailParser
  attr_accessor :email

  def initialize(email)
    @email = email
  end

  def parse
    email.gsub(",","").split(" ").uniq
  end


end