module ProductsHelper

    def show_image(product)
        if product.image.attached?
          image_tag product.image, style:'height: 100px; width:auto'
        else
          image_tag "notexture", style:'height: 100px; width:auto'
        end
      end

    def price(product)
        if product.price != 0
          return "$" + product.price.to_s
        else
          return "Gratis"
        end
    end

    def stock(product)
      if(product.stock.quantity < 2)
        return 'badge bg-danger'
      elsif((product.stock.quantity > 1) && (product.stock.quantity < 10))
        return 'badge bg-warning'
      else
        return 'badge bg-success'
      end
    end
    

end
