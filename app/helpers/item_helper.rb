module ItemHelper
  def display_item_photo(item, attr = {})
    classes = attr[:classes] || ''

    if item.photo?
      cl_image_tag item.photo, class: "#{classes}"
    else
      image_tag "no_image_available", class: "#{classes}"
    end
  end
end
