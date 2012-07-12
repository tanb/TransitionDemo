//
//  RootViewController.m
//  TransitionDemo
//
//  Created by Tomonori Tanabe on 7/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "MyModalViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface RootViewController ()

@end

@implementation RootViewController

- (void)loadView
{
    [super loadView];
    UILabel *label = [UILabel new];
    label.text = @"Hello! I'm iPhone.";
    [label sizeToFit];
    label.center = self.view.center;
    [self.view addSubview:label];

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
    MyModalViewController *modalViewController = [MyModalViewController new];
    [modalViewController setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
    [modalViewController setModalPresentationStyle:UIModalPresentationFullScreen];
    modalViewController.delegate = self;
    [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationFade];
    [UIView animateWithDuration:0.3f     
                     animations:^(void){
                         self.view.transform = CGAffineTransformMakeScale(1.3, 1.3);

                     } 
                     completion:^(BOOL finished){
                        
                     }];

    
    [self presentModalViewController:modalViewController animated:YES];
}

@end
