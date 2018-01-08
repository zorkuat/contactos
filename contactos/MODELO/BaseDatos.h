//
//  BaseDatos.h
//  contactos
//
//  Created by cice on 5/1/18.
//  Copyright © 2018 TATINC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contacto.h"

@interface BaseDatos : NSObject

@property (nonatomic) NSMutableArray<Contacto*> *contactos;

// Driver
-(void)loadDatabase;

@end
