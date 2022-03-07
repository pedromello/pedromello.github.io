/**
 * Função que envia o resultado para o servidor salvar no banco de dados.
 * Precisamos enviar um objeto no formato:
 * [{numero: int/char }, {numero: int/char}]
 * 
 * Para votos em branco ou nulo enviar da forma a seguir:
 * Branco:
 *      Vereador: "\"BBBBB\""
 *      Prefeito: "\"BB\""
 * Nulo:
 *      Vereador: "\"NNNNN\""
 *      Prefeito: "\"NN\""
 * 
 * @param {Array} votosArr - Array que contem os votos  para salvar no banco de dados.
 */
function salvarVotos(votosArr) {
    if(votosArr[0].numero == ""){
      votosArr[0].numero = "\"BBBBB\""
    } else if (votosArr[0].numero == null) {
      votosArr[0].numero = "\"NNNNN\""
    }
  
    if(votosArr[1].numero == ""){
      votosArr[1].numero = "\"BB\""
    } else if (votosArr[1].numero == null) {
      votosArr[1].numero = "\"NN\""
    }
  
    jQuery.ajax({
      type: "POST",
      url: 'backend.php',
      dataType: 'json',
      data: {candidates: [votosArr[0].numero, votosArr[1].numero]},
  
      success: function (obj, textstatus) {
                if( !('error' in obj) ) {
                    let yourVariable = obj.result;
                    console.log(yourVariable);
                }
                else {
                    console.log(obj.error);
                }
              }
    });
  }