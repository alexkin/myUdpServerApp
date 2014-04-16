//
//  setUdpIpAndPortViewController.h
//  myUdpServerApp
//
//  Created by stone on 14-4-15.
//  Copyright (c) 2014年 stone. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "passValueByDelegate.h"

@interface setUdpIpAndPortViewController : UIViewController

@property(retain,nonatomic)IBOutlet UITextField *textFieldIpInput;
@property(retain,nonatomic)IBOutlet UITextField *textFieldPortInput;

//set delegate
@property(nonatomic,assign)NSObject<passValueByDelegate>*delegate;

-(IBAction)chooseOK:(id)sender;
-(IBAction)closeKeyBoard:(id)sender;

@end
