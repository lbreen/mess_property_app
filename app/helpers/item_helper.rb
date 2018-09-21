module ItemHelper
  def display_item_photo(item)
    if item.photo?
      cl_image_tag @item.photo, height: 400, width: 400
    else
      image_tag "no_image_available"
    end
  end
end
