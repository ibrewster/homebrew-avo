class Hourssince < Formula
  desc "Functions and subroutines that calculate the number of hours of a given calendar date from Jan. 1 of a reference year"
  homepage "https://github.com/usgs/volcano-ash3d-hourssince"
  url "https://github.com/usgs/volcano-ash3d-hourssince/archive/master.tar.gz"
  version "0.2"  # I had to make up a version number since there are no releases
  sha256 "2a4b1fb6e872ac49e45ccef7758186c8b78c64e71e58cc8dd23dea610ef43793"

  depends_on "gcc" => :build

  def install
    system "make", "all", "FC=/usr/local/bin/gfortran"
    system "make", "install", "INSTALLDIR=#{prefix}"
  end
end
