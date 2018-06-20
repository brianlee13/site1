module UserHelper
  def user_avatar(user)
    if user.image.nil?
      asset_url('avatar.png')
      # user.avatar_url
    else
      user.image
    end
    # if contact.photo.nil?
    #   image_tag contact.avatar_url, options
    # else
    #   image_tag contact.photo.thumb('150x150#').url, options
    # end
  end
end