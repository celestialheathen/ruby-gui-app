require 'tk'

root = TkRoot.new(title: "Ruby Calculator")

label = TkLabel.new do 
  text ""
  height 2
  width 32
  background "gray"
  grid(row: 0, column: 0, columnspan: 4)
end 

Tk.mainloop 