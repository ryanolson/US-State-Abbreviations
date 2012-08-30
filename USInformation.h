//
//  USInformation.h
//  WhatsBrewing
//
//  Created by Ryan Olson on 8/30/12.
//
//

#import <Foundation/Foundation.h>

@interface USInformation : NSObject
@property (readonly) NSDictionary * infoDictionary;
+(USInformation *)sharedInstance;
+(NSString *) abbrevForState:(NSString *)state;
@end
