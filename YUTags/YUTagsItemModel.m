//
//  YUTagsItemModel.m
//  YUTags
//
//  Created by yu on 2018/3/12.
//  Copyright © 2018年 yu. All rights reserved.
//

#import "YUTagsItemModel.h"

//文字左距离view边的距离
static CGFloat const TextWithLeft = 6;
//文字顶距离view边的距离
static CGFloat const TextWithTop = 6;

@implementation YUTagsItemModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.itemViewMax = 50;
        self.font = [UIFont systemFontOfSize:12];
    }
    return self;
}

- (void)setText:(NSString *)text {
    _text = text;
    
    CGSize textSize = [self sizeWithFont:self.font andMaxSize:CGSizeMake(self.itemViewMax, self.font.lineHeight) str:text];
    textSize = CGSizeMake(textSize.width + TextWithLeft * 2, textSize.height + TextWithTop * 2);
    _size = textSize;
}


- (CGSize)sizeWithFont:(UIFont*)font andMaxSize:(CGSize)size str:(NSString *)str {
    
    NSDictionary*attrs =@{NSFontAttributeName: font};
    
    CGRect rect = [str boundingRectWithSize:size
                                     options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                  attributes:attrs context:nil];
    
    
    return rect.size;
}

















@end
