class RemoveTemplateImageFromTemplates < ActiveRecord::Migration[6.0]
  def change
    remove_column :templates, :template_image, :string
  end
end
