#
# ArangoDBInterface: An interface to ArangoDB
#
# This file is a script which compiles the package manual.
#
if fail = LoadPackage("AutoDoc", "2019.05.20") then
    
    Error("AutoDoc version 2019.05.20 or newer is required.");
    
fi;

AutoDoc( rec(
    scaffold := rec(
        entities := [ "homalg", "CAP" ],
    ),
    autodoc := rec(
        files := [ "doc/Doc.autodoc" ],
    ),
    extract_examples := rec( units := "Single" ),
) );

QUIT;
