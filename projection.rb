class Projection < Formula
  desc "Performs conversions between lat/lon and various projections commonly used in NWP forecast/reanalysis products"
  homepage "https://github.com/usgs/volcano-ash3d-projection"
  url "https://github.com/usgs/volcano-ash3d-projection/archive/master.tar.gz?_=2"
  version "0.2"  # I had to make up a version number since there are no releases
  sha256 "49959024fea65be92c4a206bf9650ec3ec1045c1c50da6bc892f6e4040517bee"

  depends_on "gcc" => :build

  def install
    system "make", "all", "FC=/usr/local/bin/gfortran"
    system "make", "install", "INSTALLDIR=#{prefix}"
  end
end
