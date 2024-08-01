/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// alinhar texto central
draw_set_halign(fa_center); // Alinhamento à esquerda para que o texto fique ao lado da moeda

// Posição da moeda e do texto
var x_position = 880;
var y_position = 20;

// Texto para exibição
var coins_text = string(global.moedas_coletadas);

// Cor
draw_set_color(c_white);

// Fonte
draw_set_font(fntTitle);

// Desenhar a sprite da moeda
draw_sprite(sCoin, 0, x_position-10, y_position+15);

// Desenhar o texto ao lado da sprite da moeda
draw_text(x_position + sprite_get_width(sCoin) + 5, y_position, coins_text);


if global.moedas_coletadas == 20  {
// texto para exibição
var texto = "Parabens voce coletou todas moedas!";
var texto_2 = "Pressione R para reiniciar";
// cor
draw_set_color(c_white);

// fonte
draw_set_font(fntTitle)

// aplicar o texto na tela
draw_text(510,200, texto);
draw_text(510,300, texto_2);
}