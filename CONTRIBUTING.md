# Contributing

We'd love to accept your patches and contributions to this project.

## Development Environment

If you are contributing AIP content (rather than code) and want to be able to
view it in your browser, the easiest way to do so is to run the provided
development server.

Clone this repo, and run:

```
bash serve_without_docker.sh
```

The development server uses port 4000; point your web browser to
`http://localhost:4000`, and you should see the site.

### Hot reloading

The development server recognizes when files change (including static files)
and local changes will be automatically reflected in your browser upon reload.

## Code reviews

All submissions, including submissions by project members, require review. We
use BitBucket pull requests in this repository for this purpose.

## Formatting

We use [prettier][4] to format Markdown, JavaScript, and (most) HTML, in order
to ensure a consistent style throughout our source. You can add prettier as a
plugin in most development environments.

[1]: https://pages.github.com/
[2]: https://github.com/aip-dev/site-generator
[3]: https://docker.com/
[4]: https://prettier.io/
[5]: https://github.com/pyenv/pyenv
[6]: https://docs.python.org/3/library/venv.html
