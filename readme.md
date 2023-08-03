# S3 Terraform Module - README
## Terraform S3 Module for Static Site Hosting

This Terraform module provides an easy way to create an Amazon S3 bucket for hosting a static website. It includes options for customizing the HTML content, error documents, object expiration, CORS settings, and additional custom headers.

Usage
```
module "s3_static_site" {
  source               = "path/to/s3"
  region               = "us-east-1"  # Change this to your desired AWS region
  bucket_name          = "your-static-site-bucket-name"  # Change this to your desired S3 bucket name
  html_content         = <<-HTML
    <!DOCTYPE html>
    <html>
      <head>
        <title>Your Static Site</title>
      </head>
      <body>
        <h1>Hello, World!</h1>
        <p>This is a sample static site hosted on S3.</p>
      </body>
    </html>
  HTML
  error_document       = "error.html"  # Optional: Set a custom error document (default: error.html)
  object_expiration_days = 90          # Optional: Set the number of days for object expiration (default: 365)
  custom_headers = {                  # Optional: Set custom headers for the S3 objects (default: {})
    "Cache-Control"   = "max-age=86400"
    "Content-Encoding" = "gzip"
  }
}

output "s3_bucket_name" {
  value = module.s3_static_site.s3_bucket_name
}
```

Variables:
- `region` (required): The AWS region where the S3 bucket should be created.
- `bucket_name` (required): The name for the S3 bucket to host the static site.
- `html_content` (required): The HTML content to be uploaded to the S3 bucket.
- `error_document` (optional): The error document page for the S3 bucket (default: "error.html").
- `object_expiration_days` (optional): The number of days after which objects in the S3 bucket will expire (default: 365).
- `custom_headers` (optional): Custom headers to be set on the S3 bucket objects (default: {}).

Outputs:
- `s3_bucket_name`: The name of the created S3 bucket.