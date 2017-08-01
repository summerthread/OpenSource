//
//  ViewController.m
//  FBKVODemo
//
//  Created by P2P on 2017/8/1.
//  Copyright © 2017年 summer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)FBKVOController *kvoController;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark 懒加载
- (FBKVOController *)kvoController{
    if (_kvoController) {
        _kvoController = [[FBKVOController alloc]initWithObserver:self];
    }
    return _kvoController;
}
@end
