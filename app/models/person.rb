class Person < ApplicationRecord
    has_many :accounts
    def user
        User.where(id: self.user_id, own: true).first
    end

    def full_name
        if self.last_name
            self.name + " " + self.last_name
        else
            self.name
        end
    end

    def short_name
        if self.name && self.name != "" && self.last_name
            self.name.split(" ")[0] + " " + self.last_name.split(" ")[0]
        else
            self.name
        end
    end

    def short
        if self.name && self.name != "" && self.last_name
            self.name[0] + self.last_name[0]
        else
            self.name.split("").take(2).join
        end
    end
end
