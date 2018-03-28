UIMaker,扩展KMUIViewMaker 添加addMasorny

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
			.addMasorny(^(MASConstraintMaker *maker) {
				maker.center.equalTo(self.view);
				maker.size.equalTo(@88);
			});
	}];

