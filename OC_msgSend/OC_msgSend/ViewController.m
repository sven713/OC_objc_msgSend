//
//  ViewController.m
//  OC_msgSend
//
//  Created by sve on 2018/6/15.
//  Copyright © 2018年 sve. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <objc/message.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    Person *preson = [[Person alloc] init];
    
//    [preson eat];
    
//    objc_msgSend(preson, @selector(eat),nil);
    objc_msgSend(preson, @selector(eat:), @"汉堡");
}




@end
