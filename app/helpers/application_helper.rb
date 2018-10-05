module ApplicationHelper
  def full_title(page_title = '')
    base_title = 'RoR'

    base_title = "#{page_title} | #{base_title}" unless page_title == ''
  end
end
