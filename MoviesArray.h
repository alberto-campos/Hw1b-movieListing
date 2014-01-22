//
//  MoviesArray.h
//  movieListing
//
//  Created by Alberto Campos on 1/21/14.
//  Copyright (c) 2014 Alberto Campos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MoviesArray : NSObject {

   //  NSString *title;
}

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *synopsis;
@property (nonatomic, strong) NSString *cast;
@property (nonatomic, strong) NSString *image;
- (id)initWithDictionary:(NSDictionary *)dict;

+(MoviesArray *) oneMovie;

@end
