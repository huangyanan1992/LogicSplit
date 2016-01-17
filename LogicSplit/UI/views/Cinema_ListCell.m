//
//  Cinema_ListCell.m
//  LogicSplit
//
//  Created by 丁丁 on 16/1/16.
//  Copyright © 2016年 huangyanan. All rights reserved.
//

#import "Cinema_ListCell.h"
#import "Cinema_ListModel.h"

@implementation Cinema_ListCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setModel:(Cinema_ListModel *)model {
    if (_model != model) {
        _model = model;
        [self layoutIfNeeded];
    }
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.addressLabel.text = self.model.address;
    self.name.text = self.model.name;
    self.circleNameLabel.text = self.model.circleName;
}

@end
