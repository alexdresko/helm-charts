pip install mkdocs
pip install mkdocs-material
pip install mkdocs-redirects
pip install mkdocs-markdownextradata-plugin
mkdir pages/_data/
cp /workspaces/helm-charts/.devcontainer/.bashrc ~/.bashrc
source ~/.bashrc
minikube start
minikube addons enable ingress