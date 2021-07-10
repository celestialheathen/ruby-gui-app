require 'tk'

root = TkRoot.new(title: "Ruby Calculator")

display = TkLabel.new(root) do
  text ""
  height 2
  width 50
  background "gray"
  grid(row: 0, column: 0, columnspan: 4)
end 

current_value = display.cget('text')

seven_btn = TkButton.new(root) do 
  text("7")
  grid(row: 1, column: 0)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', current_value.concat('7'))})
end 
eight_btn = TkButton.new(root) do 
  text("8")
  grid(row: 1, column: 1)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', current_value.concat('8'))})
end 
nine_btn = TkButton.new(root) do 
  text("9")
  grid(row: 1, column: 2)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', current_value.concat('9'))})
end 
multiply_btn = TkButton.new(root) do 
  text("X")
  grid(row: 1, column: 3)
  borderwidth 1
  padx 30
  pady 25
  command()
end 

four_btn = TkButton.new(root) do 
  text("4")
  grid(row: 2, column: 0)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', current_value.concat('4'))})
end 
five_btn = TkButton.new(root) do 
  text("5")
  grid(row: 2, column: 1)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', current_value.concat('5'))})
end 
six_btn = TkButton.new(root) do 
  text("6")
  grid(row: 2, column: 2)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', current_value.concat('6'))})
end 
minus_btn = TkButton.new(root) do 
  text("-")
  grid(row: 2, column: 3)
  borderwidth 1
  padx 30
  pady 25
  command()
end 

one_btn = TkButton.new(root) do 
  text("1")
  grid(row: 3, column: 0)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', current_value.concat('1'))})
end 
two_btn = TkButton.new(root) do 
  text("2")
  grid(row: 3, column: 1)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', current_value.concat('2'))})
end 
three_btn = TkButton.new(root) do 
  text("3")
  grid(row: 3, column: 2)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', current_value.concat('3'))})
end 
plus_btn = TkButton.new(root) do 
  text("+")
  grid(row: 3, column: 3)
  borderwidth 1
  padx 30
  pady 25
  command()
end 

negative_btn = TkButton.new(root) do 
  text("+/-")
  grid(row: 4, column: 0)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', current_value * -1)})
end 
zero_btn = TkButton.new(root) do 
  text("0")
  grid(row: 4, column: 1)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', current_value.concat('0'))})
end 
dot_btn = TkButton.new(root) do 
  text(".")
  grid(row: 4, column: 2)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', '.')})
end 
equal_btn = TkButton.new(root) do 
  text("=")
  grid(row: 4, column: 3)
  borderwidth 1
  padx 30
  pady 25
  command()
end 

divide_btn = TkButton.new(root) do 
  text("/")
  grid(row: 5, column: 2)
  borderwidth 1
  padx 30
  pady 25
  command()
end 
clear_btn = TkButton.new(root) do
  text("Clear")
  command(lambda {display.configure('text', '')})
  grid(row: 5, column: 3)
end 

Tk.mainloop
