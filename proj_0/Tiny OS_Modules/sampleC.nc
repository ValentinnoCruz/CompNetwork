//the C file sets up the module so that it can be called by other files.
//it is critical that each filename match the call in the code
//here the interface is sampleModule and its file is named sampleModule.nc
//see also sampleC's file, sampleC.nc, and sampleP's file, sampleP.nc.
configuration sampleC{
  //sampleModule behaves similarly to a .h file which provides a list of functions which the interface will provide.
  provides interface sampleModule;
}
implementation{
  //these two lines create a generic component, sample, and wire it to the interface, sampleModule.
  components sampleP as sample;
  sampleModule = sample;
  //these two lines allow the module to include code provided by a different module, in this case the hash map module.
  components new HashmapC(uint32_t, 20) as SampleMap;
  sample.Hashmap -> SampleMap;
}
