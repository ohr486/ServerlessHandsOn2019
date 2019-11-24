json.extract! task, :id, :title, :desc, :status, :created_at, :updated_at
json.url task_url(task, format: :json)
