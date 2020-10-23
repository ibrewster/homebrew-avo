class VolcanoAsh3dMetreader < Formula
  desc "USGS Volcano Ash3d MetReader"
  homepage "https://github.com/ibrewster/volcano-ash3d-metreader"
  url "https://github.com/ibrewster/volcano-ash3d-metreader/archive/master.zip?_=32"
  version "0.3"
  sha256 "22145880563e9a316d445025d8a14470612ae31320c35b7a47f98bdee6af3e41"
  revision 2

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
