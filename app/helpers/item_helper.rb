module ItemHelper
  def item_picture(item)
    if item.picture?
      item.picture.url
    else
      asset_path('logo.jpg')
    end
  end

  def item_picture_thumb(item)
    if item.picture?
      item.picture.thumb.url
    else
      asset_path('logo-thumb.jpg')
    end
  end
end
