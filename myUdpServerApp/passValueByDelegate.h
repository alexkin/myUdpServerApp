//
//  passValueByDelegate.h
//  myUdpServerApp
//
//  Created by stone on 14-4-15.
//  Copyright (c) 2014年 stone. All rights reserved.
//

#import <Foundation/Foundation.h>
@class dateDelegate;

@protocol passValueByDelegate <NSObject>

-(void)passValue:(dateDelegate *)value;

@end
