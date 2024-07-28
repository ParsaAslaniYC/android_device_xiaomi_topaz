//                    ######   ######  #######  ######    #####   ######    #####    #####   ##   ##   #####                     
//       ##             ##       ##         ##   ##  ##  ##   ##  ##   ##  ##   ##  ##   ##  ##   ##  ##   ##                 ## 
//      ##              ##       ##        ##    ##  ##  ##   ##  ##   ##  ##       ##   ##  ##   ##  ##                     ##  
//     ##               ##       ##      ###     #####   #######  ######    #####   #######   #####   ##                    ##   
//    ##                ##       ##     ##       ##      ##   ##  ## ##         ##  ##   ##     ##    ##                   ##    
//   ##                 ##       ##    ##        ##      ##   ##  ##  ##   ##   ##  ##   ##     ##    ##   ##             ##     
//  ##                ######     ##    #######  ####     ##   ##  ##   ##   #####   ##   ##     ##     #####             ##      
//                                                                                                                              
// -=signed, itzParsaYC.


#ifndef HEADER_H
#define HEADER_H

#include <string>
#include <vector>

void property_override(std::string prop, std::string value);
void load_redmi_topaz();
void load_redmi_tapas();
void vendor_load_properties();
bool IsRecoveryMode();

extern std::vector<std::string> ro_props_default_source_order;

#endif // HEADER_H