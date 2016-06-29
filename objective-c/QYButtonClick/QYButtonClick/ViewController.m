//
//  ViewController.m
//  QYButtonClick
//
//  Created by zhaotengfei on 16/6/29.
//  Copyright © 2016年 zhaotengfei. All rights reserved.
//
#import "UIButton+Helper.h"
#import "ViewController.h"

static int clickTime;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    leftButton.hyn_acceptEventInterval=1.0;
    leftButton.backgroundColor = [UIColor yellowColor];
    [leftButton setTitle:@"点击" forState:UIControlStateNormal];
    [leftButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    leftButton.titleLabel.font = [UIFont systemFontOfSize:16];
    [leftButton addTarget:self
                   action:@selector(leftButtonClick)
         forControlEvents:UIControlEventTouchUpInside];
    leftButton.frame = CGRectMake(0, 0, 200, 44);
    leftButton.center=self.view.center;
    [self.view addSubview:leftButton];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)leftButtonClick{
    clickTime+=1;
    NSLog(@"第%d次响应点击",clickTime);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
