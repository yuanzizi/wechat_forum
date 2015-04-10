class IdentitiesController < ApplicationController
  skip_before_action :check_user, only: [ :new ]

  def new
    
  end

end
