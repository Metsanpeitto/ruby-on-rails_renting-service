Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://dry-peak-20261.herokuapp.com/', 'http://localhost:3001', 'http://127.0.0.1:3001'
    resource '*', headers: %w[Authorization],
                  expose: %w[Authorization], methods: :any
  end
end
