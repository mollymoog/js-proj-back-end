class CreateFreeTrials < ActiveRecord::Migration[6.0]
  def change
    create_table :free_trials do |t|
      t.string :service
      t.string :link
      t.string :username
      t.string :password
      t.datetime :expiration
      t.boolean :active
      t.belongs_to :family, null: false, foreign_key: true

      t.timestamps
    end
  end
end
