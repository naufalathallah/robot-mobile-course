notes:

pake tag

    [Tags]    api/mobile/web


robot -i demo tests
robot -i demoANDdemo2 tests
robot -i demoORdemo2 tests


randomize
robot --randomize ALL tests

log level
robot --loglevel TRACE tests
robot --loglevel DEBUG tests

robot -i demo --loglevel TRACE .\tests\

buat expected pake
Element
bisa text, bisa should be, displayed, disabled dll