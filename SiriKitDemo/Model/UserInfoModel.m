//
//  UserInfoModel.m
//  SiriExtensionDemo
//
//  Created by haofree on 2017/7/8.
//  Copyright © 2017年 haofree. All rights reserved.
//

#import "UserInfoModel.h"

@implementation UserInfoModel

+ (NSArray<UserInfoModel *> *)userList {
    
    UserInfoModel *me  = [[UserInfoModel alloc] init];
    me.userIcon        = @"panda.jpg";
    me.userName        = @"张三";
    me.userAccount     = @"18888888888";
    me.userRemarks     = @"恭喜发财";
    
    UserInfoModel *bo  = [[UserInfoModel alloc] init];
    bo.userIcon        = @"yellowBoy.jpg";
    bo.userName        = @"李四";
    bo.userAccount     = @"11437126";
    bo.userRemarks     = @"恭喜发财";
    
    UserInfoModel *jf  = [[UserInfoModel alloc] init];
    jf.userIcon        = @"panda.jpg";
    jf.userName        = @"王五";
    jf.userAccount     = @"11437126";
    jf.userRemarks     = @"恭喜发财";
    
    UserInfoModel *qj  = [[UserInfoModel alloc] init];
    qj.userIcon        = @"panda.jpg";
    qj.userName        = @"周六";
    qj.userAccount     = @"11437126";
    qj.userRemarks     = @"恭喜发财";
    
    UserInfoModel *xm  = [[UserInfoModel alloc] init];
    xm.userIcon        = @"yellowBoy.jpg";
    xm.userName        = @"小明";
    xm.userAccount     = @"18817581720";
    xm.userRemarks     = @"恭喜发财";
    
    return @[me, bo, jf, qj, xm];
}

+ (UserInfoModel *)userInfoNamed:(NSString *)name {

    if (!name.length) {
        return nil;
    }
    
    for (UserInfoModel *info in [self userList]) {
        if ([info.userName isEqualToString:name]) {
            return info;
        }
    }
    
    return nil;
    
}

@end

