require 'tk'
require 'tkextlib/tkimg'

root = TkRoot.new(title: 'Photo Album')

image = TkPhotoImage.new(file: 'images/will.jpeg')

container = TkLabel.new(root) do 
  image image
  padx 250
  pady 250
  grid(row: 0, column: 0, columnspan: 3)
end 

back_btn = TkButton.new(root) do 
  text "<"
  padx 15
  pady 15
  grid(row: 1, column: 0)
end 

label = TkLabel.new(root) do
  text "Image 1 of 1"
  pady 20
  grid(row: 1, column: 1)
end 

forward_btn = TkButton.new(root) do 
  text ">"
  padx 15
  pady 15
  grid(row: 1, column: 2)
end 

Tk.mainloop