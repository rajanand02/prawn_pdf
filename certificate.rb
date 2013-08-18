require "rubygems"
require "prawn"
require 'prawn/core'
require 'prawn/layout'
 
Prawn::Document.generate("payment.pdf") do
  #body
  
    bounding_box([6, 620], :width => 530, :height => 550) do
    
    text "hey all"+ "this is prawn"+" . " * 3200 +
    "this is next page " +
    "it will take to u another page also" +
    " we can add or remove border if we want.",:color => "007700"

    end
    
	

    repeat :all do
        
          
        # header
        
          bounding_box [bounds.left, bounds.top], :width  => bounds.width do
        
            font "Helvetica"
            bounding_box([bounds.left, bounds.top], :width => 180) do
              image "/home/raj/logo.png",:width => 180, :height => 60
            end
            
            bounding_box([400, 50], :width => 150) do
              fill_color "006ACC"
              text "
              0333 9000 800", :align => :right, :height => 50, :size => 16
              text "Lines Open: Mon-Fri 9am-5pm", :align => :right, :height => 80, :size => 10
            end
            
            move_down 16
            stroke_color "ED6609"
            stroke_horizontal_rule
          end
 
          
          
          
        # footer
          bounding_box [bounds.left, bounds.bottom + 45], :width  => bounds.width do
            stroke_color "ED6609"
            stroke_horizontal_rule
            fill_color "006ACC"
            font "Helvetica"
            move_down(35)
            text_box " 
            Holiday and Travel Insure and Away Ltd is an authorised representative of Tobell Insurance Services Ltd who are
            authorised and regulated by the Financial Services Authority.Registration Number: 578713 Registered Office: 93 Aldwick
            Road, Bognor Regis, West Sussex, PO21 2NW. Registration Number: 07716073.",:align => :center, :size => 8, :color => "007700"
        end
        
    
    end
    
 
    string = "page <page> of <total>"
    # Green page numbers 1 to 11
    options = { :at => [bounds.right - 150, 0],
     :width => 150,
     :align => :right,
     :page_filter => (1..11),
     :start_count_at => 1,
     :color => "007700" }
    number_pages string, options
    
end
