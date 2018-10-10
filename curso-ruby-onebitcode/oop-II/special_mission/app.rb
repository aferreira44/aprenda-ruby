require_relative('market')

product = Product.new("Produto 1", 250.00)
market = Market.new(product)
market.buy
