//
//  paintView.m
//  ELawyer
//
//  Created by 张鹤楠 on 15/10/26.
//  Copyright © 2015年 binfenfuture. All rights reserved.
//
#define wid [UIScreen mainScreen].bounds.size.width
#define heigh [UIScreen mainScreen].bounds.size.height

#import "PaintView.h"
#import "GreetCardTextView.h"

@implementation PaintView
{
    GreetCardTextView *GtextView;
    UIView *upperView;
    UIView *baseView;
    UIScrollView *paintView;
    UIView *underBarView;
}
- (instancetype)initWithFrame:(CGRect)frame withCompoentDataArray:(NSMutableArray *)array{
    self = [super initWithFrame:frame];
    if (self) {
        baseView = [[UIView alloc] initWithFrame:frame];
        baseView.backgroundColor = [UIColor lightGrayColor];
        
        upperView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, wid, 90)];
        upperView.backgroundColor = [UIColor whiteColor];
        
        paintView = [[UIView alloc] initWithFrame:CGRectMake(wid/16, (heigh-90-100-(wid*7/8)/0.65)/2+90, wid*7/8, (wid*7/8)/0.65)];
        paintView.backgroundColor = [UIColor whiteColor];
        
        underBarView = [[UIView alloc] initWithFrame:CGRectMake(0, heigh-100, wid, 100)];
        
        [self addSubview:baseView];
        [self addSubview:upperView];
        [self addSubview:paintView];
        [self addSubview:underBarView];
    }
    return self;
}



@end
