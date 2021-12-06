#include <iostream>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */
using namespace std;

#define MIN_IP_LEHGTH 7
#define MAX_IP_LEHGTH 15

class IP_Parsing{
	
	public:
		IP_Parsing(){};	
		virtual ~IP_Parsing(){};
		
		virtual bool ip_parcer(string *ip_str);	
};

bool IP_Parsing::ip_parcer(string *ip_str) {
	
	string ip_word;
	int count_char = 0;	int count_dot = 0;
	
	int len = ip_str->length();
	
	if(len < MIN_IP_LEHGTH && len > MAX_IP_LEHGTH){
		cout<<"NO_length";
		return  false;	
	} else {
		for(int i = 0; i < len; i++){
			if(ip_str->at(i) == '.' && count_char != 0 && i != len-1){
				++count_dot;
				count_char = 0;
				ip_word = "";
			} else {
				if(ip_str->at(i) > '9' || ip_str->at(i) < '0'){
					cout<<"NO_digit = "; cout<<ip_str->at(i)<<endl;
					cout<<"Or, dot ordering is wrong = "; cout<<ip_str->at(i)<<endl;
					return  false;
				} else {
					ip_word += ip_str->at(i);
					++count_char;
					if(count_char > 3){
						cout<<"IP_long = "; cout<<count_char<<endl;				
					} else {
						if(stoi(ip_word) > 255){
							cout<<"stoi(ip_word) = "; cout<<stoi(ip_word)<<endl;
							return  false;
						}
					}
				}
			}	
		}	
	}
	
	if(count_dot != 3){
		cout<<"NO_dots = "; cout<<count_dot<<endl;
		return  false;
	}
	return true; 
}


int main(int argc, char** argv) {
	
	string ip_str;
	IP_Parsing ip_parser;
	
	cout<<"put ip address to the string and press ENTER"<<endl;
	getline(cin, ip_str);
	
	cout<<(ip_parser.ip_parcer(&ip_str)?"YES":"NO")<<endl;
	
	system("pause");
	return 0;
}
