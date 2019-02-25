Compiling/running unit tests
------------------------------------

Unit tests will be automatically compiled if dependencies were met in configure
and tests weren't explicitly disabled.

After configuring, they can be run with 'make check'.

To run the edcod tests manually, launch src/test/test_edco .

To add more edcod tests, add `BOOST_AUTO_TEST_CASE` functions to the existing
.cpp files in the test/ directory or add new .cpp files that
implement new BOOST_AUTO_TEST_SUITE sections.

To run the edco-qt tests manually, launch src/qt/test/edco-qt_test

To add more edco-qt tests, add them to the `src/qt/test/` directory and
the `src/qt/test/test_main.cpp` file.
