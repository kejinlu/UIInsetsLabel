//
//  UIInsetsLabel.m
//  UIInsetsLabel
//  Created by Lu Kejin on 2/28/12.
//  Copyright (c) 2012 geeklu.com. All rights reserved.
//

#import "UIInsetsLabel.h"

@implementation UIInsetsLabel
@synthesize insets=_insets;

- (id)initWithFrame:(CGRect)frame andInsets:(UIEdgeInsets)insets {
    self = [super initWithFrame:frame];
    if(self){
        self.insets = insets;
    }
    return self;
}


- (id) initWithInsets:(UIEdgeInsets)insets {
    self = [super init];
    if(self){
        self.insets = insets;
    }
    return self;
}


-(void) drawTextInRect:(CGRect)rect {
    return [super drawTextInRect:UIEdgeInsetsInsetRect(rect, self.insets)];
}


- (CGSize)sizeThatFits:(CGSize)size{
    size = [super sizeThatFits:size];
    
    //UILabel的sizeThatFits会自动根据字的大小调整size，然后再在此基础上加入insets的大小
    CGFloat newWidth = size.width + self.insets.left + self.insets.right;
    CGFloat newHeight = size.height + self.insets.top + self.insets.bottom;
    return CGSizeMake(newWidth, newHeight);
}

@end
