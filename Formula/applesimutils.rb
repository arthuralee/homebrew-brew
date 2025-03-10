# typed: false
# frozen_string_literal: true

class Applesimutils < Formula
  desc "Apple simulator utilities"
  homepage "https://github.com/wix/AppleSimulatorUtils"
  url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9.6/AppleSimulatorUtils-0.9.6.tar.gz'
  sha256 '631afcd75af26091fb37f5fbd2fe510d2dc780f4b33628fe2bf1a36ab0a7308b'
  head "https://github.com/wix/AppleSimulatorUtils.git"

  bottle do
    root_url 'https://github.com/wix/AppleSimulatorUtils/releases/download/0.9.6'

    sha256 arm64_big_sur: "0abd6a10f0fa5f7008799c06c59836b690ca2707bf9cb8a62095ecbd87363e6d"
    sha256 catalina:      "0abd6a10f0fa5f7008799c06c59836b690ca2707bf9cb8a62095ecbd87363e6d"
    sha256 mojave:        "0abd6a10f0fa5f7008799c06c59836b690ca2707bf9cb8a62095ecbd87363e6d"
    sha256 high_sierra:   "0abd6a10f0fa5f7008799c06c59836b690ca2707bf9cb8a62095ecbd87363e6d"
    sha256 sierra:        "0abd6a10f0fa5f7008799c06c59836b690ca2707bf9cb8a62095ecbd87363e6d"
    sha256 big_sur:       "0abd6a10f0fa5f7008799c06c59836b690ca2707bf9cb8a62095ecbd87363e6d"
  end

  depends_on xcode: ["8.0", :build]

  def install
    system "./buildForBrew.sh", prefix
  end

  test do
    system "#{bin}/applesimutils", "--help"
  end
end
