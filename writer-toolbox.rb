# Documentation: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class WriterToolbox < Formula
  desc "Writer toolbox "
  homepage "https://github.com/Infomaker/writer-toolbox"
  url "https://github.com/Infomaker/writer-toolbox/archive/2.2.1.1.tar.gz"
  sha256 "47acdeea513cda7fffa7929c2f691daaa108f11775addf9b99a65fbe6b46aa0b"

  depends_on "go" => :build

  def install
	  ENV["GOPATH"] = buildpath

      system "go", "get", "github.com/aws/aws-sdk-go"

 	  system "go", "build", "-o", "writer-tool", "-ldflags", "-X main.appVersion=2.2.1.1"

	  bin.install "writer-tool"
	  bash_completion.install "bash-completion/writer-tool"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test writer-toolbox`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/writer-tool"
  end
end
