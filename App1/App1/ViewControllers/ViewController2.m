//
//  ViewController2.m
//  App1
//
//  Created by Panneerselvam, Rajkumar on 3/11/15.
//  Copyright (c) 2015 Panneerselvam, Rajkumar. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2
@synthesize rootController;
@synthesize detailReceived;
- (instancetype)init
{
    NSBundle* resourcesBundle = [NSBundle bundleForClass:[self class]];
    
    self = [super initWithNibName:@"ViewController2" bundle:resourcesBundle];
    
    if (self) {
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    cacheManager *cacheInstance = [cacheManager sharedInstance];
    
    NSBundle *bundle = [NSBundle bundleWithIdentifier:@"L-Brands.CacheLib"];
    NSURL *url = [bundle URLForResource:@"cachelib" withExtension:@"momd"];
    cacheInstance.managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:url];

    NSString *datareceived = [cacheInstance getDataForKey:@"Value"];
    
    

    [[self detailReceived] setText:datareceived];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)homeButtonClicked:(id)sender{
//    [[rootController navigationController] popToRootViewControllerAnimated:YES];
    [[NSNotificationCenter defaultCenter]
     postNotificationName:@"ShowHome"
     object:self];
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
