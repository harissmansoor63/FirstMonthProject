class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    # def name_with_initial
    #     "#{first_name.first}. #{last_name}"
    # end
   
    validates :title, presence: true,length: {minimum:5}
    validates :text, presence: true, length: {minimum:5}

    # before_create do
    #     self.title = title.capitalize if text.blank?
    # end
        
    #before_validation :ensure_login_has_value, on: [:create, :update] #phele hi value deke save karta hai

   #after_validation :set_login_has_value, on: [ :create, :update ]  # aik dfa rollback karega

    after_rollback :after_rollback_login_has_value

    #after_update :after_update_login_has_value


    #around_create :around_save_login_has_value  //lets me go beyond the save article but doenst save anything 
    #in the database thus cannot be seen in index

    #around_save :around_save_login_has_value  //doesnt go beyond the save article button
    

    after_initialize do |article|
        puts "You have initialized an object!"
      end
    
      after_find do |article|
        puts "You have found an object!"
      end
    
    

    private
        
    def around_save_login_has_value
        
       
        puts "WHYYY THE AROUND SAVE IS RUNNING SUCCESSFULLY"
        
    end
    

    def after_rollback_login_has_value
        
       
        puts "WHYYY THE rollback IS RUNNING SUCCESSFULLY"
        self.text = "NO THIS SHOULD NOT HAVE BEEN THE VALUE"
        self.title = "AB KARO SAVE"
        
    end

    def after_update_login_has_value
        
       
        puts "WHYYY THE update IS RUNNING SUCCESSFULLY"
        self.title = "DOES THIS CHANGE THE TITLE IN DB???" # no it doensn't
        
    end


    def ensure_login_has_value
            if text.nil? || text.empty? || text.blank?
            puts "BEFORE WHYYY IS TEXT NIL??"
            self.text = "hiiji1"
            end
        end

        def set_login_has_value
            if text.nil? || text.empty? || text.blank?
                puts "AFTER WHYYY IS TEXT NIL??"
                self.text = "hiiji2"
            end
        end
    
end
