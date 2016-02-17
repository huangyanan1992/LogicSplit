//
//  Cinema_ListModel.h
//  LogicSplit
//
//  Created by 丁丁 on 16/1/16.
//  Copyright © 2016年 huangyanan. All rights reserved.
//

#import "JsonToModel.h"

@interface Cinema_ListModel : JsonToModel

@property (nonatomic,copy)NSString *address;
@property (nonatomic,copy)NSString *name;
@property (nonatomic,copy)NSString *circleName;

@end
