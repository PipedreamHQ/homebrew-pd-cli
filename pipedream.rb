class Pipedream < Formula
    desc "CLI utility for Pipedream"
    homepage "https://pipedream.com"

    on_macos do
      url "https://cli.pipedream.com/darwin/amd64/0.2.5/pd.zip"
      sha256 "bd1a23ce2428c0c2e35eb80cf69a6069f70d11f1389a9656a27f8a7c1bdf5f9f"    
    end

    on_linux do
      url "https://cli.pipedream.com/linux/amd64/0.2.5/pd.zip"
      sha256 "50435e78aa93db6490896bea93597f0f0a02a619a9cd6404e47cc757fc1e6279"    
    end

    def install
      bin.install "pd"
    end  

    def caveats; <<~EOS
      ❤ Thanks for installing the Pipedream CLI! If this is your first time using the CLI, be sure to run `pd login` first.
    EOS
    end
  
    test do
      system "#{bin}/pd", "--version"
    end
  end
  