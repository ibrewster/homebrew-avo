class Avog2s < Formula
  desc "USGS Volcano Ash3d"
  homepage "https://github.com/ibrewster/volcano-avog2s"
  url "https://github.com/ibrewster/volcano-avog2s/archive/master.zip"
  version "0.1.1"
  sha256 "c9b32c23e0c903c8266e2b3f81db2cc3b5f909b8a2272fd1611fc0fa0624b22e"

  depends_on "gcc"
  depends_on "autoconf"
  depends_on "netcdf"
  depends_on "eccodes"
  depends_on "shtools/shtools/shtools"
  depends_on "liamtoney/avog2s/hourssince"
  depends_on "liamtoney/avog2s/projection"
  depends_on "ibrewster/avo/volcano-ash3d-metreader"
  depends_on "ibrewster/avo/NRLMSISE-00"
  
  resource "hwm_14" do
     url 'https://agupubs.onlinelibrary.wiley.com/action/downloadSupplement?doi=10.1002%2F2014EA000089&file=ess224-sup-0002-supinfo.tgz',
     cookies: {
                 'somecookie' => 'somevalue',
               }
     sha256 "4de451beeadef7b3ec3aa5b91129ea98866b9e7156cecf4be1343c33a6f57978"
  end

  def install
    Dir.chdir("src")
    system "autoconf"
    system "./configure", "--prefix=#{prefix}"
    buildDir=Dir.pwd()
    resource("hwm_14").stage{
    	system "cp","#{buildDir}/ExternalDataSoftware/makefile_HWM14", "makefile"
    	system "make"
    	system "make","install"
    }
	system "make"
	system "make","install"
  end

end
