module sampleP{
  //this code wires the module to the interface
  provides interface sampleModule;
  //this code allows the hashmap interface to be used in this file
  uses interface Hashmap<uint32_t>;
}

implementation{
  //Here all commands which are provided by the interface must be implemented
  //functions internal to the module can be implemented here and excluded from sampleModule
  //functions which are intended to be internal should be coded normally
  //functions provided by the module require this special format:
  command bool sampleModule.sampleFunction(){
    return 1;
  }
}
