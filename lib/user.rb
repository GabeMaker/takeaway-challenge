require 'twilio-ruby'

DISHLIST = {
              pizza: 12,
              pasta: 10,
              salad: 7.50,
              garlic_bread: 5,
              cola: 2.5,
              mineral_water: 2
            }

class User

  attr_accessor :order

  def initialize
    @order = []
  end

  def add_dish(dish, number=1)
    number.times do
    @order << dish
    end 
  end

  def total
    @order.inject(0) { |memo,item| memo + DISHLIST[item.to_sym]}
  end

  def place_order(total)
    if total == @order.inject(0) { |memo,item| memo + DISHLIST[item.to_sym]}
      


      @account_sid = #private
      @auth_token = #private
      @from_number = #private
      @to_number = #private
      # set up a client to talk to the Twilio REST API
      @client = Twilio::REST::Client.new(@account_sid, @auth_token)

      time = Time.new
      time = Time.new + 3600

      @account = @client.account
      @message = @account.messages.create({:from => @from_number, :to => @to_number, :body => 'Thank you! Your order was placed and will be delivered before 18:52'})
      puts @message
    else raise 'Error'
    end
  end

end