class Avog2s < Formula
  desc "USGS Volcano Avog2s"
  homepage "https://github.com/ibrewster/volcano-avog2s"
  url "https://github.com/ibrewster/volcano-avog2s/archive/master.zip?version=0.1.3"
  version "0.1.3"
  sha256 "037a12928450f11eaa687022162369d9590f760d26fb7a8eaa9d4e420647ea27"

  depends_on "gcc"
  depends_on "autoconf"
  depends_on "netcdf"
  depends_on "eccodes"
  depends_on "openblas"
  depends_on "shtools/shtools/shtools"
  depends_on "ibrewster/avo/hourssince"
  depends_on "ibrewster/avo/projection"
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

  def caveats
    <<~EOS
      To use the HWM14 library with AVOG2S, you will need to add the following
      line to your `~/.bash_profile` or similar:
	  
      `export HWMPATH=#{prefix}/ExternalData/HWM14`
	  
    EOS
  end

end
