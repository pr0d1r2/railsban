# frozen_string_literal: true

class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table(:cards) do |t|
      t.string(:name)
      t.text(:description)

      t.timestamps
    end
  end
end
