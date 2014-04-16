//
//  udpServerAppViewController.h
//  myUdpServerApp
//
//  Created by stone on 14-4-14.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "passValueByDelegate.h"


//第一个窗口遵守delegate协议
@interface udpServerAppViewController : UIViewController<passValueByDelegate>

@property(nonatomic,strong)NSString *myTextIp;
@property(nonatomic,strong)NSString *myTextPort;

-(IBAction)button0:(id)sender;
-(IBAction)button1:(id)sender;
-(IBAction)button2:(id)sender;
-(IBAction)button3:(id)sender;
-(IBAction)button4:(id)sender;
-(IBAction)button5:(id)sender;

-(IBAction)playPause:(id)sender;
-(IBAction)mute:(id)sender;
-(IBAction)playStop:(id)sender;
-(IBAction)voiceAdd:(id)sender;
-(IBAction)voiceMult:(id)sender;

-(IBAction)showSetIpAndPort:(id)sender;

@end
