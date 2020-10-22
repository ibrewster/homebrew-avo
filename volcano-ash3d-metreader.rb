class VolcanoAsh3dMetreader < Formula
  desc "USGS Volcano Ash3d MetReader"
  homepage "https://github.com/ibrewster/volcano-ash3d-metreader"
  url "https://github.com/ibrewster/volcano-ash3d-metreader/archive/master.zip?_=2"
  version "0.2"
  sha256 "c00a2a39e82e507165bae252031e92ed1fa6599510aa89535924c9107678f6d9"
  revision 2

  depends_on "gcc"
  depends_on "autoconf"
  depends_on "netcdf"
  depends_on "eccodes"
  depends_on "ibrewster/avo/hourssince"
  depends_on "ibrewster/avo/projection"
  

  def install
    system "autoconf"
    system "./configure", "--prefix=#{prefix}"
	system "make"
	system "make","install"
  end

end
