require 'tk'

root = TkRoot.new(title: "A simple Ruby GUI app", padx: 200, pady: 200)

counter = 0

my_label = TkLabel.new(root) do 
  text "This is a label"
  borderwidth 35
  pack()
end 

my_btn = TkButton.new(root) do 
  text counter
  foreground "blue"
  padx 10
  pady 10
  command (-> {my_btn.configure('text', my_btn.cget('text').to_i + 1)})
  pack()
end 

my_checkbox = TkCheckButton.new(root) do 
  text "This is a check button"
  state "disabled"
  pack()
end 

my_label.configure('text', 'A new label')

Tk.mainloop