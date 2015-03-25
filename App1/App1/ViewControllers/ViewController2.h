//
//  ViewController2.h
//  App1
//
//  Created by Panneerselvam, Rajkumar on 3/11/15.
//  Copyright (c) 2015 Panneerselvam, Rajkumar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CacheLib/cacheManager.h>

@interface ViewController2 : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *detailReceived;
- (IBAction)homeButtonClicked:(id)sender;

@property (strong, nonatomic) UIViewController *rootController;

@end
