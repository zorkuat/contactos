//
//  ListadoContactosControler.m
//  contactos
//
//  Created by cice on 5/1/18.
//  Copyright © 2018 TATINC. All rights reserved.
//

#import "ListadoContactosControler.h"
#import "DetalleContactoController.h"

@interface ListadoContactosControler ()

@end

@implementation ListadoContactosControler

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.bbdd = [[BaseDatos alloc] init];
    
    [self.bbdd loadDatabase];
    
    NSLog(@"%ld",self.bbdd.contactos.count);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
    
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
// #warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
// #warning Incomplete implementation, return the number of rows
    return self.bbdd.contactos.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    Contacto *contacto = self.bbdd.contactos[indexPath.row];
    
    cell.textLabel.text = contacto.nombre;
    cell.detailTextLabel.text = contacto.telefono;
    
    return cell;
}

// Este método es el Adolfo Suárez de los métodos.
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"verContacto"])
    {
        // Generamos una variable auxiliar recuperando el contacto desde la fila seleccionada ppor el usuario.
        int filaSeleccionada = (int)self.tableView.indexPathForSelectedRow.row;
     
        Contacto * contactoSeleccionado = self.bbdd.contactos[filaSeleccionada];
        
        DetalleContactoController *escenaDestino = segue.destinationViewController;
        
        // Vamos a pasar la información
        escenaDestino.contacto = contactoSeleccionado;
        
    }
 
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
