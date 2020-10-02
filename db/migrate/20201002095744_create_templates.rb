class CreateTemplates < ActiveRecord::Migration[6.0]
  def change
    create_table :templates do |t|
      t.string :template_explain,  null: false
      t.integer :category,         null: false
      t.string :template_image,    null: false
      t.references :user,          null: false,  foreign_key: true
      t.timestamps
    end
  end
end
