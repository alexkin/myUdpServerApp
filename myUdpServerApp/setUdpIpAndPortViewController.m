//
//  setUdpIpAndPortViewController.m
//  myUdpServerApp
//
//  Created by stone on 14-4-15.
//  Copyright (c) 2014年 stone. All rights reserved.
//

#import "setUdpIpAndPortViewController.h"
#import "dateDelegate.h"

@interface setUdpIpAndPortViewController ()

@end

@implementation setUdpIpAndPortViewController


@synthesize textFieldIpInput;
@synthesize textFieldPortInput;
@synthesize delegate;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        //textFieldIpInput.borderStyle = UITextBorderStyleRoundedRect;
        //textFieldIpInput.backgroundColor = [UIColor blueColor];
        //self.textFieldIpInput.text = @"Please input";
        
    }
    return self;
}

//*************
/*- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    //当点触textField内部，开始编辑都会调用这个方法。textField将成为first responder
    NSTimeInterval animationDuration = 0.30f;
    CGRect frame = self.view.frame;
    frame.origin.y -=216;
    frame.size.height +=216;
    self.view.frame = frame;
    [UIView beginAnimations:@"ResizeView" context:nil];
    [UIView setAnimationDuration:animationDuration];
    self.view.frame = frame;
    [UIView commitAnimations];
    textFieldIpInput.text = @"string";
    NSString *myText = textFieldIpInput.text;
    textFieldIpInput.textColor = [UIColor redColor];
 
    NSLog(@"myText %@",myText);
}
*/


//8******************

-(IBAction)chooseOK:(id)sender{
    NSString *myUdpText = textFieldIpInput.text;
    textFieldIpInput.textColor = [UIColor redColor];
    //textFieldIpInput.clearsOnBeginEditing = YES;
    NSLog(@"myText %@",myUdpText);
    
    dateDelegate *date_Delegate = [[dateDelegate alloc]init];
    date_Delegate.textIp = self.textFieldIpInput.text;
    date_Delegate.textPort = self.textFieldPortInput.text;
    
    //通过委托协议传值
    [self.delegate passValue:date_Delegate];
    
    //窗口返回
    //[self.navigationController popToRootViewControllerAnimated:YES];
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}


- (void)viewDidLoad
{
    //[self setTextFieldIpInput:nil];
    [super viewDidLoad];
    //[self textFieldDidBeginEditing:textFieldIpInput];
    // Do any additional setup after loading the view from its nib.
    //textFieldIpInput.text = @"nononononono";
    
    //textFieldIpInput.clearsOnBeginEditing = YES;
    //textFieldIpInput.delegate = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*单击屏幕其他区域关闭键盘的方法
 实现方法是：首先选中xib文件的view，设置class为UIControl
 然后在事件中选择Touch Down拖线到.h文件中声明该方法，最后实现下面即可
 */
- (IBAction)closeKeyBoard:(id)sender {
    [self.textFieldIpInput resignFirstResponder];
    [self.textFieldPortInput resignFirstResponder];
}

@end
