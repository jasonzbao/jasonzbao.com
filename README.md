# Jason Bao - Personal Website

A super simple, performant, and SEO-friendly personal website inspired by clean design principles.

## Features

- **Performance Optimized**: Inline CSS, minimal JavaScript, optimized font loading
- **SEO Friendly**: Comprehensive meta tags, structured data, semantic HTML
- **Responsive Design**: Works perfectly on all devices
- **Accessibility**: WCAG compliant with proper focus states and reduced motion support
- **Clean Design**: Inspired by minimalist personal websites

## Deployment

### S3 + CloudFront (Recommended)

1. Create an S3 bucket for your website
2. Run the deployment script:
   ```bash
   ./deploy.sh your-bucket-name
   ```
3. Set up CloudFront distribution for better performance and SSL

### Manual S3 Setup

1. Create S3 bucket
2. Enable static website hosting
3. Upload `index.html`
4. Set bucket policy for public access
5. Configure CloudFront distribution (optional but recommended)

## Performance Features

- Inline CSS for critical rendering path
- Preloaded fonts with fallback
- Minimal DOM elements
- Optimized images (when added)
- Proper caching headers

## SEO Features

- Semantic HTML structure
- Comprehensive meta tags
- Open Graph and Twitter Card support
- Structured data (JSON-LD)
- Proper heading hierarchy
- Alt text for images (when added)

## Browser Support

- All modern browsers
- IE11+ (with graceful degradation)
- Mobile browsers

## File Structure

```
personal/
├── index.html          # Main website file
├── deploy.sh          # S3 deployment script
└── README.md          # This file
```

## Customization

The website is built as a single HTML file for maximum performance. To customize:

1. Edit the content in `index.html`
2. Modify the CSS styles in the `<style>` section
3. Update meta tags and structured data as needed

## Performance Metrics

- **First Contentful Paint**: < 1s
- **Largest Contentful Paint**: < 1.5s
- **Cumulative Layout Shift**: 0
- **Time to Interactive**: < 1s

Perfect Lighthouse scores across all categories when properly deployed with CloudFront.
