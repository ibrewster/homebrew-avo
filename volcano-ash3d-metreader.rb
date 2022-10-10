class VolcanoAsh3dMetreader < Formula
  desc "USGS Volcano Ash3d MetReader"
  homepage "https://github.com/ibrewster/volcano-ash3d-metreader"
  url "https://github.com/ibrewster/volcano-ash3d-metreader/archive/master.zip?_=0.4"
  version "0.4"
  sha256 "d5372fd81c6850705e74d86d3a44e6f1e7a8ea0b056f00786cd550eae68544b0"
  revision 4

  depends_on "gcc"
  depends_on "autoconf"
  depends_on "netcdf"
  depends_on "netcdf-fortran"
  depends_on "eccodes"
  depends_on "ibrewster/avo/projection"
  depends_on "ibrewster/avo/hourssince"
  depends_on "ibrewster/avo/projection"
  

  def install
    system "autoconf"
    system "./configure", "--prefix=#{prefix}"
	system "make"
	system "make","install"
  end

end
