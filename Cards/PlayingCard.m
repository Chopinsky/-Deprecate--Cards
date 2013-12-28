//
//  PlayingCard.m
//  Cards
//
//  Created by Ziwei Zuo on 13-12-28.
//  Copyright (c) 2013年 Ziwei Zuo. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *)contents
{
    // format the contents string, where the color and number of the card is stored.
    // contents is introduced in Card.h, but only defined here.
    //return [NSString stringWithFormat:@"%d%@", self.rank, self.suit];
    
    // another way of doing this is using NSArray, since the number of cards is between 1 to 13, which is small in number and finite.
    NSArray *rankStrings = @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", "Q", @"K"]; // the array of strings.
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

- (void)setSuit:(NSString *)suit
{
    // only accept input of chosen types. Otherwise _suit will not be defined.
    // the @[...] creat a new array, which is similar to enumarate initialization of an array in Java. Otherwise, [...] is only an object operation syntex, as used in the outmost bracket below:
    if ([@[@"heart", @"square", @"blade", @"flower"] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit // initializing the object NSString *suit
{
    // this is very similar to the definition: @synthesis suit = _suit, as in <version_a/Student.m>
    return _suit ? _suit : @"?";  // if _suit is defined, then just return its value to suit; otherwise, return @"?", which is matching w/ the @"?" rank for this card.
}

@end
