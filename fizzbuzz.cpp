#include <iostream>
#include <map>
#include <string>

int main() {
    std::string output;
    std::map<int, std::string> dict;
    dict[3] = "Fizz";
    dict[5] = "Buzz";
    for (int i = 1; i <= 100; i++) {
        output = "";
        // Internally, the elements in a map are always sorted by its key: http://www.cplusplus.com/reference/map/map/
        for ( auto item : dict ) {
            if (i % item.first == 0) { output += item.second; }
        }
        if (output == "") { output = std::to_string(i); }
        std::cout<<output<<std::endl;
    }
    return 0;
}
