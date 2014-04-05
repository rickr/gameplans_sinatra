Sequel.migration do
  up do
    create_table(:users) do
      primary_key :id

      String :name, :null=>false, :unique => true
      Int :project_id, :null=>false

      String :created_at, :null => false, :default => Sequel.lit("DATETIME(CURRENT_TIMESTAMP)")
      String :last_modified, :null => false, :default =>  Sequel.lit("DATETIME(CURRENT_TIMESTAMP)")
    end
  end

  down do
    drop_table(:users)
  end
end
