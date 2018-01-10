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

/**
 *  Repository 部分，Remote+Local
 *  模拟数据，实际使用中应该是先（从Local）取本地数据，如果不存在，再请求服务器接口（Remote）
 */
@interface LoginDisk : NSObject

/**
* 获取登录数据

 @param params 登录请求参数
 @param success 登录成功返回结果
 @param fail 登录失败信息
 */
+(void)getLoginDataWithParams:(id)params success:(void(^)(UserInfoModel * responseData))success fail:(void(^)(ErrorMessage * errorData))fail;
@end
