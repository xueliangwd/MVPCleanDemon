//
//  UserInfoModel.h
//  MVPCleanDemon
//
//  Created by 于学良 on 2017/12/29.
//  Copyright © 2017年 yxlGitHub. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 登录成功后，返回的用户信息
 */
@interface UserInfoModel : NSObject
@property(nonatomic,strong)NSString *userName;
@property(nonatomic,strong)NSString *userId;
@property(nonatomic,strong)NSString *userToken;
@end
