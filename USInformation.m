//
//  USInformation.m
//  WhatsBrewing
//
//  Created by Ryan Olson on 8/30/12.
//
//

#import "USInformation.h"

static USInformation * singleton = nil;
static NSDictionary * __infoDictionary = nil;

@implementation USInformation

+(USInformation *)sharedInstance
{
    if (singleton == nil) {
        singleton = [[USInformation alloc] init];
    }
    return singleton;
}

+(NSString *)abbrevForState:(NSString *)state
{
    return [[USInformation sharedInstance].infoDictionary valueForKey:[state uppercaseString]];
}

-(NSDictionary *)infoDictionary
{
    if (__infoDictionary == nil) {
        NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"USStateAbbreviations" ofType:@"plist"];
        __infoDictionary = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
    }
    return __infoDictionary;
}

@end
