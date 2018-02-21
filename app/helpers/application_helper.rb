module ApplicationHelper
  def bootstrap_class_for(flash_type)
    case flash_type
      when "success"
        "alert-success"   # Green
      when "error"
        "alert-danger"    # Red
      when "alert"
        "alert-warning"   # Yellow
      when "notice"
        "alert-info"      # Blue
      else
        flash_type.to_s
    end
  end

  def tag_icons(tag_list)
    tag_list.map do | tag |
      "<a href='/news?tag=#{CGI::escape(tag)}' class='tag'>#{tag}</a>"
    end.join(', ').html_safe
  end
end