//
//  JsonToModel.h
//  JsonToModel
//
//  Created by 丁丁 on 15/11/16.
//  Copyright © 2015年 huangyanan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JsonToModel : NSObject

/*dict:从服务器获取的json数据
 *mapDict:有些特殊数据名称可能是关键字，可以使用mapDict重新定义该名称
 */
+ (instancetype)objcWithDict:(NSDictionary *)dict mapDict:(NSDictionary *)mapDict;
@end
