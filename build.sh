#!/bin/bash

if [ -d "ndll" ]; then
    rm -r ndll
fi
if [ -d "project/obj" ]; then
    rm -r project/obj
fi

(cd project && haxelib run hxcpp Build.xml -Diphoneos -DHXCPP_ARM   -DHXCPP_CLANG -DOBJC_ARC $1)
(cd project && haxelib run hxcpp Build.xml -Diphoneos -DHXCPP_ARMV7 -DHXCPP_CLANG -DOBJC_ARC $1)
(cd project && haxelib run hxcpp Build.xml -Diphoneos -DHXCPP_ARM64 -DHXCPP_CLANG -DOBJC_ARC $1)
(cd project && haxelib run hxcpp Build.xml -Diphonesim -DHXCPP_CPP11 -DHXCPP_CLANG -DOBJC_ARC $1)
(cd project && haxelib run hxcpp Build.xml -Diphonesim -DHXCPP_CPP11 -DHXCPP_M64 -DHXCPP_CLANG -DOBJC_ARC $1)
(cd project && haxelib run hxcpp Build.xml -Dandroid -DHXCPP_CPP11 -DHXCPP_ARM $1)
(cd project && haxelib run hxcpp Build.xml -Dandroid -DHXCPP_CPP11 -DHXCPP_ARMV7 $1)
(cd project && haxelib run hxcpp Build.xml -Dandroid -DHXCPP_CPP11 -DHXCPP_X86 $1)
