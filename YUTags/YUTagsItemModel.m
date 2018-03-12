//
//  YUTagsItemModel.m
//  YUTags
//
//  Created by yu on 2018/3/12.
//  Copyright © 2018年 yu. All rights reserved.
//

#import "YUTagsItemModel.h"



@implementation YUTagsItemModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.itemViewMax = 50;
        self.font = [UIFont systemFontOfSize:12];
        self.textWithLeft = 6;
        self.textWithTop = 6;
    }
    return self;
}

- (void)setText:(NSString *)text {
    _text = text;
    
    CGSize textSize = [self sizeWithFont:self.font andMaxSize:CGSizeMake(self.itemViewMax, self.font.lineHeight) str:text];
    
    _textSize = textSize;
    
    textSize = CGSizeMake(textSize.width + self.textWithLeft * 2, textSize.height + self.textWithTop * 2);
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
