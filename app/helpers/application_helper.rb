# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def title
    base_title = "MyApp"
    if @title.nil?
      return base_title
    else
      return "#{base_title} | #{@title}"
    end
  end
end
