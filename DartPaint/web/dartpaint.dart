import 'dart:html';
import 'dart:core';

/**
 * @brief una funcion que te devuelve directamente un elemento html, listo para modificarlo o trabajar con el.
 * @param String a, nombre del de la etiqueta, ID, o clase del elemento html (E).
 * @return var selector, selector listo para ser editado.
 */
getSelector(String a){
  var selector = querySelector("${a}");
  return selector;
}
/**
 * @brief redimensiona el elemento que le pasemos al alto/ancho que le digamos.
 * @param String a, nombre del elemento a redimensionar.
 * @param double alto, tamaño en píxeles.
 * @param double ancho, tamaño en píxeles.
 */
redimensionar(String a, double alto, double ancho){
  getSelector(a).style.width = "${ancho}px";
  getSelector(a).style.height = "${alto}px";
}
redimensionarAncho(String a, double ancho){
  getSelector(a).style.width = "${ancho}px";
}

/**
 * @brief devuelve el ancho de la pantalla en píxeles.
 */
int anchoPantalla(){
  return window.screen.width;
}

/**
 * @brief devuelve el alto de la pantalla en píxeles.
 */
int altoPantalla(){
  return window.screen.height;
}

void main() {
  redimensionar("body", altoPantalla()*0.9, anchoPantalla()*0.8);
  redimensionarAncho("#barraMenu", anchoPantalla()*0.8);
}
