module Paramble
  module InstanceMethods
  
    def to_param
      self.downcase.gsub(' ', '-')
    end
  end 

end 