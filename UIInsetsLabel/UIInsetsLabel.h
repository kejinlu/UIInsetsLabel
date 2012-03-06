//
//  TBInsetsLabel.h
//  UIInsetsLabel
//  Created by Lu Kejin on 2/28/12.
//  Copyright (c) 2012 geeklu.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIInsetsLabel : UILabel
@property(nonatomic) UIEdgeInsets insets;
-(id) initWithFrame:(CGRect)frame andInsets: (UIEdgeInsets) insets;
-(id) initWithInsets: (UIEdgeInsets) insets;
@end
