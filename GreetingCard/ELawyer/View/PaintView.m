//
//  paintView.m
//  ELawyer
//
//  Created by 张鹤楠 on 15/10/26.
//  Copyright © 2015年 binfenfuture. All rights reserved.
//

#import "PaintView.h"
#import "GreetCardTextView.h"

@implementation PaintView
{
    GreetCardTextView *GtextView;
    UIView *upperView;
    UIView *baseView;
    UIView *paintView;
    UIView *underBarView;
}
- (instancetype)initWithFrame:(CGRect)frame withCompoentDataArray:(NSMutableArray *)array{
    self = [super initWithFrame:frame];
    if (self) {
        baseView = [[UIView alloc] initWithFrame:frame];
        
    }
    return self;
}


@end
