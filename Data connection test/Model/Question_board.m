//
//  Question_board.m
//  Data connection test
//
//  Created by Ashish on 23/06/13.
//  Copyright (c) 2013 NUS. All rights reserved.
//

#import "Question_board.h"
#import "CJSONSerializer.h"
#import "CJSONDeserializer.h"


@interface Question_board ()

@property (strong, nonatomic) NSString *QuestionBoardId;
@property (strong, nonatomic) NSMutableArray *Questions;

@end

@implementation Question_board

-(NSMutableArray *)Questions{
    if(!_Questions) _Questions = [[NSMutableArray alloc] init];
    return _Questions;
}

- (void) addQuestion:( Question *)Question {
    [self.Questions addObject: Question];
    
}

-(id) getUpdates:(NSDate *) timeStamp{
    
    NSURL * url = @"http://localhost:3000/questionBoard/fetchUpdatesForQuestionBoard"
    
    

}

@end