class Change
  # should give the user change, using the fewest coins possible
  
  def self.make(amount, coins = [25, 10, 5, 1])
    coins.sort!.reverse!
    smallest = []
    current = []
    # go through each coin size, try having a coin first, see if fewer total coins.
    coins.each_with_index do |coin_size, index|
      current = convert_to_coins(amount, put_first(coins, index))
      smallest = smallest == [] ? current : smaller(smallest, current)
    end
    smallest
  end
  
  def self.put_first(coins, target) #put the desired coin first in array
    coins.insert(0,coins[target]).delete_at(target+1)
    coins
  end
  
  def self.convert_to_coins(amount, coins)
    thing = {}
    output = []
    coins.each do |coin_size|
      thing[coin_size] = amount/coin_size;
      amount = amount % coin_size;
      thing[coin_size].times do
        output << coin_size
      end
    end
    output
  end
  
  private
  
  def self.smaller(change1, change2)
    change2.size < change1.size ? change2 : change1
  end

end