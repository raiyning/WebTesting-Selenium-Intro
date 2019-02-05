require 'faker'

class RandomName
 include Faker
  
  def name
    Name.first_name
  end

  def last_name
    Name.last_name
  end

  def date 
    Date.backward(10)
  end

end