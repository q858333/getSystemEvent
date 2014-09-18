//
//  main.m
//  SystemEvent
//
//  Created by dengbin on 14/9/18.
//  Copyright (c) 2014年 IUAIJIA. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CustomApplication.h"
#import "DBAppDelegate.h"
int main(int argc, char * argv[]) {
    @autoreleasepool {
        // return UIApplicationMain(argc, argv, nil, NSStringFromClass([d class]));
        return UIApplicationMain(argc, argv, NSStringFromClass([CustomApplication class]), NSStringFromClass([DBAppDelegate class]));
        
    }
}