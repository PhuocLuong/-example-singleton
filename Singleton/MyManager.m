//
//  MyManager.m
//  Singleton
//
//  Created by Phuoc on 8/9/13.
//  Copyright (c) 2013 Phuoc. All rights reserved.
//

#import "MyManager.h"

@implementation MyManager

@synthesize strData;
+ (id) sharedManager
{
    static MyManager *sharedMyManager = nil;
    @synchronized(self)
    {
        if (sharedMyManager == nil)
        {
            sharedMyManager = [[self alloc] init];
        }
    }
    return sharedMyManager;
}

- (void) dealloc
{
    [self.strData release];
    [super dealloc];
}

@end
