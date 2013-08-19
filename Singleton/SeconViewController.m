//
//  SeconViewController.m
//  Singleton
//
//  Created by Phuoc on 8/9/13.
//  Copyright (c) 2013 Phuoc. All rights reserved.
//

#import "SeconViewController.h"
#import "MyManager.h"
@interface SeconViewController ()

@end

@implementation SeconViewController
@synthesize text;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.text.text = [([MyManager sharedManager]) strData];
}

- (void)dealloc
{
    [self.text release];
    [super dealloc];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
