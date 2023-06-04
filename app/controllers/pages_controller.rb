class PagesController < ApplicationController
    def home
        if current_user.role == "requiring_user"
            @tickets = current_user.requiring_user_tickets
            @opened_tickets = @tickets.where(state: "open")
            @pending_responses = current_user.requiring_user_responses.where(acceptance: false)
        end
    end
end