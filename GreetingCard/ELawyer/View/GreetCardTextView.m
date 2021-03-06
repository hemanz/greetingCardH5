//
//  GreetCardTextView.m
//  ELawyer
//
//  Created by 张鹤楠 on 15/10/23.
//  Copyright © 2015年 binfenfuture. All rights reserved.
//

#import "GreetCardTextView.h"

@implementation GreetCardTextView


- (id) initWithFrame:(CGRect)frame withUICorlor:(UIColor*)corlor{
    self = [super initWithFrame:frame];
    self.textColor = corlor;
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (!_dragEnable) {
        [self setStroke:NO];
        return;
    }
    
    [self setStroke:YES];
    
    UITouch *touch = [touches anyObject];
    
    beginPoint = [touch locationInView:self];
    
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (!_dragEnable) {
        return;
    }
    UITouch *touch = [touches anyObject];
    
    CGPoint nowPoint = [touch locationInView:self];
    
    float offsetX = nowPoint.x - beginPoint.x;
    float offsetY = nowPoint.y - beginPoint.y;
    
    self.center = CGPointMake(self.center.x + offsetX, self.center.y + offsetY);
}

- (void)setStroke:(BOOL)stroke{
    if (stroke) {
        [self strokeBorderToBlue];
    }else{
        [self strokeBorderTotransparent];
    }
}

- (void)strokeBorderToBlue{
    self.layer.borderColor = (__bridge CGColorRef)([UIColor blueColor]);
    self.layer.borderWidth = 1;
}

- (void)strokeBorderTotransparent{
    self.layer.borderColor = (__bridge CGColorRef)([UIColor clearColor]);
    self.layer.borderWidth = 1;
}
@end
