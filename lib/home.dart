import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Classe da tela inicial (home)
class home extends StatelessWidget {
  const home({Key? key});

  // Método responsável por construir a interface da tela
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250, // Altura da tela
      width: 360, // Largura da tela
      child: Stack(
        children: [
          // Fundo da tela
          Center(
            child: Container(
              height: 190, // Altura do fundo
              width: 340, // Largura do fundo
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  // Gradiente de cores
                  colors: [Color.fromARGB(255, 39, 176, 149), Colors.black],
                ),
                borderRadius: BorderRadius.circular(18), // Borda arredondada
              ),
            ),
          ),
          // Imagem de perfil (Github)
          Positioned(
            top: 0,
            right: 29,
            child: Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/Github.png'), // Imagem de perfil
                ),
              ),
            ),
          ),
          // Nome do usuário
          const Positioned(
            top: 55,
            left: 29,
            child: Text(
              "Luis Gabriel R.R.Pinto", // Nome do usuário
              style: TextStyle(
                color: Colors.white, // Cor do texto
                fontSize: 18.0, // Tamanho da fonte
                fontWeight: FontWeight.w700, // Peso da fonte (negrito)
              ),
            ),
          ),
          // Descrição do usuário
          const Positioned(
            top: 92,
            left: 40,
            child: Text(
              "- Tecnólogo em Análise \n e Desenvolvimento de Sistemas -", // Descrição do usuário
              style: TextStyle(
                color: Colors.white, // Cor do texto
                fontSize: 16.0, // Tamanho da fonte
                fontWeight: FontWeight.w400, // Peso da fonte (normal)
              ),
            ),
          ),
          // Instituição
          const Positioned(
            top: 150,
            left: 40,
            child: Text(
              "IFPR - Instituto Federal do Paraná", // Instituição
              style: TextStyle(
                color: Colors.white, // Cor do texto
                fontSize: 16.0, // Tamanho da fonte
                fontWeight: FontWeight.w300, // Peso da fonte (leve)
              ),
            ),
          ),
          // Contatos
          const Positioned(
            bottom: 45,
            right: 40,
            child: SizedBox(
              width: 289,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.phone), // Ícone de telefone
                      Text(
                        "+41 9 9268-0690", // Número de telefone
                        style: TextStyle(
                          color: Colors.white, // Cor do texto
                          fontSize: 13.0, // Tamanho da fonte
                          fontWeight: FontWeight.w300, // Peso da fonte (leve)
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.email), // Ícone de e-mail
                      Text(
                        "bielbuzz@gmail.com", // E-mail
                        style: TextStyle(
                          color: Colors.white, // Cor do texto
                          fontSize: 13.0, // Tamanho da fonte
                          fontWeight: FontWeight.w300, // Peso da fonte (leve)
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
