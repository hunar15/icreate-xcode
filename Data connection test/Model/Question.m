//
//  Question.m
//  Data connection test
//
//  Created by Ashish on 23/06/13.
//  Copyright (c) 2013 NUS. All rights reserved.
//

#import "Question.h"
@interface Question()

@property (strong, nonatomic) NSString *questionId;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *question;
@property (nonatomic, assign) int Votes;
@property (strong, nonatomic) NSString *studentID;

@end

@implementation Question

- (void)voteQuestionUp
{
    
    // api call to register vote
    
    // api call to get the latest number of votes
    int new_votes;
    self.Votes = new_votes;
}

@end
