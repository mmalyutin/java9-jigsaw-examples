. ../env.sh

$JAVA_HOME/bin/java --module-path mlib -m modmain/pkgmain.Main | myecho
$JAVA_HOME/bin/java --module-path mlib -m modmainbehindfacade/pkgmainbehindfacade.MainBehindFacade | myecho
