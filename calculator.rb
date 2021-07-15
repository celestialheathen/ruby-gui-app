require 'tk'

root = TkRoot.new(title: "Ruby Calculator")

display = TkLabel.new(root) do 
  text ""
  height 2
  width 32
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
end 

Tk.mainloop 