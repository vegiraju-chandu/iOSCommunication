//
//  SampleViewController.h
//  IOSCommunication
//
//  Created by Raju on 27/09/20.
//

#import <UIKit/UIKit.h>
#import <React/RCTEventEmitter.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SampleDelegate <NSObject>

- (void)sampleControllerDismissed;

@end

@interface SampleViewController : UIViewController

@property (nonatomic, weak) id <SampleDelegate> delegate;


- (id)initWithInfo:(NSDictionary *)info;

@end

NS_ASSUME_NONNULL_END
