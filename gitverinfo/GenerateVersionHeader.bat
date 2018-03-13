REM https://stackoverflow.com/a/2340018
for /f %%i in ('git rev-parse HEAD') do set @GitCommitHash=%%i
for /f %%i in ('git rev-parse --abbrev-ref HEAD') do set @GitBranch=%%i
ECHO #pragma once                         > VersionHeader.h
ECHO #ifndef VersionHeader_H_Included     >> VersionHeader.h
ECHO #define VersionHeader_H_Included     >> VersionHeader.h


ECHO #define GIT_BRANCH "%@GitBranch%"        >> VersionHeader.h
ECHO #define GIT_COMMIT_HASH "%@GitCommitHash%"   >> VersionHeader.h

ECHO #endif                               >> VersionHeader.h

