module ApplicationHelper

  def gravatar_for(user, options = { size: 80 })
    email_address = user.email
    hashed_email = Digest::MD5.hexdigest(email_address)
    size = options[:size]
    gravatar_url = "https://www.gravatar.com/avatar/#{hashed_email}?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: "rounded shadow mx-auto d-block" )

  end
end
