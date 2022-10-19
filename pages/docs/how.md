# Here's how I did it

I did some googling and couldn't find what I was looking for. [Mkdocs](https://www.mkdocs.org/) + [Material](https://squidfunk.github.io/mkdocs-material) seemed to be able to support what I wanted to do, but I had never used either before. Turns out, it's pretty cool. 

So I told mkdocs to parse the index.yaml and spit out all of the charts and versions supported by the repostory URL. The site is generated automatically every time I release a new chart, so it's always up to date. 

It's kind of like a mini https://artifacthub.io. 

## Try it yourself

If you have the VS Code Dev Containers extension, you can open the repo in the dev container and immediately use the npm package.json scripts to manage the site. Then just commit+push, and the site is live. 

Also, I really love Dev Containers. 

Here's what the workflow looks like (This is just me playing again, his time with [mermaid charts](https://squidfunk.github.io/mkdocs-material/reference/diagrams/#using-flowcharts) :smile:)

``` mermaid
graph TD
  A[Open the repo as a Dev Container] --> C[Open browser to http://127.0.0.1:8000/helm-charts];
  C --> D[Make changes] --> E[Test changes] --> F{Done?} -->|Yes| G[commit and push] --> I[Verify everything looks good and works in Github]
  F -->|No| D
```