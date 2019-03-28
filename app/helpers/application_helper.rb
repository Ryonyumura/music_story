module ApplicationHelper

  def page_title(title="")
    base_title ="思い出ソング"
    if title.empty?
      base_title
    else
    "#{title}/#{base_title}"
    end
  end
end
