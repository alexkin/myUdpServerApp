//
//  udpServerAppViewController.m
//  myUdpServerApp
//
//  Created by stone on 14-4-14.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "udpServerAppViewController.h"
#import "setUdpIpAndPortViewController.h"
#import "dateDelegate.h"

@interface udpServerAppViewController ()

@end

@implementation udpServerAppViewController{
    bool boolBtnPlayPause,boolBtnMute,boolBtnPlayStop,boolBtnVoiceAdd,boolBtnVoiceMult;
    int intStateMent;

    NSString *aArray;
    //setUdpIpAndPortViewController *setUdp;
    
    NSString *myIp;
    NSString *myPort;
}

@synthesize myTextIp;
@synthesize myTextPort;

-(void)passValue:(dateDelegate *)value{
    self.myTextIp = value.textIp;
    self.myTextPort = value.textPort;
    
   
}

-(IBAction)showSetIpAndPort:(id)sender{
    setUdpIpAndPortViewController *controller = [[setUdpIpAndPortViewController alloc]initWithNibName:@"setUdpIpAndPortViewController" bundle:[NSBundle mainBundle]];
    
    controller.delegate = self;
    //[self.navigationController pushViewController:controller animated:YES];
    //controller.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    //controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    //controller.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    controller.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    //controller.modalTransitionStyle = UIModalPresentationPageSheet;
    [self presentViewController:controller animated:YES completion:nil];
}

-(void)setInitValue{
    boolBtnPlayPause = false;
    boolBtnMute = false;
    boolBtnPlayStop = false;
    boolBtnVoiceAdd = false;
    boolBtnVoiceMult = false;
    
    intStateMent = -1;
}

//select content
-(IBAction)button0:(id)sender{
    intStateMent = 0;
    
    NSLog(@"here is the report:%@",self.myTextIp);
    NSLog(@"ahahhahaha %@",self.myTextPort);
    
    //send intStatement
}

-(IBAction)button1:(id)sender{
    intStateMent = 1;
    
}

-(IBAction)button2:(id)sender{
    intStateMent = 2;
}

-(IBAction)button3:(id)sender{
    intStateMent = 3;
}

-(IBAction)button4:(id)sender{
    intStateMent = 4;
}

-(IBAction)button5:(id)sender{
    intStateMent = 5;
}

//set property of video
-(IBAction)playPause:(id)sender{
    //send
    
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"1" message:@"2" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [alertView show];

}

-(IBAction)mute:(id)sender{
    
}

-(IBAction)playStop:(id)sender{
    
}

-(IBAction)voiceAdd:(id)sender{
    
}

-(IBAction)voiceMult:(id)sender{
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
