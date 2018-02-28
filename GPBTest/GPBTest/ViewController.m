//
//  ViewController.m
//  GPBTest
//
//  Created by zhaoyan on 2018/2/27.
//  Copyright © 2018年 WGH. All rights reserved.
//

#import "ViewController.h"
#import "Auth.pbobjc.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AuthInfo *authInfo = [[AuthInfo alloc] init];
    authInfo.flag = 123;
    authInfo.userId = 123;
    authInfo.sign = @"sign";

    // 解析成data
    NSData * data = [authInfo data];
    
    // data转对象
    NSError * error = nil;
    AuthInfo * info_1 = [AuthInfo parseFromData:data error:&error];
    
    NSLog(@"\ninfo_1 -- %@", info_1);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
