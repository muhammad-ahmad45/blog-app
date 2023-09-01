class Friend < ApplicationRecord
    include ActiveModel::AttributeMethods
    validates :age, presence: true
    attribute_method_prefix 'reset_'
    attribute_method_suffix '_highest?'
    # define_attribute_methods 'age'
  
    # attr_accessor :age

    def attributes=(hash)
        hash.each do |key, value|
          send("#{key}=", value)
        end
      end
    
    #   def attributes
    #     {'age' => nil}
    #   end
  
    private
      def reset_attribute(attribute)
        send("#{attribute}=", 0)
      end
  
      def attribute_highest?(attribute)
        send(attribute) > 100
      end
end
