//
//  CCPRealm.m
//  CCPRealM
//
//  Created by 储诚鹏 on 17/2/27.
//  Copyright © 2017年 chuchengpeng. All rights reserved.
//

#import "CCPRealm.h"
#import "CCPUser.h"

@implementation CCPRealm

//必须属性
+ (NSArray<NSString *> *)requiredProperties {
    return @[@"title"];//非空
}

//可忽略属性
+ (NSArray<NSString *> *)ignoredProperties {
    return @[];
}

//默认值
+ (NSDictionary *)defaultPropertyValues {
    return @{@"lookNum" : @(0), @"isTop" : @(0)};
}

//索引:索引的搜索速度比普通属性搜索速度快
+ (NSArray<NSString *> *)indexedProperties {
    return @[@"title", @"time"];
}

//主键：主键具有唯一性，搜索速度最快
+ (NSString *)primaryKey {
    return @"mainKey";
}

@end
