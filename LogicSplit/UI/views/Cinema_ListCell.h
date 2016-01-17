//
//  Cinema_ListCell.h
//  LogicSplit
//
//  Created by 丁丁 on 16/1/16.
//  Copyright © 2016年 huangyanan. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Cinema_ListModel;
@interface Cinema_ListCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) IBOutlet UILabel *circleNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (nonatomic,strong)Cinema_ListModel *model;


@end
