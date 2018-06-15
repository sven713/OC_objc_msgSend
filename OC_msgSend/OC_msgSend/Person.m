//
//  Person.m
//  OC_msgSend
//
//  Created by sve on 2018/6/15.
//  Copyright © 2018年 sve. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>

@implementation Person

+(BOOL)resolveInstanceMethod:(SEL)sel {
    const char * type = "type";
    class_addMethod(self, sel, eat, type);
    
    return [super resolveInstanceMethod:sel];
}


// 下面两种写法都行 方法有两个隐藏参数 id self, SEL _cmd, self是函数的第一个参数
void eat(Person *person, SEL sel, NSString *food ){
    NSLog(@"吃了%@",food);
}

//void eat(id self,SEL _cmd,NSString *food){
//    NSLog(@"吃了%@",food);
//}

@end
