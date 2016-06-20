//
//  Person.h
//  OC-内存管理（引用计数）
//
//  Created by qingyun on 16/4/6.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
    int _age;
}
-(void)setName:(NSString *)name;
-(void)setAge:(int)age;
@end
