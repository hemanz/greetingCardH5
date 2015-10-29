//
//  PaintCardViewController.m
//  ELawyer
//
//  Created by 张鹤楠 on 15/10/18.
//  Copyright © 2015年 binfenfuture. All rights reserved.
//
#define wid [UIScreen mainScreen].bounds.size.width
#define heigh [UIScreen mainScreen].bounds.size.height

#import "PaintCardViewController.h"
#import "PaintView.h"
#import "compoentModel.h"


@interface PaintCardViewController ()
{
    NSMutableArray *compentModelArray;
    UIView *paintView;
}

@end

@implementation PaintCardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self creatUI];
   
}

- (void)creatUI{
    
    NSMutableArray *arr = [self creatTestArray];
    paintView = [[PaintView alloc] initWithFrame:CGRectMake(0,0,wid,heigh) withCompoentDataArray:arr];
    [self.view addSubview:paintView];
    
}

- (NSMutableArray *)creatTestArray{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    compoentModel *model = [[compoentModel alloc] init];
    model.width = 20;
    model.height = 50;
    model.top = 100;
    model.left = 100;
    model.text = @"哈哈";
    compoentModel *model1 = [[compoentModel alloc] init];
    model.width = 120;
    model.height = 150;
    model.top = 300;
    model.left = 400;
    model.text = @"哈哈";
    [array addObject:model];
    [array addObject:model1];
    return array;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
