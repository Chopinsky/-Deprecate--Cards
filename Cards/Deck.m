//
//  Deck.m
//  Cards
//
//  Created by Ziwei Zuo on 13-12-27.
//  Copyright (c) 2013年 Ziwei Zuo. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray *cards;
@end

@implementation Deck

- (NSMutableArray *)cards
{
    if (!_cards) {
        // "lazily" initialize the the array, so that the memory demands for the program is minimized until really needed. 
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        // if at the top of the array, insert the object
        // to initialize the array; otherwise just add
        // object to the array.
        [self.cards insertObject: card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
}

- (void)addCard:(Card *)card
{
    [self addCard: card atTop:NO]; // calls the method w/ 2 parameters as defined prior to this one.
}

- (Card *)drawRandomCard
{
    return self;
}

@end
