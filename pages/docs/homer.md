## Introduction

The main reason I created this homer helm chart is because the k8s-at-home version of the helm chart was removed when [k8s-at-home shut down](https://github.com/k8s-at-home/charts/issues/1761). There are a few other homer helm charts on artifact hub, but they either don’t work, or they’re trying their best to make k8s-at-home chart work again. I don’t want my chart to rely on the k8s-at-home common.yaml file. I want my homer helm chart to not have any external dependencies, and I want it to be based on a `helm create homer` starting point.

### Useful links

* [bastienwirtz/homer: A very simple static homepage for your server.](https://github.com/bastienwirtz/homer)
  
    This is the GitHub repository for Homer and the docker image that runs it

* [b4bz/homer - Docker Image | Docker Hub](https://hub.docker.com/r/b4bz/homer)

    Here's the Docker image on the Docker Hub
 
* [This Homer chart on Artifac HUB](https://artifacthub.io/packages/helm/alexdresko/homer)

## Latest Release
{% set latest = index.entries.homer | first %}

#### Chart version {{ latest.version }}, App Version {{ latest.appVersion }}

{{ latest.description }}
=== "Command line"

    ``` bash title="Add the alexdresko helm repository" linenums="1"
    helm repo add alexdresko https://alexdresko.github.io/helm-charts/
    ```

    ``` bash title="Install the helm chart" linenums="1"
    helm install my-{{ latest.name }} alexdresko/{{ latest.name }} --version {{ latest.version }}

    // OR....

    helm update --install my-{{ latest.name }} alexdresko/{{ latest.name }} --version {{ latest.version }}
    ```

=== "As a sub chart"

    Add this to your `chart.yaml`

    ``` yaml
    dependencies:
      - name: {{ latest.name }}
        version: {{ latest.version }}
        repository: https://alexdresko.github.io/helm-charts/
        # For more information: https://alexdresko.github.io/helm-charts/
    ```  

You can also download `{{ latest.name }}-{{ latest.version }}.tgz` directly using [this link]({{ latest.name }}-{{ latest.version }}.tgz).

## Previous releases

Here are the 5 most recent releases:

{% set recent = index.entries.homer %}
| Chart                     | Description                          | Current App Version     | Current Chart Version     |
| ------------------------- | ------------------------------------ | ----------------------- | ------------------------- |
{%- for entry in recent %}
{%- if loop.index <= 5 %}
| [{{ latest.name }}]({{ latest.name }}-{{ latest.version }}.tgz)      | {{ entry.description }}  | {{ entry.appVersion }} | {{ entry.version }}  |
{%- endif %}
{%- endfor %}