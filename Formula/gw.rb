class Gw < Formula
  desc "Git worktree helper for managing parallel sandboxes"
  homepage "https://github.com/nikhilshinday/gw"
  url "https://github.com/nikhilshinday/gw/archive/932c6d0.tar.gz"
  sha256 "62ca2437a6748e2309d084fa941fe4aeb08e01ecfe99a8fa71c686095b325ef6"
  version "0.1.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args, "--locked"
  end

  test do
    system "#{bin}/gw", "--help"
  end
end
