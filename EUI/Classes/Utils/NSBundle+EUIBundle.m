//
//  NSBundle+EUIBundle.m
//  EUI-EUI
//
//  Created by 李天露 on 2018/7/3.
//

#import "NSBundle+EUIBundle.h"
#import "EUIEmptyDataView.h"

@implementation NSBundle (EUIBundle)

+ (NSBundle*)EUIBundleTool
{
    static NSBundle *EUI_Bundle = nil;
    if (EUI_Bundle == nil) {
        
        NSBundle *bundle = [NSBundle bundleForClass:[EUIEmptyDataView class]];
        NSString* filePath = [bundle pathForResource:@"EUI" ofType:@"bundle"];
        NSBundle *fileBundle = [NSBundle bundleWithPath:filePath];
        filePath = [fileBundle pathForResource:@"EUISDK" ofType:@"bundle"];
        EUI_Bundle = [NSBundle bundleWithPath:filePath];
    }
    return EUI_Bundle;
}

@end
