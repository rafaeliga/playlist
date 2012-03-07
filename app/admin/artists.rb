ActiveAdmin.register Artist do
  menu :label => "Artistas"
  
  show do |artirst|
    attributes_table do
      row :name
    end
  end
  
end
