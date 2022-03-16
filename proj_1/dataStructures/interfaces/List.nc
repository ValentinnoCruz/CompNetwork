

interface List<t>{
   /**
    * Put value into the end of the list.
    *
    * @param input - data to be inserted
    */
   command void pushback(t input);
	command void pushfront(t input);
	command t popback();
	command t popfront();
	command t front();
	command t back();
	command bool isEmpty();
	command uint16_t size();
	command t get(uint16_t position);
}
