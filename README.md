# 🛒 Análisis de ventas de una tienda online

[![Actions Status](https://github.com/SilviaPalencia/data-analyst-project-277/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/SilviaPalencia/data-analyst-project-277/actions)

Análisis exploratorio de la base de datos de ventas de una tienda online para responder una pregunta simple: **¿quién vende, quién compra y cuándo?** El proyecto identifica a los vendedores con mejor y peor desempeño, los patrones de venta por día de la semana y el perfil de los clientes, y presenta los resultados en un dashboard interactivo.

Proyecto de aprendizaje del programa [Analista de Datos de Códica](https://app.codica.la/programs/data-analyst).

## 🛠️ Herramientas

- **SQL (PostgreSQL):** consultas con `JOIN`, agregaciones, subconsultas y funciones de fecha
- **Google Sheets:** revisión y organización de los resultados
- **Preset (Superset):** dashboard interactivo con las visualizaciones clave

## 📁 Contenido del repositorio

| Archivo | Descripción |
|---|---|
| [`queries.sql`](queries.sql) | Todas las consultas SQL del análisis, comentadas |
| [`presentation.pdf`](presentation.pdf) | Presentación con los hallazgos y recomendaciones |
| `customers_count.csv` | Total de clientes registrados |
| `top_10_total_income.csv` | Los 10 vendedores con mayores ingresos |
| `lowest_average_income.csv` | Vendedores con ingreso promedio por venta inferior al promedio general |
| `day_of_the_week_income.csv` | Ingresos por vendedor y día de la semana |
| `age_groups.csv` | Clientes por grupo de edad |
| `customers_by_month.csv` | Clientes únicos e ingresos por mes |
| `special_offer.csv` | Clientes cuya primera compra fue en una promoción |
| `top_10_popular_products.csv` | Los 10 productos más vendidos por cantidad |
| `top_10_profitable_products.csv` | Los 10 productos que más ingresos generan |

## 📊 Hallazgos principales

- **19.759 clientes** registrados en la base de datos.
- **Concentración de ventas:** los 3 vendedores principales generan cerca del **41% de los ingresos** totales del período.
- **Clientes:** el grupo de **40+ años representa el 61%** de la base, seguido por el de 26-40 años (26%) y el de 16-25 años (13%).
- **Días de la semana:** lunes y martes son los días con mayores ingresos (~4.000 millones cada uno), aunque la diferencia con el resto de la semana es pequeña.
- **Tendencia mensual:** los ingresos pasaron de ~2.600 millones en septiembre a más de 8.000 millones en octubre de 1992, y se mantuvieron estables hasta diciembre.
- **Promociones:** 15 clientes hicieron su primera compra durante una promoción especial (precio $0), lo que muestra el potencial de las promociones para atraer clientes nuevos.

## 💡 Recomendaciones

- Emparejar a los vendedores con menor ingreso promedio con los del top para compartir buenas prácticas.
- Concentrar promociones y campañas al inicio de la semana, cuando se registran más ventas.
- Diseñar la comunicación de marketing pensando principalmente en el segmento de 40+ años, sin descuidar a los clientes más jóvenes.
- Repetir la estrategia de promociones como puerta de entrada para nuevos clientes.

## 👩‍💻 Autora

**Silvia Valentina Palencia Carvajal** – Analista de Datos Junior
[LinkedIn](https://www.linkedin.com/in/silviapalencia-datos) · [GitHub](https://github.com/SilviaPalencia)
