//
//  ViewController.m
//  Data connection test
//
//  Created by Ashish on 22/06/13.
//  Copyright (c) 2013 NUS. All rights reserved.
//

#import "ViewController.h"
#import "CJSONDeserializer.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *displayText;
@property (nonatomic, retain) IBOutlet UITextField *t_stamp;
@property (retain, nonatomic) IBOutlet UILabel *downloadText;

@end

@implementation ViewController

- (IBAction)upload:(UITextField *)sender {
    
    NSString *url = @"http://localhost:3000/question/add";
    
    NSString* questionBoardId;
    NSString* studentId;
    NSString* title;
    
    NSString* description = _displayText.text;
    
    NSString* isAnonymous;
    
    NSDictionary *jsonDictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                                    @"51c5eb155da827d606000002",@"questionBoardId",
                                    @"A0074454", @"studentId",
                                    @"My question", @"title",
                                    [NSString stringWithFormat:@"%@", description], @"description",
                                    @"true",@"isAnonymous", nil];
    
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:jsonDictionary
                                            options:NSJSONWritingPrettyPrinted
                                            error:&error];
    
    if (! jsonData) {
    
        NSLog(@"Got an error: %@", error);

    } else {
    
        NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    
    }
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc]
                                    initWithURL:[NSURL URLWithString:@"http://localhost:3000/question/add"]];
    
    [request setHTTPMethod:@"GET"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    //[request setValue:[ NSString stringWithFormat: @"%d",
                       //[jsonData length]] forHTTPHeaderField:@"Content-Length"];
    //[request setHTTPBody:jsonData];
    
    [[NSURLConnection alloc] initWithRequest:request delegate:self];
}

- (IBAction)download {
    
    /*
    NSData *theJSONData = // JSON data
     
    NSError *theError = nil;
    id theObject = [[CJSONDeserializer deserializer] deserialize:theJSONData error:&theError];}*/
    
    NSString *downloaded_string = @"test";
    
    _downloadText.text=downloaded_string;
}

@end