# MCSteamView

## Installation

1. Copy files from the 'Classes' folder to your project;
2. Add the QuartzCore framework.

## Usage

    #import "MCSteamView.h"
    
    ...
    
    CGRect frame = CGRectMake(100.0, 100.0, 200.0, 10.0);
    MCSteamView * steamView = [[MCSteamView alloc] initWithFrame:frame];
    [self.view addSubview:steamView];

## License

This code is available under the MIT license