//
//  MyManager.h
//  Singleton
//
//  Created by Phuoc on 8/9/13.
//  Copyright (c) 2013 Phuoc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyManager : NSObject

@property (nonatomic, retain) NSString *strData;

+ (id) sharedManager;

@end
