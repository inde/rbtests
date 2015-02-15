class Gems
  private
  def name
    "Who wants my gems? #{self.class}"
  end
end
 
class Thief < Gems
  def call_parent_method_name
    # implicit receiver
    puts name
 
    # explicit receiver
    puts self.name rescue puts 'NoGemsforThief'
    # explicit receiver
    puts Gems.new.name rescue puts 'NoGemsforThief'
  end
end
 
Thief.new.call_parent_method_name
# Who is calling me? Bar
# NoMethodError
# NoMethodError