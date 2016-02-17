//
//  Cinema_ListManager.m
//  LogicSplit
//
//  Created by 丁丁 on 16/1/16.
//  Copyright © 2016年 huangyanan. All rights reserved.
//

#import "Cinema_ListManager.h"
#import "Cinema_ListModel.h"
@implementation Cinema_ListManager

- (void)getCinema_ListWithBlcok:(CinemaListBlock)cinemaList {
    if (!_cinemaListBlock) {
        _cinemaListBlock = cinemaList;
        
        //============这里是从本地文件取的json，实际开发中应从网络获取==================
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"cinema_list.json" ofType:nil];
        NSData *data = [NSData dataWithContentsOfFile:filePath];
        NSDictionary *result = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        NSArray *list = result[@"cinemaList"];
        //=====================================================================
        
        //这里还可以对获取到的数据进行持久化等其他逻辑处理。
        NSMutableArray *resultArray = [NSMutableArray array];
        [list enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            Cinema_ListModel *model = [Cinema_ListModel objcWithDict:obj mapDict:nil];
            [resultArray addObject:model];
        }];
        
        //这里不能直接返回reuslt，因为实际开发中这里是处理网络请求的数据，在获取数据成功后的block中是不能直接返回result的。类似于下面这种形式
        //return resultArray;
        self.cinemaListBlock(resultArray);
    }
    
}

//- (void)getCinema_ListWithBlcok:(CinemaListBlock)cinemaList {
//    [DD_CORE.CinemaService getCinema_ListWithParam:param
//                                                   resopnse:^(NSInteger result, NSDictionary *dict, DDError *error){

//           _cinemaListBlock = cinemaList;
//           if (result == EDDResponseResultSucceed) {
//               
//               NSArray *list = dict[@"cinemaList"];
//               NSMutableArray *resultArray = [NSMutableArray array];
//               [list enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//                   Cinema_ListModel *model = [Cinema_ListModel objcWithDict:obj mapDict:nil];
//                   [resultArray addObject:model];
//               }];
//               self.cinemaListBlock(resultArray);
//               
//               
//           }
//           else {
//               DD_LOG(@"获取失败");
//           }
//    
//       }
//     
//                                                        
//     }];
//
//
//}

@end
