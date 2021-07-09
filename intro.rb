require 'tk'

root = TkRoot.new(title: "A simple Ruby GUI app", padx: 200, pady: 200)

my_label = TkLabel.new(root) do 
  text "This is a label"
  borderwidth 35
  pack()
end 

my_btn = TkButton.new(root) do 
  text "Click me!"
  foreground "blue"
  padx 10
  pady 10
  pack()
end 

my_checkbox = TkCheckButton.new(root) do 
  text "This is a check button"
  state "disabled"
  pack()
end 


Tk.mainloop