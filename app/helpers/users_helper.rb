module UsersHelper
# Returns the Gravatar for the given user.
def gravatar_for(user, options = { size: 80 })
size= options[:size]
gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
# gravatar_url = "https://secure.gravatar.com/userimage/198482297/#{gravatar_id}?s=#{size}"
# gravatar_url1 = "https://en.gravatar.com/userimage/198482297/9a43b9a35e0b030ac152aeecc27e5c8e.png?s=#{size}"
# gravatar_url = "https://s.gravatar.com/avatar/92796958fe9d92s73b3b75b5945d10d3?s=80?s=#{size}"
gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
# image_tag(gravatar_url1, alt: user.name, class: "gravatar")
image_tag(gravatar_url, alt: user.name, class: "gravatar")
end
end
# https://secure.gravatar.com/avatar/1ee2af99f591823ce73395751d656abb?s=50
