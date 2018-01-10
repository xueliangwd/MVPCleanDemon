//
//  LoginPresenter.h
//  MVPCleanDemon
//
//  Created by 于学良 on 2017/12/28.
//  Copyright © 2017年 yxlGitHub. All rights reserved.
//

#import "Presenter.h"

@interface LoginPresenter : Presenter

/**
 Presenter 响应登录事件

 @param userNameString 用户名
 @param pwdString 密码
 */
-(void)loginWithUserName:(NSString*)userNameString password:(NSString*)pwdString;
@end
