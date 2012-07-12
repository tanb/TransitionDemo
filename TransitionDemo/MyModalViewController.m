//
//  MyModalViewController.m
//  TransitionDemo
//
//  Created by Tomonori Tanabe on 7/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MyModalViewController.h"

@interface MyModalViewController ()

@end

@implementation MyModalViewController
@synthesize delegate = _delegate;

- (void)loadView
{
    [super loadView];
    self.view.backgroundColor = [UIColor grayColor];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
    ((UIViewController *)self.delegate).view.transform = CGAffineTransformMakeScale(1.3, 1.3);
    [UIView animateWithDuration:0.3f     
                     animations:^(void){
                         ((UIViewController *)self.delegate).view.transform = CGAffineTransformMakeScale(1, 1);
                     } 
                     completion:^(BOOL finished){
                         
                     }];
    [self.delegate dismissModalViewControllerAnimated:YES];
}

@end
