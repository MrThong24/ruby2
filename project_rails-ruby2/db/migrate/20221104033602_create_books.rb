class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :mahs_263
      t.string :hoten_263
      t.string :lop_263
      t.string :masanh_263
      t.string :tensach_263
      t.string :tentacgia_263
      t.string :soBM_263
      t.date :ngaymuon_263
      t.date :ngaytra_263
      t.text :ghichu_263

      t.timestamps
    end
  end
end
