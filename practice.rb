# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

#creates new hash that returns 0 if key doesn't yet exist
wallets = Hash.new(0)
#starts loop starting from zero up to (but not including) length of blockchain hash
#assigns variables - pulls out from, to, and amount
for transaction in 0...blockchain.length
  trans = blockchain[transaction]
  from_user = trans["from_user"]
  to_user = trans["to_user"]
  amount = trans["amount"]
#pulls "from user" key from wallets hash and subtracts the amount if the "from user" is not nil - for the first runthrough, pulls the "from" name if the key doesn't exist and starts it at 0, subtracting and adding amounts
#pulls "to user" key from wallets hash and adds the amount
#loops all values of the from_user and to_user variables while adding/subtracting the amount
wallets[from_user] -= amount if from_user != nil
wallets[to_user] += amount
end
#loop that iterates over each key value pair (user and balance, which is what's left)
for user, balance in wallets
  puts "#{user}'s KelloggCoin balance is #{amount}"
end
puts wallets
