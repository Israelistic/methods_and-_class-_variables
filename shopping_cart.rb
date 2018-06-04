#!/usr/bin/env ruby
require_relative "products"
class Cart
@@tax_rate = 0.13

    def initialize
        @cart =[]
    end
##setter/WRITER
    def self.add_product=(product)
        @cart << product
    end
    def remove_produc=(product)
        @cart.delete(product)
    end
    def change_tax=(new_tax)
        @@tax_rate = new_tax
    end
    def after_tax(price, tax_rate)
        after_tax = (price * tax_rate)
        return after_tax
    end
    #getter/READER
    def cart_content
        return @cart
    end
    def tax_rate
        return @@tax_rate
    end
    def total_before_tax
        sum = 0
        cart_content.each do | product|
            sum += product.price
            return sum
        end
    end
    def total_after_tax


    end
end

puts "====CREATING PRODUCTS===="
p papper_towels = Product.new("paper towel", 8.99)
p aluminium_foil = Product.new("aluminium_foil", 4.99)
p deodorant = Product.new("deodorant", 4.99)
p toothpaste = Product.new("toothpaste",3.98)
p toothbrush = Product.new("toothbrush",8.0)
p dishwasher_soap = Product.new("dishwasher_soap",15.99)
p bread = Product.new("bread", 4.66)
p apples = Product.new("apples", 6.78)
p oranges = Product.new("oranges",9.99)
puts "==========================================="
puts "check product prices for test"
puts
puts "apples #{apples.price}"
puts "bread#{bread.price}"
puts
puts "====CREATING CART===="
p cart1 = Cart.new
puts
puts "====ADDING PRODUCTS TO CART===="
puts

 p cart1.add_product=(papper_towels)
 p cart1.add_product=(aluminium_foil)
 p cart1.add_product=(deodorant)
 p cart1.add_product=(toothpaste)
 p cart1.add_product=(toothbrush)
 p cart1.add_product=(dishwasher_soap)
 p cart1.add_product=(bread)
 p cart1.add_product=(apples)
 p cart1.add_product=(oranges)
puts
puts "====CHECKING CART CONTENT===="
puts cart1.cart_content
puts"====Printing detail about cart1===="
p cart1
puts "====cart1 before tax===="
p cart1.total_before_tax
p cart1.total_after_tax
