# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  # Return a title on a per-page basis.
  def title
    baseTitle = "Ruby on Rails Tutorial Sample App"
    if @title.nil?
      baseTitle
    else
      "#{baseTitle} | #{h(@title)}"
    end
  end
  
  def logo
    image_tag("logo.png", :alt => "Sample App", :class => "round")
  end
end
