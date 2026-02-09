class Gw < Formula
  desc "Git worktree helper for managing parallel sandboxes"
  homepage "https://github.com/nikhilshinday/gw"
  url "https://github.com/nikhilshinday/gw/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "49f397216b6140bdffd381962bbcc7182be12b6a971d3fc278085805bed21a85"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args, "--locked"
  end

  test do
    system bin/"gw", "--help"
  end
end
