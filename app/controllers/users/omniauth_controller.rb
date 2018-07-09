class Users::OmniauthController < ApplicationController

	# facebook callback
  def facebook
    @user = User.create_from_provider_data(request.env['omniauth.auth'])
    if @user.persisted?
      sign_in_and_redirect root_url
      # set_flash_message!(:notice, :success, kind: 'Facebook') if is_navigational_format?
      
      # redirect_to root_url
    else
      flash[:error] = 'There was a problem signing you in through Facebook. Please register or try signing in later.'
      redirect_to new_user_registration_url
    end 
  end

  def failure
    flash[:error] = 'There was a problem signing you in. Please register or try signing in later.' 
    redirect_to new_user_registration_url
  end

  def set_flash_message!(key, kind, options = {})
    if is_flashing_format?
      set_flash_message!(key, kind, options)
    end
  end
end
