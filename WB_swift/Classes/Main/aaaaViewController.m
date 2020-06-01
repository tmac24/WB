//
//  aaaaViewController.m
//  WB_swift
//
//  Created by ishop02 on 2020/5/29.
//  Copyright © 2020 happy. All rights reserved.
//

#import "aaaaViewController.h"

@interface aaaaViewController ()

@end

@implementation aaaaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self getRequest:^{
        NSLog(@"主线程中,将数据回调.%@", [NSThread currentThread]);
    }];
}


- (void)loadRequest:(void(^)(void))callBackBlock
{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"加载网络数据:%@", [NSThread currentThread]);

        dispatch_async(dispatch_get_main_queue(), ^{
            callBackBlock();
            
        });
    });
}

- (void)getRequest:(void(^)(void))complentBlock{
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"%@加载网络线程",[NSThread currentThread]);
        
        dispatch_async(dispatch_get_main_queue(), ^{
            complentBlock();
        });
    });
}




@end
