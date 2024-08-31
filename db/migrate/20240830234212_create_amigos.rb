class CreateAmigos < ActiveRecord::Migration[7.0]
  def change
    create_table :amigos do |t|
      t.string :nombre
      t.date :fecha_cumpleanos

      t.timestamps
    end
  end
end
