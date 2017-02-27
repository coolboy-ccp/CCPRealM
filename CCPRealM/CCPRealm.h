//
//  CCPRealm.h
//  CCPRealM
//
//  Created by 储诚鹏 on 17/2/27.
//  Copyright © 2017年 chuchengpeng. All rights reserved.
//


//不支持CGFloat，支持float，double
#import <Realm/Realm.h>

@class CCPUser;

RLM_ARRAY_TYPE(CCPRealm);
@interface CCPRealm : RLMObject
//主键
@property NSString *mainKey;
//标题
@property NSString *title;
//作者
@property CCPUser *author;
//时间
@property NSDate *time;
//内容
@property NSData *content;
//浏览量
@property NSNumber<RLMInt> *lookNum;
//回帖数
@property RLMArray<CCPRealm *><CCPRealm> *comments;
//是否置顶
@property NSNumber<RLMBool> *isTop;

@end
