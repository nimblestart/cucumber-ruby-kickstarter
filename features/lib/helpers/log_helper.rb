# Puts the passsed on String parameter to the console
def log(message)
  message_with_nl = message.gsub("\n", "\\n")
  puts message_with_nl
end