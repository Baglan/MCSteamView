//
//  ViewController.m
//  MCSteamView
//
//  Created by Baglan on 10/17/12.
//  Copyright (c) 2012 MobileCreators. All rights reserved.
//

#import "ViewController.h"
#import "MCSteamView.h"

#define STEAM_WIDTH     200.0
#define STEAM_HEIGHT    10.0

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CGRect bounds = self.view.bounds;
    CGRect frame = CGRectMake((bounds.size.width - STEAM_WIDTH)/2, (bounds.size.height - STEAM_HEIGHT)/2, STEAM_WIDTH, STEAM_HEIGHT);
    MCSteamView * steamView = [[MCSteamView alloc] initWithFrame:frame];
    [self.view addSubview:steamView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
