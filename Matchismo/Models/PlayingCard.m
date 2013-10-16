//
//  PlayingCard.m
//  Matchismo
//
//  Created by J.Sterling U1276062 on 16/10/2013.
//  Copyright (c) 2013 J.Sterling U1276062. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *) contents
{
    NSArray *rankStrings = @[@"?",@"A",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
              

    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

- (void) setSuit:(NSString *)suit
{
    if ([@[@"♥",@"♦",@"♠",@"♣"] containsObject:suit]){
        _suit = suit;
    }
}
 
-(NSString *)suit
{
    return _suit ? _suit : @"?";
}



@end
