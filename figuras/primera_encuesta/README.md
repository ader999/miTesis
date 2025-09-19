# Primera Encuesta - Figuras

Esta carpeta contiene las figuras y gráficos relacionados con la primera encuesta de la investigación.

## Contenido Sugerido

- Gráficos de barras con resultados por pregunta
- Gráficos circulares (pie charts) para distribuciones porcentuales
- Histogramas para datos cuantitativos
- Tablas de frecuencias convertidas a figuras

## Nomenclatura Recomendada

- `encuesta1_pregunta1.png`
- `encuesta1_pregunta2.png`
- `encuesta1_resumen_general.png`
- `encuesta1_demografia.png`

## Ejemplo de Uso en LaTeX

```latex
\begin{figure}[H]
    \centering
    \includegraphics[width=0.7\textwidth]{encuesta1_pregunta1.png}
    \caption{\textit{Resultados de la pregunta 1 de la primera encuesta aplicada a estudiantes de la Universidad Martín Lutero, Sede Jalapa}}
    \label{fig:encuesta1_p1}
\end{figure}