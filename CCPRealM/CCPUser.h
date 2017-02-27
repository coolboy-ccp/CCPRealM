//
//  CCPUser.h
//  CCPRealM
//
//  Created by 储诚鹏 on 17/2/27.
//  Copyright © 2017年 chuchengpeng. All rights reserved.
//

#import <Realm/Realm.h>
#import "CCPRealm.h"

@interface CCPUser : RLMObject

@property NSString *nickName;
//one-many
@property (readonly) RLMLinkingObjects *posts;


@end
