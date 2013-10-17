//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by J.Sterling U1276062 on 17/10/2013.
//  Copyright (c) 2013 J.Sterling U1276062. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"


@interface CardMatchingGame : NSObject

- (id)initWithCardCount:(NSUInteger)count
              usingDeck:(Deck *)deck;

- (void)flipCardAtIndex:(NSUInteger)index;

- (Card *)cardAtIndex:(NSUInteger)index;

@property (readonly, nonatomic) int score;

@end
