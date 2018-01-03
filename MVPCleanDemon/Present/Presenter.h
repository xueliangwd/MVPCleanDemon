//
//  Presenter.h
//  MVPCleanDemon
//
//  Created by 于学良 on 2017/12/28.
//  Copyright © 2017年 yxlGitHub. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Presenter : NSObject{

    //MVP中负责更新的视图
    __weak id _view;
}

/**
 初始化函数

 @param view 要绑定的视图
 */
- (instancetype) initWithView:(id)view;

/**
 * 绑定视图
 * @param view 要绑定的视图
 */
- (void) attachView:(id)view ;

/**
 解绑视图
 */
- (void)detachView;
@end
