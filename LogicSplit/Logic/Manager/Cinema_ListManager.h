//
//  Cinema_ListManager.h
//  LogicSplit
//
//  Created by 丁丁 on 16/1/16.
//  Copyright © 2016年 huangyanan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^CinemaListBlock)(NSArray *result);

@interface Cinema_ListManager : NSObject

@property (nonatomic,copy)CinemaListBlock cinemaListBlock;

//获取列表
- (void)getCinema_ListWithBlcok:(CinemaListBlock)cinemaList;

@end
