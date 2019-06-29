Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins /localhost\:\d+/, /ak-toriki-frontend\.herokuapp\.com/
      origins /localhost\:\d+/, /ak-toriki-nuxt-frontend\.herokuapp\.com/
      origins /localhost\:\d+/, /ak-toriki-nuxt-frontend-stg\.herokuapp\.com/

      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head]
    end
end