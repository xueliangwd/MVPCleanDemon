//
//  LoginUserCase.m
//  MVPCleanDemon
//
//  Created by 于学良 on 2017/12/29.
//  Copyright © 2017年 yxlGitHub. All rights reserved.
//

#import "LoginTask.h"
#import "LoginDisk.h"
@implementation LoginTask
-(instancetype)initWithParams:(id)params delegate:(id<LoginTaskProtocol>)delegate{
    self = [super init];
    if (self) {
        //在userCase 里任务处理交给子线程
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            [self onThreadWithParams:params delegate:delegate];
        });

    }
    return self;

}
-(void)loginWithParams:(id)params delegate:(id<LoginTaskProtocol>)delegate{
    //在userCase 里任务处理交给子线程
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [self onThreadWithParams:params delegate:delegate];
    });
}
-(void)onThreadWithParams:(id)params delegate:(id<LoginTaskProtocol>)delegate{
    [LoginDisk getLoginDataWithParams:params success:^(UserInfoModel* responseData) {
        if([delegate respondsToSelector:@selector(responseSeccuss:)]){
            [delegate responseSeccuss:responseData];
        }
    } fail:^(ErrorMessage* errorData) {
        if ([delegate respondsToSelector:@selector(resPoseFail:error:)]) {
            [delegate resPoseFail:errorData.code error:errorData.errorMessage];
        }
    }];
}
@end
