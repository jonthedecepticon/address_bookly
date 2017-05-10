module ContactsHelper
  def sortable(column, title=nil)
    title ||= column.titleize
    font_awesome_arrow = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to title, {sort: column, direction: direction}, {class: font_awesome_arrow}
  end
end
