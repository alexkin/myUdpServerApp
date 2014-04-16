//
//  AKTextField.m
//  myUdpServerApp
//
//  Created by stone on 14-4-15.
//  Copyright (c) 2014年 stone. All rights reserved.
//

#import "AKTextField.h"

@implementation AKTextField

- (id)initWithFrame:(CGRect)frame
        cornerRadio:(CGFloat)radio
        borderColor:(UIColor *)bColor
       borderWitdth:(CGFloat)bWidth
         lightColor:(UIColor *)lColor
          lightSize:(CGFloat)lsize
   lightBorderColor:(UIColor *)lbColor
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        _borderColor = bColor;
        _cornerRadio = radio;
        _borderWidth = bWidth;
        _lightColor = lColor;
        _lightSize = lsize;
        _lightBorderColor = lbColor;
        
        [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(beginEditing) name:UITextFieldTextDidBeginEditingNotification object:self];
        [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(endEditing) name:UITextFieldTextDidBeginEditingNotification object:self];
        [self.layer setCornerRadius:_cornerRadio];
        [self.layer setBorderColor:_borderColor.CGColor];
        [self.layer setBorderWidth:_borderWidth];
        [self setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
        [self setBackgroundColor:[UIColor whiteColor]];
        [self.layer setMasksToBounds:NO];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
