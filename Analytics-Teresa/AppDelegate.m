//
//  AppDelegate.m
//  Analytics-Teresa
//
//  Created by Teresa Nesteby on 4/6/17.
//  Copyright © 2017 Teresa Nesteby. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    
    NSURLSession *session = [NSURLSession sharedSession];
    

//-----------------------------------------
//identify call
//    NSDictionary* identify = @{ @"userId": @"78",
//                                @"traits": @{ @"email": @"teresa@segment.com"}};
//    NSError* error;
//    NSData* requestData = [NSJSONSerialization dataWithJSONObject:identify options:0 error:&error];
//    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://api-segment-io-cm9xu7l447kc.runscope.net/v1/identify"]];

//-----------------------------------------
//track call
    NSDictionary* track = @{ @"userId": @"3333",
                             @"event": @"objc track tests 22222",
                             @"properties": @{ @"property key": @"property value"}};
    
    
    NSError* error;
    NSData* requestData = [NSJSONSerialization dataWithJSONObject:track options:0 error:&error];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://api-segment-io-cm9xu7l447kc.runscope.net/v1/track"]];
    
//  --------------------------------------

    
    NSString* writeKey=@"4txshy8l73";
    NSString *rawHeader = [writeKey stringByAppendingString:@":"];
    NSData *userPasswordData = [rawHeader dataUsingEncoding: NSUTF8StringEncoding];
    NSString *encodedWriteKey = [userPasswordData base64EncodedStringWithOptions:0];
    NSString *authorizationHeader = [@"Basic " stringByAppendingString:encodedWriteKey];
    NSLog(@"%@", authorizationHeader);
    
    
    
    
//sent with every call
     
     
     
    [request setHTTPMethod:@"POST"];
    [request setHTTPBody:requestData];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request setValue:authorizationHeader forHTTPHeaderField:@"Authorization"];
    
    
    
//The error object passed to the completion handler is only populated, not nil, if the request failed or encountered an error
    NSURLSessionTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
    }];

//By default it is paused - must resume
    [task resume];
    return YES;

    
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
