//
//  YUTagsItemView.m
//  YUTags
//
//  Created by yu on 2018/3/12.
//  Copyright © 2018年 yu. All rights reserved.
//

#import "YUTagsItemView.h"

@interface YUTagsItemView ()

@property (nonatomic,strong) UILabel * titleLab;

@property (nonatomic,strong) UIImageView * bgImageView;

@end

@implementation YUTagsItemView

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self addSubview:self.bgImageView];
        [self addSubview:self.titleLab];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.bgImageView.frame = self.bounds;
    self.titleLab.center = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
}

- (void)updateYUTagsItemViewWithItme:(YUTagsItemModel *)item {
    self.titleLab.text = item.text;
    self.titleLab.font = item.font;
    [self.titleLab sizeToFit];
    
}




#pragma mark - getter

- (UILabel *)titleLab {
    if (_titleLab == nil) {
        _titleLab = [[UILabel alloc] init];
        _titleLab.tintColor = [UIColor blackColor];
    }
    return _titleLab;
}

- (UIImageView *)bgImageView {
    if (_bgImageView == nil) {
        _bgImageView = [[UIImageView alloc] init];
        UIImage * image = [UIImage imageNamed:@"chat_headframe"];
        image = [image stretchableImageWithLeftCapWidth:image.size.width*0.5 topCapHeight:image.size.height * 0.5];
        _bgImageView.image = image;
    }
    return _bgImageView;
}






















@end
