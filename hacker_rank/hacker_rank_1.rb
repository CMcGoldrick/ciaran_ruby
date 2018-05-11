def rot13(secret_messages)
  
  input   = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
  output  = "NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm"

  ip = input.split("")
  op = output.split("")
  op_index = []
  op_output = []

  arr = secret_messages.split("")

  arr.map do |i|
    op_index << op.index(i) 
  end

  index = 0
  op_index.each do
    op_output << (op[op_index[index]])
    index += 1
  end

  p op_output


end

rot13("Why did the chicken cross the road?")
# p rot13("To get to the other side!")

# --------------------------------------------


# def timeConversion(s)
#   arr = s.split(":")

#   if s.include? "AM" 
#     return s
#   else 
#     x = (arr[0].to_i + 12).to_s
#   end
#     arr[0] = x

#   string = arr.join(":")

#   puts string.gsub(/[PM]/,'')

# end

# p timeConversion("07:05:45PM")

# --------------------------------------------

# def biggerIsGreater(w)

#   if w.reverse == w then p "no answer" else p w.split("").sort!.join("") end


# end

# biggerIsGreater("abdc")
# biggerIsGreater("bb")

# --------------------------------------------

# def identify_class(obj)
#     # write your case control structure here
#   case obj
#     when "Hacker"
#       puts "It's a Hacker!"
#     when "Submission"
#       puts "It's a Submission!"
#     when "TestCase"
#       puts "It's a TestCase!"
#     else "Contest"
#       puts "It's a Contest!"
#   end
# end

# identify_class("Hacker")

# --------------------------------------------









































