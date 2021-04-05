class Person

include ActiveModel::AttributeMethods
extend ActiveModel::Callbacks
include ActiveModel::Conversion

# for attribute methods
#   attribute_method_prefix 'reset_'
#   attribute_method_suffix '_highest?'
#   define_attribute_methods 'age'

  attr_accessor :age

#   private
#     def reset_attribute(attribute)
#       send("#{attribute}=", 0)
#     end

#     def return_age(attribute)
#         send("#{attribute}=")
#       end

#     def attribute_highest?(attribute)
#       send(attribute) > 100
#     end

# for callbacks

define_model_callbacks :update

before_update :reset_me

def update
    
    run_callbacks(:update) do
      # This method is called when update is called on an object.

    end
  end

  def reset_me
    # This method is called when update is called on an object as a before_update callback is defined.
    puts ("Active Model Callback is running")
  end


# for Conversion Module

# def persisted?
#     false
#   end

#   def id
#     attr_accessor :age
#   end




end