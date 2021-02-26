class Post < ActiveRecord::Base
    validates :title, presence: true 
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}

    validate :clickbait

    def clickbait 
        # check if title contains this 
        if self.title  
        #     self.title.match(/Won't Believe|Secret|Top[\d]|Guess/)
        # else 
            errors.add(:title, "is invalid if not clickbait") unless self.title.match(/Won't Believe|Secret|Top[\d]|Guess/)
            # errors.add(:expiration_date, "can't be in the past")
        end 

        
    end 

#   def expiration_date_cannot_be_in_the_past
#     if expiration_date.present? && expiration_date < Date.today
#       errors.add(:expiration_date, "can't be in the past")
#     end
#   end

#   def discount_cannot_be_greater_than_total_value
#     if discount > total_value
#       errors.add(:discount, "can't be greater than total value")
#     end
#   end

end
