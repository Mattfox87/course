class BankAccount
  attr_accessor :account_holder, :sort_code, :account_number, :initial_balance

  def initialize(account_holder:, sort_code:, account_number:, initial_balance:)
    @account_holder = account_holder
    @sort_code = sort_code
    @account_number = account_number
    @initial_balance = initial_balance
  end

  def print_acc_holder
    puts "The account is in the name of: #{account_holder}"
  end


end

new_account = BankAccount.new(account_holder: "Matt", sort_code: "11-22-33", account_number: "0123456789", initial_balance: 0)
new_account.print_acc_holder
