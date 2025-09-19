# Segunda Encuesta - Figuras

Esta carpeta contiene las figuras y gráficos relacionados con la segunda encuesta de la investigación.

## Contenido Sugerido

- Gráficos comparativos entre primera y segunda encuesta
- Gráficos de barras con resultados por pregunta
- Gráficos circulares (pie charts) para distribuciones porcentuales
- Análisis de evolución o cambios entre encuestas

## Nomenclatura Recomendada

- `encuesta2_pregunta1.png`
- `encuesta2_pregunta2.png`
- `encuesta2_resumen_general.png`
- `comparacion_encuestas.png`
- `encuesta2_analisis_cambios.png`

## Ejemplo de Uso en LaTeX

```latex
\begin{figure}[H]
    \centering
    \includegraphics[width=0.7\textwidth]{encuesta2_pregunta1.png}
    \caption{\textit{Resultados de la pregunta 1 de la segunda encuesta aplicada a estudiantes de la Universidad Martín Lutero, Sede Jalapa}}
    \label{fig:encuesta2_p1}
\end{figure}

% Para gráficos comparativos
\begin{figure}[H]
    \centering
    \includegraphics[width=0.8\textwidth]{comparacion_encuestas.png}
    \caption{\textit{Comparación de resultados entre la primera y segunda encuesta}}
    \label{fig:comparacion}
\end{figure}