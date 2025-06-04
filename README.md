# Rails Test App

## Deployment to Render

This Rails application is configured to deploy to Render using PostgreSQL database.

### Prerequisites

- Ruby 3.x
- Rails 8.x
- PostgreSQL (for production)

### Local Development

```bash
bundle install
rails server
```

### Deployment to Render

1. **Connect your GitHub repository to Render**
2. **Create a new Web Service**
3. **Use the following settings:**

   - Build Command: `./render-build.sh`
   - Start Command: `bundle exec puma -C config/puma.rb`
   - Environment: `production`

4. **Environment Variables to set in Render:**

   - `RAILS_MASTER_KEY`: Copy from `config/master.key`
   - `DATABASE_URL`: Will be automatically set when you connect PostgreSQL
   - Other variables are configured in `render.yaml`

5. **Create PostgreSQL Database:**
   - Go to Render Dashboard
   - Create a new PostgreSQL database
   - Connect it to your web service

### Using render.yaml (Recommended)

You can also use the included `render.yaml` file for automatic deployment configuration. Just connect your repository and Render will use this configuration automatically.

### Health Check

The app includes a health check endpoint at `/up` that Render will use to verify the deployment.
