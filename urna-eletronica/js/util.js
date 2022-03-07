/**
 * Função para chamada Ajax
 * 
 * @param {string} url - URL para chamada Ajax
 * @param {string} method - Método de chamada Ajax
 * @param {Function} callback - Função de callback
 */
function ajax(url, method, callback) {
  let request = new XMLHttpRequest();
  request.overrideMimeType("application/json");
  request.open(method, url, true);
  request.onreadystatechange = () => {
    if (request.readyState === 4 && request.status == "200") {
        callback(request.responseText);
    }
  };
  request.send(null);
}