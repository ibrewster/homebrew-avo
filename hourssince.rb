class Hourssince < Formula
  desc "Functions and subroutines that calculate the number of hours of a given calendar date from Jan. 1 of a reference year"
  homepage "https://github.com/usgs/volcano-ash3d-hourssince"
  url "https://github.com/ibrewster/volcano-ash3d-hourssince/archive/master.tar.gz"
  version "0.3"  # I had to make up a version number since there are no releases
  sha256 "22ff5041468bc5404f33f41974e9f3fc48d51742366bedcd9f17d399d0b2a004"

  depends_on "gcc" => :build

  def install
    system "autoconf"
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end
end
