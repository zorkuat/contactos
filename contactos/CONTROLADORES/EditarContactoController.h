//
//  EditarContactoController.h
//  contactos
//
//  Created by cice on 5/1/18.
//  Copyright © 2018 TATINC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contacto.h"
#import "EditarContactoDelegate.h"

@interface EditarContactoController : UIViewController<UITextFieldDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@property (nonatomic) Contacto * contacto;

@property (nonatomic,weak) id<EditarContactoDelegate> delegado;

@end
