//
//  UserCaseCallBackProtocol.h
//  MVPCleanDemon
//
//  Created by 于学良 on 2017/12/29.
//  Copyright © 2017年 yxlGitHub. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol LoginTaskProtocol <NSObject>
-(void)responseSeccuss:(id)responseObject;
-(void)resPoseFail:(NSInteger )errorCode error:(NSString *)errorMessage;
@end
