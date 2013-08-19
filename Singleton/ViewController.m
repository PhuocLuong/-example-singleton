//
//  ViewController.m
//  Singleton
//
//  Created by Phuoc on 8/9/13.
//  Copyright (c) 2013 Phuoc. All rights reserved.
//

#import "ViewController.h"
#import "MyManager.h"
#import "SeconViewController.h"

@interface ViewController ()
{
    MyManager *myManager;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    myManager = [MyManager sharedManager];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) gotoNextPage:(id)sender
{
    myManager.strData = @"form View";
    SeconViewController *secondVCL = [[SeconViewController alloc] init];
    [self presentViewController:secondVCL animated:YES completion:nil];
    [secondVCL release];
}
@end
