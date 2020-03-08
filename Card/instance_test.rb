class PrintMessage
  attr_accessor :message

  def  initialize(say_what)
    @message = say_what
  end

  def print_message
    puts "The message is #{@message}"
  end

  def write_to_message(add_on)
    @message = add_on
  end

end

new_obj = PrintMessage.new("something inserted using the construcotr")
new_obj.print_message
new_obj.write_to_message("something inserted using the write_to_message method")
new_obj.print_message
new_obj.message = "something inserted using the attr_accessor"
new_obj.print_message