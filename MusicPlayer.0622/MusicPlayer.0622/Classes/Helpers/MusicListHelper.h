//
//  MusicListHelper.h
//  MusicPlayer.0622
//
//  Created by lanou3g on 15/9/14.
//  Copyright (c) 2015年 蓝鸥科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MusicItem.h"
typedef void(^block)() ;
@interface MusicListHelper : NSObject
@property(nonatomic,strong) NSArray *allMusic;

+(MusicListHelper *)shareHelper;

- (void)requestAllMusicWithFinish:(void(^)())result;
- (MusicItem *)itemWithIndex:(NSInteger )index;
@property(nonatomic,assign)block bloc;
@end
