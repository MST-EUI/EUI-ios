//
//  Header.h
//  EUI-EUI
//
//  Created by 李天露 on 2018/7/3.
//

#ifndef Header_h
#define Header_h

#define HEXACOLOR(rgbValue,a) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:a]

#define BlueColor HEXACOLOR(0x4095EF, 1.0)

#endif /* Header_h */
