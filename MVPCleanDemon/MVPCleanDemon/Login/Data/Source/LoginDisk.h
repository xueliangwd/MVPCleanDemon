//
//  LoginDisk.h
//  MVPCleanDemon
//
//  Created by 于学良 on 2018/1/3.
//  Copyright © 2018年 yxlGitHub. All rights reserved.
//

#import <Foundation/Foundation.h>
#import"UserInfoModel.h"
#import "ErrorMessage.h"
@interface LoginDisk : NSObject
+(void)getLoginDataWithParams:(id)params success:(void(^)(UserInfoModel * responseData))success fail:(void(^)(ErrorMessage * errorData))fail;
@end
