require 'tk'

root = TkRoot.new(title: "Hello, World!")

display = TkLabel.new(root) do
  text "helllloo"
  height 2
  width 60
  background "gray"
  grid(row: 0, column: 0, columnspan: 3)
end 

seven_btn = TkButton.new(root) do 
  text("7")
  grid(row: 1, column: 0)
end 
eight_btn = TkButton.new(root) do 
  text("8")
  grid(row: 1, column: 1)
end 
nine_btn = TkButton.new(root) do 
  text("7")
  grid(row: 1, column: 2)
end 


clear_btn = TkButton.new(root) do
  text("Clear")
  command(lambda {display.configure('text', '')})
  grid(row: 2, column: 0)
end 

Tk.mainloop
