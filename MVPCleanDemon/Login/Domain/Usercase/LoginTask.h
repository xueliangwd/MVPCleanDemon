//
//  LoginUserCase.h
//  MVPCleanDemon
//
//  Created by 于学良 on 2017/12/29.
//  Copyright © 2017年 yxlGitHub. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginTaskProtocol.h"
@interface LoginTask : NSObject{

}
//-(instancetype)initWithParams:(id)params delegate:(id<LoginTaskProtocol>)delegate;

/**
 向服务器发起登录请求，在子线程中处理

 @param params 登录请求参数，如 用户名、密码
 @param delegate 登录请求代理，用来接收请求结果
 */
-(void)loginWithParams:(id)params delegate:(id<LoginTaskProtocol>)delegate;//登录
@end
