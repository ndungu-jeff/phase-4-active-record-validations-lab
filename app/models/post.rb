class Post < ApplicationRecord
    validates :title, presence:true
    validates :content, length: {minimum:250}
    validates :summary, length: {maximum:250}
    validates :category, inclusion: ['Fiction', 'Non-Fiction']
    validates :title_does_not_contain


    def title_does_not_contain
        unless title.present? && title.match?(/Won't Believe|Secret|Top [number]|Guess/)
          errors.add(:title, "something is missing!")
        end
      end

end
