module ApplicationHelper
  def full_title page_title = ""
    base_title = i18n.t ".title"
    page_title.empty? ? basetitle : page_title + " | " + base_title
  end
end
