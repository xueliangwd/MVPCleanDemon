//
//  UserCaseCallBackProtocol.h
//  MVPCleanDemon
//
//  Created by 于学良 on 2017/12/29.
//  Copyright © 2017年 yxlGitHub. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  Login的UserCase登录结果接口
 *  在主线程返回登录成功或登录失败的结果
 */
@protocol LoginTaskProtocol <NSObject>

/**
 登录成功回调

 @param responseObject 登录成功响应报文
 */
-(void)responseSeccuss:(id)responseObject;

/**
 登录失败回调

 @param errorCode 失败错误码
 @param errorMessage 失败原因描述
 */
-(void)resPoseFail:(NSInteger )errorCode error:(NSString *)errorMessage;
@end
