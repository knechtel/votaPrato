class CreateQualificacaos < ActiveRecord::Migration
  def change
    create_table :qualificacaos do |t|
      t.integer :cliente_id
      t.timestamps
    end
  end
end
