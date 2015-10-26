//
//  compoentModel.h
//  ELawyer
//
//  Created by 张鹤楠 on 15/10/18.
//  Copyright © 2015年 binfenfuture. All rights reserved.
//

#import <Foundation/Foundation.h>
@import CoreGraphics;

@interface compoentModel : NSObject

@property BOOL isPic;
@property BOOL isCircle;
@property (nonatomic,copy)NSString *picUrl;
@property (nonatomic,strong)NSString *text;
@property (nonatomic,strong)NSString *textColor;
@property (nonatomic) NSInteger fontSize;
@property (nonatomic) NSInteger width;
@property (nonatomic) NSInteger heigh;
@property (nonatomic) CGPoint point;
@property (nonatomic,copy) NSString *annimation;
@end
