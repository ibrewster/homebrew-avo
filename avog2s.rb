class Avog2s < Formula
  desc "USGS Volcano Avog2s"
  homepage "https://github.com/ibrewster/volcano-avog2s"
  url "https://github.com/ibrewster/volcano-avog2s/archive/master.zip?version=0.1.6"
  version "0.1.6"
  sha256 "0b7aab5cd057496975be99fa53294a1689b8813a7392a26e24a596beb0de9e5f"

  depends_on "gcc"
  depends_on "autoconf"
  depends_on "netcdf"
  depends_on "netcdf-fortran"
  depends_on "eccodes"
  depends_on "openblas"
  depends_on "shtools"
  depends_on "ibrewster/avo/hourssince"
  depends_on "ibrewster/avo/projection"
  depends_on "ibrewster/avo/volcano-ash3d-metreader"
  depends_on "ibrewster/avo/NRLMSISE-00"
  
  resource "hwm_14" do
     url 'https://github.com/ibrewster/homebrew-avo/blob/f84e198304bdd1b4fa9c23bd2f2e0ca47994692e/ess224-sup-0002-supinfo.tgz?raw=true'
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

  def caveats
    <<~EOS
      To use the HWM14 library with AVOG2S, you will need to add the following
      line to your `~/.bash_profile` or similar:
	  
      `export HWMPATH=#{prefix}/ExternalData/HWM14`
	  
    EOS
  end

end
