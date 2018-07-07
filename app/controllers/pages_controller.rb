class PagesController < ApplicationController

    def dashboard
    end

    def index
    end

    def profile
        @person = current_user.person
        @person = Person.new(user_id: current_user.id, own: true) if !@person
    end
end
