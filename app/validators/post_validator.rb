class PostValidator < ActiveModel::validator
  def validate(record)
    word = ["Won't Believe", "Secret", "Top [number]", "Guess"]
    unless word.include?(record.title)
      record.errors[:title] << "Not enough clickbait title"
    end
  end
end

# lass EmailValidator < ActiveModel::Validator
#   def validate(record)
#     unless record.email.match?(/flatironschool.com/)
#       record.errors[:email] << "We're only allowed to have people who work for the company in the database!"
#     end
#   end
# end
