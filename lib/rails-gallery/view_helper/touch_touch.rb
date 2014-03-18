module RailsGallery
  module ViewHelper
    module TouchTouch
      def touchgal_image photo, options = {}
        block = block_given? ? yield : nil
        content_tag :a, block, options.merge(href: photo.path, title: photo.title)
      end
      alias_method :touch_gallery_image, :touchgal_image
    end
  end
end
