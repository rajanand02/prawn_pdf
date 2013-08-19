require "rubygems"
require "prawn"
require 'prawn/core'
require 'prawn/layout'
 
Prawn::Document.generate("payment.pdf") do
  #body
  
    bounding_box([10, 640], :width => 530, :height => 550) do
  data = [ ["<font size='14'>Main traveller details</font>"],["Mr John Carter , 18
    
    68-74 Purley Way
    
    Croydon
    
    CR0 3JP"], 
    ["<font size='14'>Details of Cover</font>"],
    ["Cover Level : Premier+
    
      Trip Type: Winter Sports
    
      Cover For: Individual(s)
    
      Destination: Europe inc Turkey, Morocco and Tunisia
    
      From: 17/07/2013
    
      To: 31/07/2013"],
    ["<font size='14'>Payment</font>"],["Premium: £41.12
      
      Policy Extras: £0.00
      
      Medical Premium: £0.00
      
      Total Premium: £41.12"],["<font size='14'>Policy Details</font>"],["Post Your Documents: No
      
      Excess Waiver: No
      
      Gadget Cover: No
      
      Travel Disruption: No
      
      Winter Sports: Yes
      
      Golf Cover: No
      
      Business Cover: No"],["<font size='14'>Declared Medical Conditions</font>"],["Mr John Carter : No medical conditions"]]
  
      table(data, :row_colors => ["E5E5E5","ffffff"], 
      :width => 528,
      :cell_style => { :size => 9, :inline_format => true }) do

 
  row(0..15).borders = []
  
  
end


    end
    
    



    repeat :all do
 
           stroke do
              stroke_color "ED6609"
             rounded_rectangle [0, 660], 550, 615, 6
          end
          
          bounding_box [12, bounds.bottom + 95], :width  => 520  do
          text_box "This document only constitutes a valid policy of insurance when read in conjunction with thepolicy wording booklet (Term and Conditions). In case of emergency, or if you need to make a medical or repatriation claim, please contact our 24 hour helpline on: +44 (0)1273 624 661",:align => :center, :size => 10
          end
          
        # header
        
          bounding_box [bounds.left, 730], :width  => bounds.width do
        
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
            
            
             
          end
 
          
          
          
        # footer
          bounding_box [bounds.left, bounds.bottom + 45], :width  => bounds.width do
            
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
     :color => "ED6609",
     :size => 10 }
    number_pages string, options
    
end
