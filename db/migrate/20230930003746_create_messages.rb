# frozen_string_literal: true

# db/migrate/20230930003746_create_messages.rb
class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :greeting

      t.timestamps
    end
  end
end
