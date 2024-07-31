/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//verifica se existe chão no y+1
var chao = place_meeting(x ,y+1, oChao)

//controles, checa se sao true valores teclas pressionadas

var movLeft, movRight, movJump;
movLeft = keyboard_check(inputs.left);
movRight = keyboard_check(inputs.right);
movJump = keyboard_check_pressed(inputs.jump);

velh = (movRight - movLeft) * vel;

// se existir chão, permite pular, se não, aplica a gravidade
if (chao) {
if (movJump) {
	velv =- vel_jump;
}

// mudar a sprite para correr caso ande para direita ou esquerda

if (velh != 0) {
	// inverter a sprite dependendo do lado que o player está virado
	image_xscale=sign(velh) // sign retorna valor 1 para num pos e -1 para num neg
	sprite_index=sPlayerRun
}
else {
	sprite_index=sPlayer
}
}
else { // nao existe chao a partir daqui
	
if (velv < 0) {
	//gravidade e mudar sprite para pulo quando estiver fora do chão
	sprite_index=sPlayerJump
}
else {
	sprite_index=sPlayerFall
}
}

//alterar o lado que o player se vira durante um pulo
if (velh != 0) {
	image_xscale=sign(velh) 
}

//atualiza a posição vertical
velv += grav;
