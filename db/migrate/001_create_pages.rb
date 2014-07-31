Sequel.migration do
  up do
    create_table :pages do
      primary_key :id
      column :data, :json, default: '{}'
      String :uri, unique: true, null: false
      String :title
      String :template
      DateTime :created_at
      DateTime :updated_at
    end
  end

  down do
    drop_table :pages
  end
end
