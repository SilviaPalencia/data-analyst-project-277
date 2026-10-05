# 🎓 Analítica integral de marketing: Escuela online

[![hexlet-check](https://github.com/SilviaPalencia/data-analyst-project-279/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/SilviaPalencia/data-analyst-project-279/actions)

Sistema de analítica de extremo a extremo para el equipo de marketing de una escuela online: desde el primer clic en un anuncio hasta la compra. Con el modelo de atribución **Last Paid Click** se mide qué canales y campañas generan ventas de verdad y cuáles solo generan clics.

Proyecto de aprendizaje del programa [Analista de Datos de Códica](https://app.codica.la/programs/data-analyst).

## 🛠️ Herramientas

- **SQL (PostgreSQL):** CTE, funciones de ventana (`ROW_NUMBER`), `JOIN` y agregaciones
- **Google Sheets:** dashboard con tablas dinámicas y métricas calculadas (CPU, CPL, CPPU, ROI)

## 🔍 ¿Cómo funciona el modelo Last Paid Click?

1. **Visita:** la persona entra al sitio desde un canal orgánico o pago.
2. **Último clic pago:** si hubo varios clics pagos antes de convertir, todo el crédito se asigna al último (medios: cpc, cpm, cpa, youtube, cpp, tg, social).
3. **Lead:** la persona deja sus datos.
4. **Venta:** el lead se cierra con éxito y genera ingresos.

## 📁 Contenido del repositorio

| Archivo | Descripción |
|---|---|
| [`last_paid_click.sql`](last_paid_click.sql) | Atribución Last Paid Click por visitante |
| [`aggregate_last_paid_click.sql`](aggregate_last_paid_click.sql) | Gasto, visitas, leads e ingresos por día, fuente, medio y campaña |
| [`dashboard.sql`](dashboard.sql) | Todas las consultas usadas en el dashboard y la presentación |
| `last_paid_click.csv`, `aggregate_last_paid_click.csv` | Muestras de los resultados |
| [`presentation.pdf`](presentation.pdf) | Presentación con hallazgos y recomendaciones |

## 📊 Hallazgos principales

Período analizado: **junio de 2023**, con **38.567 visitas**, 32 canales rastreados y **4,2 M de rublos** invertidos en publicidad.

- **Embudo:** 38.567 visitas → 747 leads (1,94%) → 87 ventas (11,65% de los leads). ROI general: **+55,9%**.
- **Concentración:** **2 de 32 canales generan el 92% de los ingresos**: Yandex (77%, ROI 46,5%) y VK (16%, ROI 37,6%).
- **Canales sin resultados:** 28 canales (Facebook, Google, Instagram, entre otros) traen visitas pero **0 ventas**.
- **Costos sin registrar:** Admitad y Telegram generan ~460 mil rublos en ventas sin gasto registrado.
- **Tiempo de cierre:** el 90% de los leads que compran se cierra en **25 días** desde el último clic pago.
- **Efecto en el tráfico orgánico:** tras lanzar una campaña, el tráfico orgánico aumenta en promedio un 5,3% (correlación de 0,29). Es una señal positiva pero aún no concluyente.

## 💡 Recomendaciones

- Reasignar el presupuesto de los 28 canales sin ventas hacia Yandex y VK.
- Configurar el seguimiento de costos de Admitad y Telegram antes de escalarlos.
- Esperar al menos 25 días antes de pausar o escalar una campaña nueva.
- Seguir midiendo la relación entre gasto publicitario y tráfico orgánico con más campañas.

## 👩‍💻 Autora

**Silvia Valentina Palencia Carvajal** – Analista de Datos Junior
[LinkedIn](https://www.linkedin.com/in/silviapalencia-datos) · [GitHub](https://github.com/SilviaPalencia)
