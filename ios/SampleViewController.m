//
//  SampleViewController.m
//  IOSCommunication
//
//  Created by Raju on 27/09/20.
//

#import "SampleViewController.h"

@interface SampleViewController ()

@end

@implementation SampleViewController {
  NSDictionary *dataDict;
}

- (id)initWithInfo:(NSDictionary *)info {
  self = [super init];
  if ( self ) {
    dataDict = info;
    return self;
  }
  return self;
}

- (void)viewDidLoad {
  [super viewDidLoad];
  self.view.backgroundColor = [UIColor whiteColor];
  
  UILabel *fromLabel = [[UILabel alloc]initWithFrame:CGRectMake(91, 15, 100, 50)];
  fromLabel.text = dataDict[@"name"];
  fromLabel.numberOfLines = 1;
  fromLabel.backgroundColor = [UIColor clearColor];
  fromLabel.textColor = [UIColor blackColor];
  fromLabel.textAlignment = NSTextAlignmentLeft;
  
  UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(91, 50, 100, 50)];
  [button addTarget:self
             action:@selector(buttonClicked)
   forControlEvents:UIControlEventTouchUpInside];
  [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
  [button setTitle:@"Show View" forState:UIControlStateNormal];
  
  [self.view addSubview:fromLabel];
  [self.view addSubview:button];
  
    // Do any additional setup after loading the view.
}

- (void)buttonClicked {
  [self.delegate sampleControllerDismissed];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
