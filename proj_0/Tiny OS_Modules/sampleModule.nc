//sampleModule behaves similarly to a .h file which provides a list of functions which the interface will provide.
interface sampleModule{
  //all commands which are provided to other files by the module must be listed here. Similarly to the implementation of a .h file
  command bool sampleFunction();
}
