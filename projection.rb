class Projection < Formula
  desc "Performs conversions between lat/lon and various projections commonly used in NWP forecast/reanalysis products"
  homepage "https://github.com/usgs/volcano-ash3d-projection"
  url "https://github.com/usgs/volcano-ash3d-projection/archive/master.tar.gz"
  version "0.1"  # I had to make up a version number since there are no releases
  sha256 "5cc841902aa3050b20cf176c8eedb74810aff39ed8a9e038cc337b10e374cd13"

  depends_on "gcc" => :build

  def install
    system "make", "all", "FC=/usr/local/bin/gfortran"
    system "make", "install", "INSTALLDIR=#{prefix}"
  end
end
