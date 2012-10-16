//
//  SteamView.m
//  Coffee
//
//  Created by Baglan on 3/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MCSteamView.h"
#import <QuartzCore/QuartzCore.h>

@interface MCSteamView () {
    CAEmitterLayer *_emitterLayer;
}

@end

@implementation MCSteamView

+ (Class)layerClass
{
    return [CAEmitterLayer class];
}

- (void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
    
    _emitterLayer.emitterPosition = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height);
    _emitterLayer.emitterSize = CGSizeMake(self.bounds.size.width, 0);
}

- (void)commonInit
{
    _emitterLayer = (CAEmitterLayer *)self.layer;
    
    // Place emitter in bottom middle
    _emitterLayer.emitterPosition = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height);
    
    CAEmitterCell* cell = [CAEmitterCell emitterCell];
    cell.birthRate = 15;
    cell.lifetime = 3.0;
    cell.lifetimeRange = 2;
    cell.color = [[UIColor whiteColor] CGColor];
    cell.contents = (id)[[UIImage imageNamed:@"steam-particle.png"] CGImage];
    [cell setName:@"steam"];
    
    _emitterLayer.emitterCells = @[cell];
    
    cell.velocity = 30;
    cell.velocityRange = 10;
    cell.emissionRange = M_PI_4;
    
    // cell.scaleSpeed = 0.3;
    cell.spin = 0;
    cell.spinRange = 3;
    
    // cell.alphaSpeed = 0.5;
    // cell.alphaRange = 0.5;
    
    _emitterLayer.renderMode = kCAEmitterLayerAdditive;
    
    _emitterLayer.emitterShape = kCAEmitterLayerLine;
    _emitterLayer.emitterSize = CGSizeMake(self.bounds.size.width, 0);
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        [self commonInit];
    }
    
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        [self commonInit];
    }
    
    return self;
}

@end
