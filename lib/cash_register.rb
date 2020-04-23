# self is 'main'

class CashRegister
   # self is the class CashRegister
   #attr_accessor :discount, total 

   attr_accessor :total, :discount
   
   def initialize(discount = 0)
        @total = 0
        @discount = discount
        @cart = []
        @last_transaction = 0
   end

   def add_item(title, price, quantity=1)
   

     

      quantity.times do 
         @cart << title
      end
  
      
      
      
      
      @total += price * quantity

      @last_transaction = price * quantity

   end
  
   
   def apply_discount
      if @discount == 0
         "There is no discount to apply."
      else
      @total -= @total * @discount / 100
      "After the discount, the total comes to $#{@total}."
      end

   end


   def items
      @cart 


   end

   def void_last_transaction
      @total -= @last_transaction

   end


   


end