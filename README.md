# homebrew-repo

This homebrew repository is the home of writer-toolbox.

# Publishing a new release

## Prerequisites

Make sure that the release has been tagged in git@github.com:Infomaker/writer-toolbox.git

## Edit the file

Start by calculating the SHA-256 sum of the new release. Replace `2.11` (i.e. the latest tag in git) with the new version:

    $ curl -sL https://github.com/Infomaker/writer-toolbox/archive/2.11.tar.gz | shasum -a 256
    faf5e382f544a1add6dd26aef13cc60f7e2799da5ac28e2bbafdc501a45f66fe  -
    
Next, edit the `writer-toolbox.rb` file.

In `url`, replace the version info.
In `sha256`, enter the new shasum above.
in `main.appVersion`, replace with new version

## Make a new release

    $ git add .
    $ git commit -m "Release [new release]"
    $ git tag [new release]
    $ git push
    $ git push --tags