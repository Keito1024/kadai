class UsersController < ApplicationController
  before_action :login_action
# has_secure_password

  def login_action
    authenticate_user! unless shop_signed_in?
    authenticate_shop! unless user_signed_in?
  end

end
