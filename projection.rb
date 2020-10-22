class Projection < Formula
  desc "Performs conversions between lat/lon and various projections commonly used in NWP forecast/reanalysis products"
  homepage "https://github.com/usgs/volcano-ash3d-projection"
  url "https://github.com/ibrewster/volcano-ash3d-projection/archive/master.tar.gz?_=3"
  version "0.3"  # I had to make up a version number since there are no releases
  sha256 "173b0d4692001da97b3fd4da33d29c9e751f546f5eb65f1c466395457714905d"
  revision 2

  depends_on "gcc" => :build
  depends_on "autoconf"

  def install
    system "autoconf"
    system "./configure", "--prefix=#{prefix}"
    system "make", "all"
    system "make", "install"
  end
end
