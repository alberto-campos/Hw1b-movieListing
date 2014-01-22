//
//  MoviesArray.m
//  movieListing
//
//  Created by Alberto Campos on 1/21/14.
//  Copyright (c) 2014 Alberto Campos. All rights reserved.
//

#import "MoviesArray.h"

@implementation MoviesArray

@synthesize title;

static MoviesArray *oneMovie = nil;

+(MoviesArray *) oneMovie
{
    @synchronized(self)
    {
        if (oneMovie == nil)
        {
            oneMovie = [[self alloc]init];
        }
    }
    
    return oneMovie;
}

- (id)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    if (self)
    {
        self.title = dict[@"title"];
        self.synopsis = dict[@"synopsis"];
        self.cast =[dict[@"cast"] componentsJoinedByString:@","];
        self.image = dict[@"image"];
    }
    
    return self;
}

//+(MoviesArray *) oneMovie
//{
//    static MoviesArray *oneMovie = nil;
//    if (!oneMovie) {
//        oneMovie = [[super allocWithZone:nil] init];
//    }
//    return oneMovie;
//}
//
//+(id)allocWithZone:(NSZone *)zone
//{
//    return [self oneMovie];
//}
//
//-(id)init
//{
//    self = [super init];
//    if (self){
//        _title = @"Movie title from global";
//    }
//    return self;
//}

@end
