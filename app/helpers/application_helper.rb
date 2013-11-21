module ApplicationHelper
# Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Reservester"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def full_address(restaurant)
    address = "#{restaurant.street},#{restaurant.city},#{restaurant.state},#{restaurant.zipcode}"
    address = address.gsub(' ', '+')
    address
  end
  
  def flash_class(level)
    case level
        when :notice then "alert alert-info"
        when :success then "alert alert-success"
        when :error then "alert alert-error"
        when :alert then "alert alert-error"
    end
  end
end
