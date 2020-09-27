//
//  Bridge.m
//  IOSCommunication
//
//  Created by Raju on 27/09/20.
//

#import "Bridge.h"
#import <UIKit/UIKit.h>
#import "SampleViewController.h"

@implementation Bridge

RCT_EXPORT_MODULE();

- (NSArray<NSString *> *)supportedEvents
{
  return @[@"UpdatedProfile"];
}

- (void)dismissSampleController
{
  NSString *eventName = @"Info got from sample controller";
  [self sendEventWithName:@"UpdatedProfile" body:@{@"name": eventName}];
}

RCT_EXPORT_METHOD(presentController:(NSDictionary *)info )
{
  // Date is ready to use!
  
  dispatch_async(dispatch_get_main_queue(), ^{
    SampleViewController * sample = [[SampleViewController alloc]initWithInfo:info];
    sample.delegate = self;
    
    UIViewController *controller = (UIViewController *)[[[UIApplication sharedApplication] keyWindow] rootViewController];
    [controller presentViewController:sample
                       animated:YES
                     completion:nil];
    
  });
 
}

- (void)sampleControllerDismissed {
  [self dismissSampleController];
}
@end
