/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//verifica colisão horizontal

var colisao = instance_place(x + velh, y, oChao);

if (colisao) {
	//colisao direita
	if (velh > 0) {
		x = colisao.bbox_left + (x - bbox_right);
	}
	//colisao esquerda
	if (velh < 0) {
		x = colisao.bbox_right + (x - bbox_left);
	}
	velh = 0
}
else {
x += velh;
}

//verifica colisão vertical

var colisao = instance_place(x, y + velv, oChao);

if (colisao) {
	//colisao cima 
	if (velv > 0) {
		y = colisao.bbox_top + (y - bbox_bottom);
	}
	//colisao baixo
	if (velv < 0) {
		y = colisao.bbox_bottom + (y - bbox_top);
	}
	velv = 0
}
else {
y += velv;
}