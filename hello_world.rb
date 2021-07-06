require 'tk'

root = TkRoot.new(title: "Hello, World!", padx: 200, pady: 200)

TkLabel.new(root) do
  text "Hello, World!"
  pack { padx 15; pady 15; side 'left' }
end 

Tk.mainloop
