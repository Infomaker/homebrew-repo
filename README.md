# homebrew-repo

This homebrew repository is the home of writer-toolbox.

# Publishing a new release

## Prerequisites

Make sure that the release has been tagged in git@github.com:Infomaker/writer-toolbox.git

## Edit the file

Start by calculating the SHA-256 sum of the new release. Replace `2.11` (i.e. the latest tag in git) with the new version:

    $ curl -sL https://github.com/Infomaker/writer-toolbox/archive/2.11.4.tar.gz | shasum -a 256
    5e9bc40a33575cc3724fd4ae116646876880b12a6a0fce55e07f798239ffc02f  -

Next, edit the `writer-toolbox.rb` file.

In `url`, replace the version info.
In `sha256`, enter the new shasum above.
in `main.appVersion`, replace with new version

## Make a new release
Follow principle of [gitflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow) when creating a new release.