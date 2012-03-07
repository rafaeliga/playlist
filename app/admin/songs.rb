#encoding: utf-8
ActiveAdmin.register Song do
  
  menu :label => "Músicas"
  
  filter :name
  filter :artist
  filter :genre
  
  index do
    column "Imagem" do |song|
      image_tag song.image(:mini)
    end
    column :name
    column :artist
    column :original_tone
    column :our_tone
    column :genre
    column "Tab / Cifra" do |song|
      link_to song.tab_link, song.tab_link, :target => "_blank"
    end                         
    default_actions
  end
  
  form :multiple => true do |f|
    f.inputs "Detalhes" do
      f.input :name
      f.input :artist
      f.input :album
      f.input :original_tone
      f.input :our_tone
      f.input :genre
    end
    f.inputs "Conteúdo" do
      f.input :tab_link, :hint => f.object.tab_link.present? ? link_to(f.object.tab_link, f.object.tab_link, :target => "_blank") : ""
      f.input :lyrics
    end
    f.inputs "Image", :multipart => true do 
      f.input :image, :label => false, :as => :file, :hint => f.object.image_file_name.present? ? image_tag(f.object.image(:thumb)) : ""
    end
    
    f.buttons
  end      
  
  show do |song|
    attributes_table do
      row "Imagem" do
        image_tag(song.image(:thumb))
      end
      row :name
      row :artist
      row :original_tone
      row :our_tone
      row :genre
      row :tab_link
      row :lyrics
    end
  end
  
end
