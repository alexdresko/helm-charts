## What lies ahead?

I don't know. This is just a weekend project. 

- [x] Initial site launch and first helm chart (homer)
- [x] Rebuild the Dev Container and make sure everything still works. I haven't done this in a while. 
    _10/16/2022 9:04:11 PM by AD:   This is slick._
- [x] Use a GH action and `mkdocs gh-pages`? I didn't know about this when I started, and it seems to be the way to go. 
  * 10/18/2022 10:21:00 PM by AD: Made some progress on this. Looks to be really easy. I inadvertently made things easy on myself with the `npm run post-create` script. 
  * 10/18/2022 11:14:03 PM by AD: This should work. 
- [x] Figure out why I have duplicates in index.yaml
    * I think I need to automate the build first, as I feel that might affect how I deal with the index.yaml and .tgz files. 
    * I don't really understand how the "helm repo index" feature works... It seems to pick up on other index.yaml or .tgz files before outputing the final index.yaml. I haven't figured out exactly how that was happening, but I've managed to stop it for now. 
    * 10/18/2022 11:49:13 PM by AD: DONE! 
- [x] Figure out how to get VSC to let me paste images into .md files. I think I'm having trouble right now because I'm using a Dev Container. 
- [x] Display more package information in the listing
- [ ] Figure out how to limit the listing to only show a few versions by default, and allow expanding all available versions. 
- [ ] Make the homer helm chart actually do something. At this point, all I've done is `helm create homer` because I've been having too much fun with mkdocs and material. 
- [ ] Convert this all into a thing that other people can use to surface their own charts
- [ ] Clean up the index.yaml file from all the experiments I've been doing
- [ ] Publish the charts to https://artifacthub.io/

