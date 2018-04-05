//
//  ViewController.m
//  test
//
//  Created by Charls Salazar on 15/03/18.
//  Copyright © 2018 alpha. All rights reserved.
//
#import "AppDelegate.h"
#import "ViewController.h"
#import <payment/payment.h>
#import <BaseClases/BaseClases.h>
#import <trace/trace.h>
#import <account/account.h>
#import <prospect/prospect.h>
#import <GooglePlaces/GooglePlaces.h>
#import <GoogleMaps/GoogleMaps.h>
@import UIKit;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new]
                                                  forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = [UIImage new];
    self.navigationController.navigationBar.translucent = YES;
    self.navigationController.view.backgroundColor = [UIColor clearColor];
    self.navigationController.navigationBar.backgroundColor = [UIColor clearColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
//    [self.navigationController setNavigationBarHidden:true];
}


- (IBAction)onClick:(id)sender {
    [PaymentRoute paymetWithViewController:self user:@"0101490064"];
}
- (IBAction)lanzadorTrace:(id)sender {
    [TraceRoute traceWithViewController:self];
}
- (IBAction)lanzadorAccount:(id)sender {
    [AccountRoute accountWithViewController:self user:@"0101490064"];
}
- (IBAction)lanzadorProspect:(id)sender {
   [ProspectRoute prospectWithViewController:self services: @"AIzaSyDUuUWNrEkAMAgF5lcI04PIFy6w2XK9Wdc" Places: @"AIzaSyABwUw-_wdaAyN1_aB0iLN6wtM86JouFWc"];
}
@end
