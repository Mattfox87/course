class BankAccount
  attr_accessor :account_holder, :sort_code, :account_number, :balance

  def initialize(account_holder:, sort_code:, account_number:, balance:)
    @account_holder = account_holder
    @sort_code = sort_code
    @account_number = account_number
    @balance = balance
    @interest = 1.5
  end

  def print_acc_holder
    puts "The account is in the name of: #{@account_holder}"
  end

  def deposit(amount)
    transaction_history = {}
    @balance += amount
    puts "New Balance is: #{balance}"
  end

end

new_account = BankAccount.new(account_holder: "Matt", sort_code: "11-22-33", account_number: "0123456789", balance: 0)
new_account.print_acc_holder
new_account.deposit(10.00)
