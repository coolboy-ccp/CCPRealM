//
//  CCPUser.m
//  CCPRealM
//
//  Created by 储诚鹏 on 17/2/27.
//  Copyright © 2017年 chuchengpeng. All rights reserved.
//

#import "CCPUser.h"

@implementation CCPUser

+ (NSDictionary<NSString *,RLMPropertyDescriptor *> *)linkingObjectsProperties {
    return @{@"posts" : [RLMPropertyDescriptor descriptorWithClass:CCPRealm.class propertyName:@"author"]};
}

@end
