//
//  UIAlertController+CBAlert.m
//  317CB
//
//  Created by wanggang on 2018/4/4.
//  Copyright © 2018年 wanggang. All rights reserved.
//

#import "UIAlertController+CBAlert.h"

@implementation UIAlertController (CBAlert)

-(UILabel *)CB_titleLabel{
    return [self CB_viewArray:self.view][0];
}

-(UILabel *)CB_messageLabel{
    return [self CB_viewArray:self.view][1];
}

- (NSArray *)CB_viewArray:(UIView *)rootView{
    static NSArray *_subviews = nil;
    _subviews = nil;
    for (UIView *v in rootView.subviews) {
        if (_subviews) {
            break;
        }
        if ([v isKindOfClass:[UILabel class]]) {
            _subviews = rootView.subviews;
            return _subviews;
        }
        [self CB_viewArray:v];
    }
    return _subviews;
}

@end
