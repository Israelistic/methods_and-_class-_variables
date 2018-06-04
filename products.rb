#!/usr/bin/env ruby

class Product

    def initialize(name, price)
        @name = name
        @price = price
    end

    #getter/READER
    def price
         return @price
    end
    def product_name
        return @name
    end
    #setter/WRITERS
    def chenge_price=(new_price)
        @price  = new_price
    end



end
