# Surprise! Not a 404!!! 

I always get frustrated when I paste a helm repository URL into my browser and I get a 404. Hopefully, you'll find this useful. 

!!! warning

    I really do not know what I'm doing. Use at your own risk. 

[![CI](https://github.com/alexdresko/helm-charts/actions/workflows/first.yaml/badge.svg)](https://github.com/alexdresko/helm-charts/actions/workflows/first.yaml) [![pages-build-deployment](https://github.com/alexdresko/helm-charts/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/alexdresko/helm-charts/actions/workflows/pages/pages-build-deployment) [![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/alexdresko)](https://artifacthub.io/packages/search?repo=alexdresko)

## The helm charts! 

Select a chart from the list below to view installation instructions, features, release notes, etc... 

| Chart                     | Description                          | Current App Version     | Current Chart Version     |
| ------------------------- | ------------------------------------ | ----------------------- | ------------------------- |
{%- for entry in index.entries %}
{%- set latest = index.entries[entry][0] %}
| [{{ entry }}]({{ entry }}.md)       | {{ latest.description }}  | {{ latest.appVersion }} | {{ latest.version }}  |
{% endfor %}
