//
//  Deck.h
//  Matchismo
//
//  Created by J.Sterling U1276062 on 16/10/2013.
//  Copyright (c) 2013 J.Sterling U1276062. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;

- (Card *) drawRandomCard;

@end
