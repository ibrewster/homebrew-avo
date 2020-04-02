# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class VolcanoAsh3dMetreader < Formula
  desc "USGS Volcano Ash3d MetReader"
  homepage "https://github.com/ibrewster/volcano-ash3d-metreader"
  url "https://github.com/ibrewster/volcano-ash3d-metreader/archive/master.zip"
  version "0.1"
  sha256 "84bed8418791e35be84cbb5d4282da18d9c48887b7fae3109efbbe7a8a6ada87"

  depends_on :gcc
  depends_on "netcdf"
  depends_on "eccodes"
  depends_on "/shtools/shtools/shtools"
  depends_on "liamtoney/avog2s/hourssince"
  depends_on "liamtoney/avog2s/projection"
  

  def install
    system "autoconf"
    system "./configure", "--prefix=#{prefix}"
	system "make",
	system "make","install"
  end

end
