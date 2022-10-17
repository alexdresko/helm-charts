# Surprise! Not a 404!!! 

I always get frustrated when I paste a helm repository URL into my browser and I get a 404. Hopefully, you'll find this useful. 

!!! warning

    I really do not know what I'm doing. Use at your own risk. 

## The helm charts! 

{% for entry in index.entries %}
### {{ entry }}

{% for ss in index.entries[entry] %}
#### Chart version {{ ss.version }}, App Version {{ ss.appVersion }}

{{ ss.description }}
=== "Command line"

    ``` bash title="Add the alexdresko helm repository" linenums="1"
    helm repo add alexdresko https://alexdresko.github.io/helm-charts/
    ```

    ``` bash title="Install the helm chart" linenums="1"
    helm install my-{{ ss.name }} alexdresko/{{ ss.name }} --version {{ ss.version }}

    // OR....

    helm update --install my-{{ ss.name }} alexdresko/{{ ss.name }} --version {{ ss.version }}
    ```

=== "As a sub chart"

    Add this to your `chart.yaml`

    ``` yaml
    dependencies:
      - name: {{ ss.name }}
        version: {{ ss.version }}
        repository: https://alexdresko.github.io/helm-charts/
        # For more information: https://alexdresko.github.io/helm-charts/
    ```  

You can also download `{{ ss.name }}-{{ ss.version }}.tgz` directly using [this link]({{ ss.name }}-{{ ss.version }}.tgz).

{% endfor %}
{% endfor %}
