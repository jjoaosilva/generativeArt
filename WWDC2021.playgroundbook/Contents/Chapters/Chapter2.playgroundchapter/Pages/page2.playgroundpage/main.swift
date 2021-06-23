//#-hidden-code

import PlaygroundSupport
import UIKit
import Module

//#-end-hidden-code
/*:
 # O que é arte generativa pra você?
 
 Legal! Agora com todos os conceitos que eu te dei, o que é arte generativa para você?
 Pra mim, como eu disse no inicio, o que pode ser mais incrível é não saber encontrar o inicio e o fim da arte, dando ai um conceito de infinito dentro dela mesma.  E uma das coisas mais legais que podemos fazer é aplicar as técnicas de randomização, alteração de cores e formas dentro de artes tradicionais! Afinal, pinturas mais tradicionais possuem o conceito e "perfeição" ou "intocável". O que bate de frente com arte generativa!!!
 
 * Experiment:
 Releitura de Monalisa de Leonardo da Vinci e Moça com o Brinco de Pérola  de Johannes Vermeer

    1. Para alterar a cor do seu quadro, mude a cor da variável *backgroundColor*
    2. Para mudar a ponta do seu pincel altere o valor da variável *lineWidth*
    3. Para mudar as cores da da pintura altere o valor da variável *colors*
    4. Para mudar o numero de rosas da da pintura altere o valor da variável *numberOfRoses*
 
Experimente alterar várias vezes os parametros com varias possibilidade para ver o resultado!
 
 */

let painting: Paintings = /*#-editable-code Paiting*/.monaLisa/*#-end-editable-code*/
let sumColorRed: UIColor = /*#-editable-code Red Color*/#colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)/*#-end-editable-code*/
let sumColorGreen: UIColor = /*#-editable-code Green Color*/#colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)/*#-end-editable-code*/
let sumColorBlue: UIColor = /*#-editable-code Blue Color*/#colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)/*#-end-editable-code*/
let maxlineWidth: Int = /*#-editable-code Line Width*/5/*#-end-editable-code*/
let maxZposition: Int = /*#-editable-code Z Position*/5/*#-end-editable-code*/

//#-hidden-code

let controller = ArtViewController3()
controller.sumColorRedParameter = sumColorRed
controller.sumColorGreenParameter = sumColorGreen
controller.sumColorBlueParameter = sumColorBlue
controller.maxlineWidthParameter = maxlineWidth
controller.maxZpositionParameter = maxZposition
controller.paintingParameter = painting

PlaygroundPage.current.liveView = controller
//#-end-hidden-code

