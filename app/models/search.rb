class Search < ApplicationRecord

def search_products

products=Product.all
products=products.where(["name LIKE ?","%#{keywords}%"]) if keywords.present?
products=products.where(["category_id LIKE ?","%#{category_id}%"]) if category_id.present?
products=products.where(["cost >= ?",min_price]) if min_price.present?
products=products.where(["cost < ?",max_price]) if max_price.present?
return products
end

end
