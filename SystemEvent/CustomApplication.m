//
//  CustomApplication.m
//  GetSystemEvent
//
//  Created by dengbin on 14/9/18.
//  Copyright (c) 2014年 IUAIJIA. All rights reserved.
//

#import "CustomApplication.h"
NSString *const notiScreenTouch = @"notiScreenTouch";

@implementation CustomApplication
- (void)sendEvent:(UIEvent *)event
{
    if (event.type == UIEventTypeTouches) {
        
        UITouch *touch = [event.allTouches anyObject];
        
        NSLog(@"touch.%@",touch.view);
        if ([[event.allTouches anyObject] phase] == UITouchPhaseBegan)
        {
            
            [[NSNotificationCenter defaultCenter] postNotification:[NSNotification notificationWithName:notiScreenTouch object:nil userInfo:[NSDictionary dictionaryWithObject:event forKey:@"data"]]];
        }
    }
    [super sendEvent:event];
}
@end
