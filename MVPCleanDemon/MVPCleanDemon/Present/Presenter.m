//
//  Presenter.m
//  MVPCleanDemon
//
//  Created by 于学良 on 2017/12/28.
//  Copyright © 2017年 yxlGitHub. All rights reserved.
//

#import "Presenter.h"

@implementation Presenter
/**
 初始化函数
 */
- (instancetype)initWithView:(id)view{

    if (self = [super init]) {
        _view = view;
    }
    return self;
}
/**
 * 绑定视图
 * @param view 要绑定的视图
 */
- (void) attachView:(id)view {
    _view = view;
}


/**
 解绑视图
 */
- (void)detachView{
    _view = nil;
}
@end
