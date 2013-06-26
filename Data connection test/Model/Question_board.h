//
//  Question_board.h
//  Data connection test
//
//  Created by Ashish on 23/06/13.
//  Copyright (c) 2013 NUS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface Question_board : NSObject

@property (strong, nonatomic) NSString *creator;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *description;
@property (strong, nonatomic) NSString *ModuleCode;

-(void) getUpdates:(NSDate *) timeStamp;

@end
