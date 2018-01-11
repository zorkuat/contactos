//
//  editarContactoDelegate.h
//  contactos
//
//  Created by cice on 11/1/18.
//  Copyright © 2018 TATINC. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contacto;

@protocol EditarContactoDelegate <NSObject>

-(void)guardarContacto:(Contacto*)contacto;
-(void)cancelar;

@end
