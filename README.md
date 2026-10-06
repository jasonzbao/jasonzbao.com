# Jason Bao - Personal Website

Source for [jasonzbao.com](https://jasonzbao.com): a single static `index.html` with inline CSS and no JavaScript.

## Deployment

Hosted on a Cloudflare Worker (`jasonzbao-com`) connected to this repo. Every push to `main` builds and deploys automatically (~30s); watch it under **Workers & Pages → jasonzbao-com → Deployments**. Other branches don't deploy (preview builds are off).

The build command only copies `index.html` into `public/`. If you add files (images, `robots.txt`, etc.), update the build command under **Settings → Build**, e.g. `cp -r index.html img public/`, or they won't be served.

`www.jasonzbao.com` should 301 to the apex via a Cloudflare Redirect Rule ("Redirect from WWW to root").

## Notes

- Inline CSS, system font stack, no external requests: the whole page is one small HTML response.
- SEO: canonical URL, Open Graph/Twitter tags, and JSON-LD `Person` structured data in `<head>`.
- Favicon is an inline SVG data URI, so no extra file is needed.
