# Manual de Librerías LaTeX para Tesis APA 7ma Edición

Este documento describe las librerías y paquetes LaTeX utilizados en el proyecto de tesis, configurados para cumplir con las normas APA 7ma edición.

## Paquetes Utilizados

### Codificación y Fuentes
- **inputenc** con opción `[utf8]`: Permite la codificación UTF-8 para caracteres especiales y acentos.
- **fontenc** con opción `[T1]`: Mejora la codificación de fuentes para mejor compatibilidad.
- **newtxtext, newtxmath**: Proporciona la fuente Times New Roman para texto y matemáticas, cumpliendo con los requisitos de fuente APA.

### Formato de Página
- **geometry** con opción `[margin=1in]`: Establece márgenes de 1 pulgada en todos los lados, según las especificaciones APA.
- **setspace**: Habilita el comando `\doublespacing` para espaciado doble en el documento.
- **indentfirst**: Indenta automáticamente el primer párrafo de cada sección.
- **\setlength{\parindent}{0.5in}**: Configura la indentación de párrafos a 0.5 pulgadas.

### Bibliografía
- **biblatex** con opciones `[style=apa,backend=biber]`: Maneja la bibliografía en estilo APA 7ma edición, utilizando Biber como backend para procesamiento.

## Archivo de Bibliografía
- **referencias.bib**: Archivo que contiene las referencias bibliográficas en formato BibTeX. Ejemplos incluidos:
  - Libros
  - Artículos de revista
  - Ponencias de conferencias

## Compilación del Documento
Para compilar el documento LaTeX con bibliografía:

1. Ejecutar `pdflatex main.tex` para generar el documento principal.
2. Ejecutar `biber main` para procesar las referencias bibliográficas.
3. Ejecutar `pdflatex main.tex` dos veces más para resolver referencias cruzadas y actualizar la tabla de contenidos.

## Notas Adicionales
- El documento principal es `main.tex`, que incluye todos los archivos de sección mediante `\input{}`.
- Las secciones están en archivos separados para facilitar la edición.
- La bibliografía se genera automáticamente desde `referencias.bib`.
- Los anexos se manejan con `\appendix` para numeración correcta.

## Requisitos del Sistema
- Distribución LaTeX completa (TeX Live, MiKTeX, etc.).
- Paquetes adicionales: biblatex, biber, newtx.
- Editor LaTeX como TeXstudio, VS Code con extensión LaTeX, o similar.

## Extensiones de Visual Studio Code para LaTeX

Para trabajar eficientemente con LaTeX en Visual Studio Code, se recomienda instalar las siguientes extensiones:

### Extensiones Requeridas

#### 1. LaTeX Workshop (Esencial)
- **ID**: `James-Yu.latex-workshop`
- **Descripción**: La extensión más completa para LaTeX en VS Code
- **Características**:
  - Compilación automática
  - Vista previa en tiempo real
  - Autocompletado de comandos LaTeX
  - Navegación por estructura del documento
  - Detección de errores
  - Soporte para Biber/BibTeX

#### 2. LaTeX Utilities (Recomendada)
- **ID**: `tecosaur.latex-utilities`
- **Descripción**: Herramientas adicionales para mejorar la experiencia LaTeX
- **Características**:
  - Formateo automático
  - Conteo de palabras
  - Navegación mejorada
  - Snippets adicionales

#### 3. Spanish - Code Spell Checker
- **ID**: `streetsidesoftware.code-spell-checker-spanish`
- **Descripción**: Diccionario en español para el corrector ortográfico

### Configuración Recomendada para VS Code

Después de instalar las extensiones, agrega esta configuración a tu `settings.json` de VS Code:

```json
{
    "latex-workshop.latex.tools": [
        {
            "name": "pdflatex",
            "command": "pdflatex",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "%DOC%"
            ]
        },
        {
            "name": "biber",
            "command": "biber",
            "args": [
                "%DOCFILE%"
            ]
        }
    ],
    "latex-workshop.latex.recipes": [
        {
            "name": "pdflatex -> biber -> pdflatex*2",
            "tools": [
                "pdflatex",
                "biber",
                "pdflatex",
                "pdflatex"
            ]
        }
    ],
    "latex-workshop.view.pdf.viewer": "tab"
}
```

### Instalación Paso a Paso

1. Abre VS Code
2. Ve a Extensions (Ctrl+Shift+X)
3. Busca "LaTeX Workshop" e instálala
4. Busca "LaTeX Utilities" e instálala
5. Instala las extensiones complementarias según tus necesidades
6. Reinicia VS Code

### Uso en VS Code

- **Compilar**: Ctrl+Alt+B
- **Ver PDF**: El PDF se abrirá automáticamente en una pestaña integrada
- **Navegación**: Usa Ctrl+Click para navegar entre el código y el PDF
- **Autocompletado**: Escribe `\` para ver comandos LaTeX disponibles

## Títulos y subtítulos: Niveles y formato de presentación

El Manual APA permite la implementación de hasta cinco niveles de títulos; a continuación se representa la jerarquía de niveles con su respectivo formato de presentación y ejemplos:

Tipo de nivel	Formato de presentación	Ejemplo
Nivel 1
Centrado y en negrita
Cada palabra debe iniciar en Mayúscula (Con excepción de aquellas con menos de 3 letras)
El texto debe iniciar en un nuevo párrafo.
Presentación de Trabajos en Normas APA
Texto del documento…

Nivel 2
Alineado a la izquierda y en negrita
Cada palabra debe iniciar en Mayúscula (Con excepción de aquellas con menos de 3 letras)
El texto debe iniciar en un nuevo párrafo.
¿Cuál es el Formato de las Normas APA?
Texto del documento…

Nivel 3
Alineado a la izquierda
Con letra cursiva y en negrita
Cada palabra debe iniciar en Mayúscula (Con excepción de aquellas con menos de 3 letras)
El texto debe iniciar en un nuevo párrafo.
¿Cómo Aplicar las Márgenes?
[Texto… (Recuerda aplicar la sangría en cada nuevo párrafo)]

Nivel 4
Alineado a la izquierda
En negrita
Al título se le debe aplicar una sangría de ½ pulgada (1.27 cm)
Se debe aplicar un punto (.) al final del título. El texto debe seguir en la misma línea.
¿Cuál es la margen en la parte inferior?. [El texto debe seguir en la misma línea]

Nivel 5
Alineado a la izquierda
En negrita y en letra cursiva
Al título se le debe aplicar una sangría de ½ pulgada (1.27 cm)
Se debe aplicar un punto (.) al final del título. El texto debe seguir en la misma línea.
¿Porqué se debe aplicar una margen de 2,5 en la parte inferior de un proyecto con apa?. [El texto debe seguir en la misma línea]

Guía APA aquí: https://normasapa.in/titulos-y-subtitulos/
