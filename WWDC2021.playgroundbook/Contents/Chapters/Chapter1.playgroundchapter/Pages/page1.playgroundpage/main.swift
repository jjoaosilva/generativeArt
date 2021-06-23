//#-hidden-code

import PlaygroundSupport
import UIKit
import Module

//#-end-hidden-code
/*:
 # Titulo da página
 
 Hey, meu nome é João, sou estudante de Engenharia de Computação e estou no meu segundo ano na Apple Developer Academy de Fortaleza no Brasil. Em 2020, por algum motivo do destino, comecei a desenhar e estudar sobre arte. E nesses estudos eu percebi que o que eu mais gosto de ver em um desenho é não saber onde ele começa e onde ele termina, em mandalas, por exemplo. E no meio dessa jornada conheci a ✨ **Arte Generativa** ✨, que consegue juntar as coisas que eu mais gosto: arte e código. Mas o que é arte generativa ? Vamos um passo de cada vez.

 ## Para você, o que é arte? 👨🏽‍🎨
 Em latim "ars" significa técnica e habilidade. E com esse simples significado e com sua experiencia de vida, agora me diga, o que é arte para você? Para mim, arte é algo que expresse algo humano, que possui um caráter estético associado e que pode ter um significado e um motivo para existir. E durante a evolução humana o conceito de arte foi sendo alterado, passando por conceitos rupestres, barrocas, renascentistas, contemporâneas, dentre outras. E é na arte contemporânea que encaixamos a arte generativa, pois ela é caracterizada por priorizar a ideia, o conceito e a atitude sobre o objeto final.

 ## Arte generativa 💻
 Arte generativa é a arte que é criada em computadores através de algoritmos. Ela pode realizar mistura de imagens ou cores, aplicando algoritmos complexos ou não para gerar uma nova arte. Sendo ela contemporânea, o foco aqui é o conceito aplicado no algoritmo para dar vida a obra final. Um dos primeiros algoritmos criados foi o RAM15 feito por Edward Zjec em 1969. O algoritmo consistia em inserir "\\" ou "/", de maneira aleatória, na tela.
 
 * Experiment:
 Releitura da RAM 15: A tela ao lado é o seu quadro e as variáveis *lineWidth* e *colors* serão suas ferramentas, como pincel e tintas.

    1. Para alterar a cor do seu quadro, mude a cor da variável *backgroundColor*
    2. Para mudar a ponta do seu pincel altere o valor da variável *lineWidth*
    3. Para mudar as cores da da pintura altere o valor da variável *colors*
 
Experimente alterar várias vezes os parametros com varias possibilidade para ver o resultado!
 
 */

let backgroundColor: UIColor = /*#-editable-code Background Color*/#colorLiteral(red: 0.658136785, green: 0.7746616006, blue: 0.9976486564, alpha: 1.0)/*#-end-editable-code*/
let lineWidth: CGFloat = /*#-editable-code Line Width*/1/*#-end-editable-code*/
let colors: [UIColor] = /*#-editable-code Used Colors*/[#colorLiteral(red: 0.8026679754257202, green: 0.8796008229255676, blue: 1.0004709959030151, alpha: 1.0), #colorLiteral(red: 0.29405272006988525, green: 0.4090169072151184, blue: 0.574702262878418, alpha: 1.0), #colorLiteral(red: 0.4549756646156311, green: 0.5007883310317993, blue: 0.5744356513023376, alpha: 1.0), #colorLiteral(red: 0.4399682283401489, green: 0.6036099195480347, blue: 0.8382031321525574, alpha: 1.0)]/*#-end-editable-code*/

//#-hidden-code

let controller = ArtViewController1()
controller.backgroundColorParameter = backgroundColor
controller.lineWidthParameter = lineWidth
controller.colorsParameter = colors

PlaygroundPage.current.liveView = controller

//#-end-hidden-code


