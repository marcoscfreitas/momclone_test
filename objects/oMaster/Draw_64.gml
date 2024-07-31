/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// position absolute do texto
var x_position = 800;
var y_position = 20;

// texto para exibição
var texto = "Moedas coletadas: " + string(global.moedas_coletadas);

// cor
draw_set_color(c_white);

// fonte
draw_set_font(fontePixel)

// aplicar o texto na tela
draw_text(x_position, y_position, texto);

if global.moedas_coletadas == 20 {
	var x_position = 300;
var y_position = 200;

// texto para exibição
var texto = "Parabens voce coletou todas moedas!!";

// cor
draw_set_color(c_white);

// fonte
draw_set_font(fontePixel)

// aplicar o texto na tela
draw_text(x_position, y_position, texto);
}