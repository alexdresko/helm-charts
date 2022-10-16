# Surprise! Not a 404!!! 

I always get frustrated when I paste a helm repository URL into my browser and I get a 404. So I told mkdocs to parse the index.yaml and spit out all of the charts and versions supported by the repostory URL. If you have the VS Code Dev Containers extension, you can open the repo in the dev container and immediately use the npm package.json scripts to manage the site. Then just commit+push, and the site is live. 

I really love Dev Containers. 

## The helm charts! 

{{ customer.name }}
<a href="{{ customer.web }}">{{ index.apiVersion }}</a>

{% for entry in index.entries %}
  <h2>{{ entry }}</h2>
  <ul>
  {% for ss in index.entries[entry] %}
  <li>{{ ss.appVersion }} </li>
  {% endfor %}
  </ul>
{% endfor %}
