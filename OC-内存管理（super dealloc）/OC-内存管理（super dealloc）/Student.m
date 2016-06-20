//
//  Student.m
//  OC-内存管理（引用计数）
//
//  Created by qingyun on 16/4/6.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Student.h"

@implementation Student
-(void)setStuID:(NSString *)ID
{
    if (_stuID!=ID)
    {
        [_stuID release];
        _stuID=[ID retain];
    }
}
-(void)dealloc
{
    NSLog(@"编号为%@的学生被释放了...",_stuID);
    [_stuID release];
    _stuID=nil;
    [super dealloc];//应该先释放本类的内存，再去释放从父类继承过来的属性
}
@end
