Nave n1, n2;

//roda uma vez soh, quando inicia o programa
//deve ser utilizada para confguracoes (e.g., o tamanho da
//tela e inicializar variaveis

 void setup() {
   // em p5.js => createCanvas(...);
   size(640, 480);
   n1 = new Nave(320, 240, 255, 0, 0);
   n2 = new Nave(320, 480, 30, 0, 255, 0);
 }
 
 //eh executada aproximadamente 60 vezes por segundo,
 //toda vez que a tela for redesenhada
 void draw() {
   background(0);
   // 320, 240
   n1.atualizaPosicao(mouseX, mouseY);
   n2.moveEmFrente();
   n1.desenha();
   n2.desenha();
 }
 
void keyPressed() {
  if (keyCode == UP){
      n2.acelera();
  } else if (KeyCode == DOWN) {
      n2.freia();
  }
}