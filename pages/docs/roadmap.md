## What lies ahead?

I don't know. This is just a weekend project. 

- [ ] Record a demo to show how to open the repo in a VS Code Dev Container, and showcase some of the things you can do with that. 
- [ ] Convert this all into a thing that other people can use to surface their own charts. There's obviously some overlap between what I've done and [helm-docs](https://github.com/norwoodj/helm-docs). 
- [ ] I like the "auto-detection of field descriptions from comments" feature of [helm-docs](https://github.com/norwoodj/helm-docs)
- [ ] Add datree? I don't even know if that makes sense. 
- [ ] I think it would be cool if I had a github action that would kick off when depedent docker images and helm charts were updated, and then automatically update those depedencies in my charts. This should produce beta/canary helm charts for people who want the latest and greatest, but I think I still need to manually promote dependencies after testing. 
- [ ] It's possible that the github CI builds could install and test the helm charts before allowing them to be published. 
- [ ] I'd like for each release to include release notes. I don't know if I want to auto-generate them from commits ([?](https://github.com/conventional-changelog/conventional-changelog) or [?](https://github.com/ariatemplates/git-release-notes)), or if I want to create them manually. 