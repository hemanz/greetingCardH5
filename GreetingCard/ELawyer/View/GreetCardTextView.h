//
//  GreetCardTextView.h
//  ELawyer
//
//  Created by 张鹤楠 on 15/10/23.
//  Copyright © 2015年 binfenfuture. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GreetCardTextView : UIView

{
    CGPoint beginPoint;
}

@property (nonatomic) BOOL dragEnable;
@property (nonatomic) BOOL stroke;
@property (nonatomic)UIColor *textColor;


@end
