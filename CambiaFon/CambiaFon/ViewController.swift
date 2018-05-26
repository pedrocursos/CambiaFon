//  CambiaFon app by Pedro Hernández
//  Copyright 2018 Pedro Hernández.

import UIKit

class ViewController: UIViewController {

    // MARK: - Propiedad global
    
    /// Interruptor que cambia el color de la pantalla. El color de la pantalla es amarillo si está en posición On o gris oscuro si está en Off.
    @IBOutlet weak var interruptor: UISwitch!
    
    // MARK: - Ciclo de vida
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Acción
    
    /**
     Cambia el color de la pantalla y modifica el tamaño del interruptor.
     
     - parameters:
        - sender: el interruptor
     */
    @IBAction func interruptorPulsado(_ sender: UISwitch) {
        // Cambia el color de fondo del view controller, según la posición del interruptor en on u off.
        view.backgroundColor = sender.isOn == true ? .yellow : .darkGray
        // Variable para escalar el interruptor.
        var escalado: CGAffineTransform = CGAffineTransform(scaleX: 2, y: 2)
        // Si está encendido (on) el interruptor aumenta 2 veces su tamaño.
        if interruptor.isOn {
            escalado = .identity
        }
        // Aplica el escalado al interruptor.
        sender.transform = escalado
    }
    
}

