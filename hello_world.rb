require 'tk'

root = TkRoot.new(title: "Ruby Calculator")

display = TkLabel.new(root) do
  text "12"
  height 2
  width 50
  background "gray"
  grid(row: 0, column: 0, columnspan: 3)
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
  command(lambda {display.configure('text', '8')})
end 
nine_btn = TkButton.new(root) do 
  text("9")
  grid(row: 1, column: 2)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', '9')})
end 

four_btn = TkButton.new(root) do 
  text("4")
  grid(row: 2, column: 0)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', '4')})
end 
five_btn = TkButton.new(root) do 
  text("5")
  grid(row: 2, column: 1)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', '5')})
end 
six_btn = TkButton.new(root) do 
  text("6")
  grid(row: 2, column: 2)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', '6')})
end 

one_btn = TkButton.new(root) do 
  text("1")
  grid(row: 3, column: 0)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', '1')})
end 
two_btn = TkButton.new(root) do 
  text("2")
  grid(row: 3, column: 1)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', '2')})
end 
three_btn = TkButton.new(root) do 
  text("3")
  grid(row: 3, column: 2)
  borderwidth 1
  padx 30
  pady 25
  command(lambda {display.configure('text', '3')})
end 


clear_btn = TkButton.new(root) do
  text("Clear")
  command(lambda {display.configure('text', '')})
  grid(row: 4, column: 0)
end 

Tk.mainloop
