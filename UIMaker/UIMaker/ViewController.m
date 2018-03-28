

//
//  ViewController.m
//  UIMaker
//
//  Created by liubo on 2018/3/28.
//  Copyright © 2018年 liubo. All rights reserved.
//

#import "ViewController.h"
#import "UIView+KMUIViewMaker.h"
#import "KMUIMakerHeader.h"
#import "Masonry.h"
#import "UIButton+KMButtonMaker.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [UIView km_makeView:^(KMUIViewMaker *make) {
        make
            .backgroundColor([UIColor redColor])
            .cornerRadius(5)
            .borderWidth(1)
            .addToSuperView(self.view)
            .borderColor([UIColor cyanColor])
            .addMasorny(^(MASConstraintMaker *maker) {
                maker.edges.equalTo(self.view);
            });

    }];

    [UIButton km_makeButton:^(KMButtonMaker *make) {
        make.addTargetAndActionForControlEvents(self, @selector(test), UIControlEventTouchUpInside)
            .frame(CGRectMake(100, 84, 150, 130))
            .backgroundColor([UIColor blackColor])
            .addToSuperView(self.view)
            .addMasorny(^(MASConstraintMaker *maker){
				maker.center.equalTo(self.view);
				maker.size.equalTo(@88);
            });
    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    ViewController *v = [ViewController new];
    [self.navigationController pushViewController:v animated:YES];
}
- (void)test {
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)dealloc {
}

@end
