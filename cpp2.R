#include <iostream>
#include <string>
#include <cstdlib>

using namespace std;

int main()
{
  string line;
  string last_word = "";
  int last_count = 0;
  
  while(getline(cin,line))
  {
    size_t found = line.find_first_of("t");
    if(found != string::npos)
    {
      string key = line.substr(0,found);
      string value = line.substr(found);
      int valuei = atoi(value.c_str());
      //cerr << "key=" << key << " value=" << value <<endl;
      if(key != last_word)
      {
        if(last_word != "") cout << last_word << "t" << last_count << endl;
        
        last_word = key;
        last_count = valuei;
      }
      else
        last_count += valuei;
    }
  }
  if(last_word != "") cout << last_word << "t" << last_count << endl;
  
  return 0;
}