class CreateJobPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :job_posts do |t|
      t.string :title
      t.text :description
      t.integer :experience_min
      t.integer :experience_max
      t.string :education_required
      t.string :education_preferred
      t.string :compensation_min
      t.string :compensation_max
      t.text :benefits
      t.string :location
      t.datetime :application_deadline
      t.string :contact_for_role
      t.text :additional_data

      t.timestamps
    end
  end
end
