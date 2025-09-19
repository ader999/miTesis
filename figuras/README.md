# Carpeta de Figuras

Esta carpeta contiene todas las figuras utilizadas en la investigación, organizadas según las normas APA 7ma edición.

## Estructura de Carpetas

- **figuras/**: Figuras generales de la investigación
- **figuras/primera_encuesta/**: Figuras y gráficos de la primera encuesta
- **figuras/segunda_encuesta/**: Figuras y gráficos de la segunda encuesta

## Normas APA para Figuras

### Formato de Figuras
- Las figuras deben estar numeradas consecutivamente (Figura 1, Figura 2, etc.)
- El título de la figura va debajo de la imagen
- Usar fuente Times New Roman, tamaño 12pt
- Título en cursiva y justificado a la izquierda

### Ejemplo de Referencia en el Texto
```latex
Como se muestra en la Figura 1, los resultados indican...

\begin{figure}[H]
    \centering
    \includegraphics[width=0.8\textwidth]{nombre_figura.png}
    \caption{\textit{Título descriptivo de la figura}}
    \label{fig:etiqueta}
\end{figure}
```

### Formatos Recomendados
- PNG para gráficos con texto
- JPG para fotografías
- PDF para gráficos vectoriales
- Resolución mínima: 300 DPI

### Tamaños Recomendados
- Ancho máximo: 0.8\textwidth (80% del ancho de página)
- Para figuras pequeñas: 0.5\textwidth
- Para figuras que ocupen toda la página: 1.0\textwidth