//
//  ViewController.m
//  YUTags
//
//  Created by yu on 2018/3/12.
//  Copyright © 2018年 yu. All rights reserved.
//

#import "ViewController.h"
#import "YUTagsView.h"

@interface ViewController ()

@property (nonatomic,strong) YUTagsView * tagsView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.tagsView];
    
    self.tagsView.titles = @[@"天气1",@"天气2",@"哈哈哈哈哈哈哈吃啊喝日",@"天气3",@"天气4",@"天气5",@"天气6",@"天气7"];
    [self.tagsView reloadTagView];
}


#pragma mark - getter

- (YUTagsView *)tagsView {
    if (_tagsView == nil) {
        _tagsView = [[YUTagsView alloc] init];
        CGFloat width = 200;
        _tagsView.frame = CGRectMake(([UIScreen mainScreen].bounds.size.width - width)/2,
                                     100,
                                     width,
                                     300);
        _tagsView.backgroundColor = [UIColor whiteColor];
        _tagsView.layer.borderColor = [UIColor lightGrayColor].CGColor;
        _tagsView.layer.borderWidth = 1;
    }
    return _tagsView;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
