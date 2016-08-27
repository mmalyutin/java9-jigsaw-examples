module modmain {
    requires slf4j.api;		// note: must not be called slf4j-api (no '-' allowed in module names)
    requires modb;

    // needed so that we can all the Main class via reflection (like e.g. in an "appserver")
    exports pkgmain;
}