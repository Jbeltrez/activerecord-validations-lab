class TitleValidator < ActiveModel::Validator 
    def validate(record)
        c = ["Won't Believe". "Secret", "Top[number]", "Guess"]
        record.title.match?(/Won't Believe|Secret|Top[\d]|Guess/-i)

    end
end 