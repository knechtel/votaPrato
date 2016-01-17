class MigrationName < ActiveRecord::Migration
  def change
      add_column :qualificacaos, :restaurante_id, :integer
  end
end
