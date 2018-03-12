//
//  YUTagsView.h
//  YUTags
//
//  Created by yu on 2018/3/12.
//  Copyright © 2018年 yu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YUTagsView : UIView


/**
 最大标签数
 */
@property (nonatomic,assign) NSInteger maxItemNum;


/**
 标签内容
 */
@property (nonatomic,copy) NSArray<NSString *> * titles;


/**
 更新数据后需要刷新UI
 */
- (void)reloadTagView;

@end
