//
//  LoginPresenter.m
//  MVPCleanDemon
//
//  Created by 于学良 on 2017/12/28.
//  Copyright © 2017年 yxlGitHub. All rights reserved.
//

#import "LoginPresenter.h"
#import "LoginTask.h"
#import "LoginProtocol.h"
@interface LoginPresenter()<LoginTaskProtocol>{

}

@end
@implementation LoginPresenter
-(instancetype)initWithView:(id)view{
    self = [super initWithView:view];
    if (self) {

    }
    return self;
}
-(void)loginWithUserName:(NSString*)userNameString password:(NSString*)pwdString{
    //通过usercaseHandle 发起登录流程
   //userCase login
    LoginTask *task = [[LoginTask alloc]init];//Task 就是一个具体的UserCase 完成一项具体业务
    //调用 UserCase Handle方法
    [task loginWithParams:@{@"userNameString":userNameString,@"pwdString":pwdString} delegate:self];
}

#pragma mark UserCaseCallBac
//登录成功
-(void)responseSeccuss:(id)responseObject{
    if ([_view respondsToSelector:@selector(loginSuccess:)]) {
        [_view loginSuccess:responseObject];
    }
}
//登录失败
-(void)resPoseFail:(NSInteger )errorCode error:(NSString *)errorMessage{
    if ([_view respondsToSelector:@selector(loginFail:errorMessage:)]) {
        [_view loginFail:errorCode errorMessage:errorMessage];
    }
}
@end
