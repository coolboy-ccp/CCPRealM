//
//  ViewController.m
//  CCPRealM
//
//  Created by 储诚鹏 on 17/2/24.
//  Copyright © 2017年 chuchengpeng. All rights reserved.
//

#import "ViewController.h"
#import "Realm.h"
#import "CCPUser.h"
#import "CCPRealm.h"

@interface Dog : RLMObject
@property NSString *name;
@property NSInteger age;
@end

@implementation Dog

@end

RLM_ARRAY_TYPE(Dog);
@interface Person : RLMObject

@property NSString *name;
@property RLMArray<Dog *><Dog> *dogs;

@end

@implementation Person

@end

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Dog *dog = [[Dog alloc] init];
    dog.name = @"honey";
    dog.age = 1;
    Person *person = [[Person alloc] init];
    person.name = @"mick";
    [person.dogs addObject:dog];
    RLMResults *result = [Dog objectsWhere:@"age < 2"];
    NSLog(@"result:%@",result);
    [[RLMRealm defaultRealm] transactionWithBlock:^{
        [[RLMRealm defaultRealm] addObject:dog];
        NSLog(@"result2:%@",result);
    }];
    [self postModel];
}


- (void)postModel {
    CCPRealm *post = [[CCPRealm alloc] initWithValue:@{@"title" : @"test"}];
    post.mainKey = @"ccppost";
    CCPUser *user = [[CCPUser alloc] init];
    user.nickName = @"Cool ccp";
    RLMRealm *r = [RLMRealm defaultRealm];
    post.author = user;
    [r transactionWithBlock:^{
        [r addObject:post];
        [r addObject:user];
        NSLog(@"author----%@",user.posts);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
