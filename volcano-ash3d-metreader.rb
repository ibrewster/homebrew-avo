class VolcanoAsh3dMetreader < Formula
  desc "USGS Volcano Ash3d MetReader"
  homepage "https://github.com/ibrewster/volcano-ash3d-metreader"
  url "https://github.com/ibrewster/volcano-ash3d-metreader/archive/master.zip?_=3"
  version "0.3"
  sha256 "9e428d0a7fc4a0e431e288581c06230a63e9d1a0e7bc02b5185fcd6477af042a"
  revision 1

  depends_on "gcc"
  depends_on "autoconf"
  depends_on "netcdf"
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
