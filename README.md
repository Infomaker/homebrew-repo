# homebrew-repo

This homebrew repository is the home of writer-toolbox.

# Publishing a new release

## Prerequisites

Make sure that the release has been tagged in git@github.com:Infomaker/writer-toolbox.git

## Edit the file

Start by calculating the SHA-256 sum of the new release. Replace `2.11` (i.e. the latest tag in git) with the new version:

    $ curl -sL https://github.com/Infomaker/writer-toolbox/archive/2.11.3.tar.gz | shasum -a 256
    aa6ae625471ec4f5bd66c51c001b062d4762db0a9e35caa07517a7ecb190ef43  -

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