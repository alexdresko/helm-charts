## Yay! You found a homer chart that works! 

[![CI](https://github.com/alexdresko/helm-charts/actions/workflows/first.yaml/badge.svg)](https://github.com/alexdresko/helm-charts/actions/workflows/first.yaml) [![pages-build-deployment](https://github.com/alexdresko/helm-charts/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/alexdresko/helm-charts/actions/workflows/pages/pages-build-deployment) [![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/alexdresko)](https://artifacthub.io/packages/search?repo=alexdresko)

I created this helm chart because the k8s-at-home version of the chart was removed when the k8s-at-home project [shut down](https://github.com/k8s-at-home/charts/issues/1761). 

Further, [all of the existing homer charts on Artifact Hub](https://artifacthub.io/packages/search?ts_query_web=homer&sort=relevance&page=1) were simplying trying to re-create the k8s-at-home chart using the still-available common.yaml file from k8s-at-home. 

I wanted a chart that was based on a standard starting point from `helm create homer`, and didn't have any external dependencies. 

None of the currently available charts met all of these requirements. 

And I should also mention that I couldn't get any of the other charts to work well. 

## Want to see something cool? 

See https://alexdresko.github.io/helm-charts for more information. You can also open the repo in a VS Code Dev Container to play with the chart before adding it to your kubernetes cluster. 