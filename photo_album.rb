require 'tk'
require 'tkextlib/tkimg'

root = TkRoot.new(title: 'Photo Album')

image = TkPhotoImage.new
image.file = 'images/max.jpeg'

label = TkLabel.new(root, image: image).pack

Tk.mainloop