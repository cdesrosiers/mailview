class CreateMailviewMails < ActiveRecord::Migration
  def change
    create_table :mailview_mails do |t|
      t.text :html

      t.timestamps
    end
  end
end
