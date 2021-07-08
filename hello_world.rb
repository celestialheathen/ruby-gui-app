require 'tk'

root = TkRoot.new(title: "Hello, World!", padx: 250, pady: 250)

display = TkLabel.new(root) do
  text "helllloo"
  pack { padx 15; pady 15; side 'top' }
end 


TkButton.new(root) do
  text("Clear")
  pack { padx 15; pady 15; side 'buttom'}
  command(lambda {display.configure('text', '')})
end 

Tk.mainloop
