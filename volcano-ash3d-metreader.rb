class VolcanoAsh3dMetreader < Formula
  desc "USGS Volcano Ash3d MetReader"
  homepage "https://github.com/ibrewster/volcano-ash3d-metreader"
  url "https://github.com/ibrewster/volcano-ash3d-metreader/archive/master.zip?_=33"
  version "0.3"
  sha256 "ddce8abcc2dc765791b48260b345d56c7acb473dede0c69e3f8635f1dcc162c7"
  revision 3

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
