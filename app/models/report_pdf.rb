require 'prawn'
class ReportPdf < Prawn::Document

  def initialize(post)
    super()
    @post = post

    header
    text_content
  end

  def header
    #This inserts an image in the pdf file and sets the size of the image
    text @post.title, size: 20, style: :bold
  end

  def text_content
    # The cursor for inserting content starts on the top left of the page. Here we move it down a little to create more space between the text and the image inserted above
    y_position = cursor - 50

    # The bounding_box takes the x and y coordinates for positioning its content and some options to style it
    bounding_box([0, y_position], :width => 270, :height => 300) do
      image "#{Rails.root}/public" << @post.image.data_url
    end

    bounding_box([300, y_position], :width => 270, :height => 300) do
      text @post.body, size: 15,  :style => :italic
    end

  end
end