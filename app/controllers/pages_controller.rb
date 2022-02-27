class PagesController < ApplicationController
  
  before_action :create_profile

  def home
  end

  private
    def create_profile
        if current_user
            if !(current_user.profile.present?)
                redirect_to new_profile_path, notice: "Please, introduce your info."
            end
        end
    end
end
