class Hourssince < Formula
  desc "Functions and subroutines that calculate the number of hours of a given calendar date from Jan. 1 of a reference year"
  homepage "https://github.com/usgs/volcano-ash3d-hourssince"
  url "https://github.com/usgs/volcano-ash3d-hourssince/archive/master.tar.gz"
  version "0.1"  # I had to make up a version number since there are no releases
  sha256 "56e42abc1431239b1b772f8e6eee6d43386b114d2e00400548e9ff9a58dfcaf3"

  depends_on "gcc" => :build

  def install
    system "make", "all", "FC=/usr/local/bin/gfortran"
    system "make", "install", "INSTALLDIR=#{prefix}"
  end
end
