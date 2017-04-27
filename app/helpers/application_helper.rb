module ApplicationHelper
    
     # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Resume"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
  
  
  def url_for_page page
    if page.slug.present?
      page.slug
    else
      "pages/#{page.id}"
    end
  end
  
  def url_for_menu_item menu_item
    if menu_item.url.match /:\/\// # http://, ftp://, etc.
       menu_item.url
    else
      root_path + menu_item.url
    end
  end

end
