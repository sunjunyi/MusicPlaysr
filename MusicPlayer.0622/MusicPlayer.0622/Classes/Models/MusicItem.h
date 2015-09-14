//
//  MusicItem.h
//  MusicPlayer.0622
//
//  Created by lanou3g on 15/9/14.
//  Copyright (c) 2015年 蓝鸥科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MusicItem : NSObject
@property(nonatomic,strong)NSString *mp3Url;
@property(nonatomic,strong)NSString *ID;
@property(nonatomic,strong)NSString *name;
@property(nonatomic,strong)NSString *picUrl;
@property(nonatomic,strong)NSString *blurPicUrl;
@property(nonatomic,strong)NSString *album;
@property(nonatomic,strong)NSString *singer;
@property(nonatomic,strong)NSString *duration;
@property(nonatomic,strong)NSString *artists_name;
@property(nonatomic,strong)NSString *lyric;
@end
