require 'tk'
require 'tkextlib/tkimg'

root = TkRoot.new(title: 'Photo Album')

image1 = TkPhotoImage.new(file: 'images/aaron.jpeg')
image2 = TkPhotoImage.new(file: 'images/dayne.jpeg')
image3 = TkPhotoImage.new(file: 'images/matt.jpeg')
image4 = TkPhotoImage.new(file: 'images/max.jpeg')
image5 = TkPhotoImage.new(file: 'images/will.jpeg')
image6 = TkPhotoImage.new(file: 'images/jahaira.png')

images_array = [image1, image2, image3, image4, image5]
current_index = 0

container = TkLabel.new(root) do 
  image images_array[current_index]
  padx 250
  pady 250
  grid(row: 0, column: 0, columnspan: 3)
end 

label = TkLabel.new(root) do
  text "Image 1 of 5"
  pady 20
  grid(row: 1, column: 1)
end 

back_btn = TkButton.new(root) do 
  text "<"
  padx 15
  pady 15
  grid(row: 1, column: 0)
  command( lambda { 
    container.configure('image', images_array[current_index -= 1])
    label.configure('text', "Image #{current_index - 1} of #{images_array.length}")
   })
end 

next_btn = TkButton.new(root) do 
  text ">"
  padx 15
  pady 15
  grid(row: 1, column: 2)
  command( lambda { 
    container.configure('image', images_array[current_index += 1]) 
    label.configure('text', "Image #{current_index + 1} of #{images_array.length}")
  })
end 

Tk.mainloop