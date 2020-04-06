# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Nrlmsise00 < Formula
  desc "Stuff needed for avog2s"
  homepage "https://github.com/graziano-giuliani/Meteostuff"
  url "https://github.com/graziano-giuliani/Meteostuff/archive/master.zip"
  version "0.1"
  sha256 "48a8a27efe99dfe43e52d86c2dd60b2ad2ec9bdb1b3aa52bb000ad7dcb41678f"
  revision 1

  depends_on "gcc"
  
  def install
    Dir.chdir("NRLMSIS_F90")
    inreplace "physics_msis.f90", "if ( dabs(v1-d_1) < nearzero .or. alt > zn2(1) .or. &", "if ( dabs(v1-d_1) < nearzero .or. alt >= zn2(1) .or. &"
	  system "make"
	  lib.install Dir["*.a"]
	  include.install Dir["*.mod"]
  end

end
