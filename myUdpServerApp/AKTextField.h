//
//  AKTextField.h
//  myUdpServerApp
//
//  Created by stone on 14-4-15.
//  Copyright (c) 2014年 stone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AKTextField : UITextField{
    CGFloat _cornerRadio;
    UIColor *_borderColor;
    CGFloat _borderWidth;
    UIColor *_lightColor;
    CGFloat _lightSize;
    UIColor *_lightBorderColor;
}

-(id)initWithFrame:(CGRect)frame
       cornerRadio:(CGFloat)radio
       borderColor:(UIColor*)bColor
      borderWitdth:(CGFloat)bWidth
        lightColor:(UIColor*)lColor
         lightSize:(CGFloat)lsize
  lightBorderColor:(UIColor*)lbColor;

@end
