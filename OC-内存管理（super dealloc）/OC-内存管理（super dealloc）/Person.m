//
//  Person.m
//  OC-内存管理（引用计数）
//
//  Created by qingyun on 16/4/6.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)setName:(NSString *)name
{
    if (_name!=name)
    {
        [_name release];
        _name=[name retain];
    }
}
-(void)setAge:(int)age
{
    _age=age;
}
//重写dealloc方法：无需手动创建和调用  当对象的引用计数为0的时候自动调用
-(void)dealloc
{
    NSLog(@"姓名为%@的Person对象被释放了...",_name);
    [_name release];
    _name=nil;
    [super dealloc];//调用父类的方法
}
@end
