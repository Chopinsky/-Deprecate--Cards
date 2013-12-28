//
//  PlayingCard.h
//  Cards
//
//  Created by Ziwei Zuo on 13-12-28.
//  Copyright (c) 2013年 Ziwei Zuo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit; // string must be declared as a pointer to an array of charaters, and using @property will enable "." notations for array operations.
@property (nonatomic) NSUInteger rank;

@end
