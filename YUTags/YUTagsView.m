//
//  YUTagsView.m
//  YUTags
//
//  Created by yu on 2018/3/12.
//  Copyright © 2018年 yu. All rights reserved.
//

#import "YUTagsView.h"
#import "YUTagsItemView.h"
#import "YUTagsItemModel.h"

//水平间隔
static CGFloat const HSpace = 5;
//垂直间隔
static CGFloat const VSpace = 5;


@interface YUTagsView ()

@property (nonatomic,strong) NSMutableArray * allItemViewLists;

@property (nonatomic,strong) NSMutableArray * allItemModelLists;

@end

@implementation YUTagsView



- (instancetype)init
{
    self = [super init];
    if (self) {
        //默认50个
        self.maxItemNum = self.maxItemNum == 0 ? 50 : self.maxItemNum;
        for (int i = 0; i < self.maxItemNum; i++) {
            YUTagsItemView * tagsItemView = [[YUTagsItemView alloc] init];
            tagsItemView.backgroundColor = [UIColor whiteColor];
            [self addSubview:tagsItemView];
            [self.allItemViewLists addObject:tagsItemView];
            
            YUTagsItemModel * tagsItemModel = [[YUTagsItemModel alloc] init];
            [self.allItemModelLists addObject:tagsItemModel];
        }
    }
    return self;
}

#pragma mark - Public method

- (void)reloadTagView {
    CGFloat currentRow = 0;
    for (int i = 0; i < self.allItemModelLists.count; i++) {
        YUTagsItemModel * itemModel = self.allItemModelLists[i];
        YUTagsItemView * view = self.allItemViewLists[i];
        
        view.hidden = itemModel.isHidden;
        [view updateYUTagsItemViewWithItme:itemModel];
        
        CGFloat aboveViewRight = 0;
        if (i != 0) {
            YUTagsItemView * aboveView = self.allItemViewLists[i - 1];
            aboveViewRight = aboveView.frame.origin.x + aboveView.frame.size.width;
        }
        
        if (aboveViewRight + HSpace + itemModel.size.width > self.frame.size.width) {
            currentRow++;
            aboveViewRight = 0;
        }
        
        CGFloat viewLeft = 0 + aboveViewRight + HSpace;
        CGFloat viewTop = 0 + currentRow * (itemModel.size.height + VSpace) + VSpace;
        CGFloat viewWidth = itemModel.size.width;
        CGFloat viewHeight = itemModel.size.height;
        view.frame = CGRectMake(viewLeft, viewTop, viewWidth, viewHeight);
    }
}

#pragma mark - setter

-(void)setTitles:(NSArray<NSString *> *)titles {
    _titles = titles;
    
    for (int i = 0; i < self.allItemModelLists.count; i++) {
        YUTagsItemModel * item = self.allItemModelLists[i];
        item.font = [UIFont systemFontOfSize:9];
        if (i < titles.count) {
            item.text = titles[i];
            item.isHidden = NO;
        }
        else {
            item.isHidden = YES;
            item.text = @"";
        }
    }
}


#pragma mark - getter

- (NSMutableArray *)allItemModelLists {
    if (_allItemModelLists == nil) {
        _allItemModelLists = [[NSMutableArray alloc] init];
    }
    return _allItemModelLists;
}

- (NSMutableArray *)allItemViewLists {
    if (_allItemViewLists == nil) {
        _allItemViewLists = [[NSMutableArray alloc] init];
    }
    return _allItemViewLists;
}




















@end

