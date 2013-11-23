//
//  loc.h
//  Mapamusic
//
//  Created by Jose Luis Rodriguez on 27/08/12.
//  Copyright (c) 2012 Jonathan Olvera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MKAnnotation.h>
@interface loc : NSObject <MKAnnotation>{

    CLLocationCoordinate2D coordinate;
    NSString *title;
    NSString *subtitle;

}
@property (nonatomic, assign)CLLocationCoordinate2D coordinate;
@property (nonatomic, copy)NSString *title;
@property (nonatomic, copy)NSString *subtitle;

@end
