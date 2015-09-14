//
//  MusicItem.m
//  MusicPlayer.0622
//
//  Created by lanou3g on 15/9/14.
//  Copyright (c) 2015年 蓝鸥科技. All rights reserved.
//

#import "MusicItem.h"

@implementation MusicItem

-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    if ([key isEqualToString:@"id"]) {
        _ID = value;
    }

}



@end
