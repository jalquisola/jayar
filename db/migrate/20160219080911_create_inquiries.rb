class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.string :property
      t.string :unit_type
      t.string :email

      t.timestamps null: false
    end
  end
end
