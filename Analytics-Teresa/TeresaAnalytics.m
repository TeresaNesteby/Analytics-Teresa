//
//  TeresaAnalytics.m
//  Analytics-Teresa
//
//  Created by Teresa Nesteby on 4/19/17.
//  Copyright © 2017 Teresa Nesteby. All rights reserved.
//

#import "TeresaAnalytics.h"

@implementation TeresaAnalytics

- (void)identify {
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSDictionary* identify = @{ @"userId": @"99",
                                @"traits": @{ @"email": @"teresa@segment.com"}};
    NSError* error;
    NSData* requestData = [NSJSONSerialization dataWithJSONObject:identify options:0 error:&error];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://api-segment-io-cm9xu7l447kc.runscope.net/v1/identify"]];
    
    NSString* writeKey=@"4txshy8l73";
    NSString *rawHeader = [writeKey stringByAppendingString:@":"];
    NSData *userPasswordData = [rawHeader dataUsingEncoding: NSUTF8StringEncoding];
    NSString *encodedWriteKey = [userPasswordData base64EncodedStringWithOptions:0];
    NSString *authorizationHeader = [@"Basic " stringByAppendingString:encodedWriteKey];
    NSLog(@"%@", authorizationHeader);
    
    [request setHTTPMethod:@"POST"];
    [request setHTTPBody:requestData];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request setValue:authorizationHeader forHTTPHeaderField:@"Authorization"];
    
    //The error object passed to the completion handler is only populated, not nil, if the request failed or encountered an error
    NSURLSessionTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
    }];
    
    //By default it is paused - must resume
    [task resume];
    
}

- (void)track {
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSDictionary* track = @{ @"userId": @"3333",
                             @"event": @"objc track tests 22222",
                             @"properties": @{ @"property key": @"property value"}};
    
    
    NSError* error;
    NSData* requestData = [NSJSONSerialization dataWithJSONObject:track options:0 error:&error];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://api-segment-io-cm9xu7l447kc.runscope.net/v1/track"]];
    
    NSString* writeKey=@"4txshy8l73";
    NSString *rawHeader = [writeKey stringByAppendingString:@":"];
    NSData *userPasswordData = [rawHeader dataUsingEncoding: NSUTF8StringEncoding];
    NSString *encodedWriteKey = [userPasswordData base64EncodedStringWithOptions:0];
    NSString *authorizationHeader = [@"Basic " stringByAppendingString:encodedWriteKey];
    NSLog(@"%@", authorizationHeader);
    
    [request setHTTPMethod:@"POST"];
    [request setHTTPBody:requestData];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request setValue:authorizationHeader forHTTPHeaderField:@"Authorization"];
    
    
    
    //The error object passed to the completion handler is only populated, not nil, if the request failed or encountered an error
    NSURLSessionTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
    }];
    
    //By default it is paused - must resume
    [task resume];
    
}

- (void)screen {
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSDictionary* screen = @{ @"userId": @"3333",
                             @"name": @"Screen Call Tested"};
    
    
    NSError* error;
    NSData* requestData = [NSJSONSerialization dataWithJSONObject:screen options:0 error:&error];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://api.segment.io/v1/screen"]];
    
    NSString* writeKey=@"4txshy8l73";
    NSString *rawHeader = [writeKey stringByAppendingString:@":"];
    NSData *userPasswordData = [rawHeader dataUsingEncoding: NSUTF8StringEncoding];
    NSString *encodedWriteKey = [userPasswordData base64EncodedStringWithOptions:0];
    NSString *authorizationHeader = [@"Basic " stringByAppendingString:encodedWriteKey];
    NSLog(@"%@", authorizationHeader);
    
    [request setHTTPMethod:@"POST"];
    [request setHTTPBody:requestData];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request setValue:authorizationHeader forHTTPHeaderField:@"Authorization"];
    
    
    
    //The error object passed to the completion handler is only populated, not nil, if the request failed or encountered an error
    NSURLSessionTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
    }];
    
    //By default it is paused - must resume
    [task resume];
    
}

- (void)newIdentify {
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSDictionary* identify = @{ @"userId": @"99",
                                @"traits": @{ @"email": @"teresa@segment.com"}};
    NSError* error;
    NSData* requestData = [NSJSONSerialization dataWithJSONObject:identify options:0 error:&error];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://api-segment-io-cm9xu7l447kc.runscope.net/v1/identify"]];
    
    NSString* writeKey=@"4txshy8l73";
    NSString *rawHeader = [writeKey stringByAppendingString:@":"];
    NSData *userPasswordData = [rawHeader dataUsingEncoding: NSUTF8StringEncoding];
    NSString *encodedWriteKey = [userPasswordData base64EncodedStringWithOptions:0];
    NSString *authorizationHeader = [@"Basic " stringByAppendingString:encodedWriteKey];
    NSLog(@"%@", authorizationHeader);
    
    [request setHTTPMethod:@"POST"];
    [request setHTTPBody:requestData];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request setValue:authorizationHeader forHTTPHeaderField:@"Authorization"];
    
    //The error object passed to the completion handler is only populated, not nil, if the request failed or encountered an error
    NSURLSessionTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
    }];
    
    //By default it is paused - must resume
    [task resume];
    
}

- (void)alias {
    NSURLSession *session = [NSURLSession sharedSession];

    NSDictionary *alias = @{ @"previousId": @"99",
                             @"userId": @"88"
                             };
    
    
    NSError *error;
    NSData *requestData = [NSJSONSerialization dataWithJSONObject:alias options:0 error:&error];
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://api.segment.io/v1/alias"]];

    NSString *writeKey = @"4txshy8l73";
    NSString *rawHeader = [writeKey stringByAppendingString:@":"];
    NSData *userPasswordData = [rawHeader dataUsingEncoding: NSUTF8StringEncoding];
    NSString *encodedWriteKey = [userPasswordData base64EncodedStringWithOptions:0];
    NSString *authorizationHeader = [@"Basic " stringByAppendingString:encodedWriteKey];
    NSLog(@"%@", authorizationHeader);
    
    [request setHTTPMethod:@"POST"];
    [request setHTTPBody:requestData];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request setValue:authorizationHeader forHTTPHeaderField:@"Authorization"];
    
    
    
    //The error object passed to the completion handler is only populated, not nil, if the request failed or encountered an error
    NSURLSessionTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
    }];
    
    //By default it is paused - must resume
    [task resume];
    

    
}


@end
