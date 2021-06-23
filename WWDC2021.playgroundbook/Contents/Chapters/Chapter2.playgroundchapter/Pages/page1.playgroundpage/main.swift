//#-hidden-code

import PlaygroundSupport
import UIKit
import Module

//#-end-hidden-code
/*:
 # Trabalhando com arte generativa
 
 Como ja foi dito, a arte generativa é criada por computadores através de algoritmos. Então, o algoritmo aplicado tem total influência na arte final produzida, sendo ele uma simulação física de algum objeto, sistema químico, sistema biológico, randomização manual, mapeamento de dados… a criatividade é o vai dizer como o algoritmo vai se comportar.

 Outro ponto, é o movimento da arte. Não necessariamente precisa haver movimento ou precisa ser estático. Tudo depende do objetivo do artista. Em casos de videos ou gifs se torna interessante adicionar movimento a arte. Assim como em casos de telas estáticas ou pinturas em quadros, o movimento se torna aparente apenas nos traços do desenho.

 No exemplo da RAM15 na página anterior, podemos observar que as barras ("\\" e "/") são desenhadas dentro de uma especie de matriz(em que a altura e largura de cada posição é definida pelo tamanho da barra) que é feita na tela e que essas barras podem ser definidas por uma equação do primeiro grau. Mas não se limite a isso. A lei de formação, como ja foi dito, vai depender da sua criatividade!
 
 * Experiment:
 Releitura das Rosas Polares: A tela ao lado é o seu quadro e as variáveis *lineWidth* e *colors* serão suas ferramentas, como pincel e tintas. A variável *numberOfRoses* indica o seu esforço

    1. Para alterar a cor do seu quadro, mude a cor da variável *backgroundColor*
    2. Para mudar a ponta do seu pincel altere o valor da variável *lineWidth*
    3. Para mudar as cores da da pintura altere o valor da variável *colors*
    4. Para mudar o numero de rosas da da pintura altere o valor da variável *numberOfRoses*
 
Experimente alterar várias vezes os parametros com varias possibilidade para ver o resultado!
 
 */

let backgroundColor: UIColor = /*#-editable-code Background Color*/#colorLiteral(red: 0.658136785, green: 0.7746616006, blue: 0.9976486564, alpha: 1.0)/*#-end-editable-code*/
let lineWidth: CGFloat = /*#-editable-code Line Width*/1/*#-end-editable-code*/
let colors: [UIColor] = /*#-editable-code Used Colors*/[#colorLiteral(red: 0.8026679754257202, green: 0.8796008229255676, blue: 1.0004709959030151, alpha: 1.0), #colorLiteral(red: 0.29405272006988525, green: 0.4090169072151184, blue: 0.574702262878418, alpha: 1.0), #colorLiteral(red: 0.4549756646156311, green: 0.5007883310317993, blue: 0.5744356513023376, alpha: 1.0), #colorLiteral(red: 0.4399682283401489, green: 0.6036099195480347, blue: 0.8382031321525574, alpha: 1.0)]/*#-end-editable-code*/
let numberOfRoses: Int = /*#-editable-code Number of roses*/20/*#-end-editable-code*/

//#-hidden-code

let controller = ArtViewController2()
controller.backgroundColorParameter = backgroundColor
controller.lineWidthParameter = lineWidth
controller.colorsParameter = colors
controller.numRosesParameter = numberOfRoses

PlaygroundPage.current.liveView = controller

//#-end-hidden-code

