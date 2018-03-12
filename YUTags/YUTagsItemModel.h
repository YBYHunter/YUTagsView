//
//  YUTagsItemModel.h
//  YUTags
//
//  Created by yu on 2018/3/12.
//  Copyright © 2018年 yu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface YUTagsItemModel : NSObject

@property (nonatomic,strong) NSString * text;

@property (nonatomic,assign,readonly) CGSize size;

@property (nonatomic,strong) UIFont * font;


/**
 item 的最大宽度
 */
@property (nonatomic,assign) CGFloat itemViewMax;


/**
 隐藏
 */
@property (nonatomic,assign) BOOL isHidden;

@end
