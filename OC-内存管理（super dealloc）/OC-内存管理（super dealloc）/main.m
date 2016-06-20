//
//  main.m
//  OC-内存管理（super dealloc）
//
//  Created by qingyun on 16/4/6.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        Person *p1=[Person new];
//        [p1 setName:@"张三疯"];
//        [p1 release];
        
        Student *s1=[Student new];
        [s1 setName:@"小欧"];
        [s1 setAge:21];
        [s1 setStuID:@"1603102"];
        [s1 release];//0
        
        //强调：内存管理：管理的是OC中的对象！
    }
    return 0;
}
