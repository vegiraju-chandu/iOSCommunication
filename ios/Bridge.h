//
//  Bridge.h
//  IOSCommunication
//
//  Created by Raju on 27/09/20.
//

#import <Foundation/Foundation.h>
#import "SampleViewController.h"

#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

NS_ASSUME_NONNULL_BEGIN

@interface Bridge : RCTEventEmitter<RCTBridgeModule,SampleDelegate>

@end

NS_ASSUME_NONNULL_END
