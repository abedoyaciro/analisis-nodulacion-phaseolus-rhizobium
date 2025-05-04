# Análisis de Nodulación en *Phaseolus vulgaris* con *Rhizobium sp.*

Este proyecto es un estudio de bioestadística aplicada que analiza la capacidad de la bacteria *Rhizobium sp.* para inducir nodulación en raíces de *Phaseolus vulgaris* (frijol común). A partir de un experimento con tres tratamientos, se realiza un análisis estadístico completo que incluye visualización, resumen descriptivo e interpretación científica.

---

## 🌱 Términos clave (explicación para no especialistas)

- **Phaseolus vulgaris**: nombre científico del frijol común.
- **Rhizobium sp.**: bacteria beneficiosa que forma nódulos en raíces de leguminosas y ayuda a fijar nitrógeno del aire.
- **Nódulos activos**: estructuras visibles en la raíz donde ocurre la fijación biológica de nitrógeno. Su número es un indicador de una simbiosis exitosa.
- **Inoculación**: aplicación controlada de un microorganismo (en este caso Rhizobium) al suelo o a la planta.
- **UFC/mL**: unidades formadoras de colonia por mililitro; mide la concentración de bacterias vivas.

---

## 🧪 ¿Qué se hace en este proyecto?

- Exploración de datos reales del experimento (CSV).
- Limpieza y transformación con `dplyr`.
- Cálculo de promedios por unidad experimental (potes).
- Visualización con histogramas, densidades, boxplots, diagramas de barras.
- Estadísticos descriptivos por tratamiento.
- Identificación de valores atípicos (outliers).
- Interpretación biológica y conclusión sobre la hipótesis científica.

---

## 📁 Estructura del proyecto

```
analisis-nodulacion-phaseolus-rhizobium/
├── data/             # Datos experimentales (CSV original del experimento)
│   └── nodulacion_rhizobium.csv
├── scripts/          # Documento RMarkdown y scripts auxiliares
│   ├── analisis_nodulacion.Rmd
│   └── save_docs.R
├── docs/             # HTML generado automáticamente para GitHub Pages
│   └── index.html
├── .Rprofile         # Activación automática del entorno con renv
├── analisis-nodulacion-phaseolus-rhizobium.Rproj
├── renv/             # Entorno de paquetes gestionado por renv
├── renv.lock         # Archivo de bloqueo para reproducibilidad
└── README.md         # Documento explicativo principal
```

---

## 💻 Tecnologías y herramientas utilizadas

| Herramienta /<br>Paquete | Descripción |
|----------------------|-------------|
| [<img src="https://www.r-project.org/logo/Rlogo.png" width="150"/>](https://www.r-project.org/) | **R** - **Lenguaje de programación estadístico** utilizado para el análisis |
| [<img src="https://icon.icepanel.io/Technology/svg/RStudio.svg" width="150"/>](https://posit.co/products/open-source/rstudio/) | **RStudio** - **Entorno de desarrollo** integrado para R |
| [<img src="https://www.svgrepo.com/show/374048/rmd.svg" width="150"/>](https://rmarkdown.rstudio.com/) | **RMarkdown** - Integración de código, texto y gráficos |
| [<img src="https://raw.githubusercontent.com/rstudio/hex-stickers/master/PNG/tidyverse.png" width="150"/>](https://www.tidyverse.org/) | **Colección de paquetes** para manipulación y visualización de datos (`dplyr`, `ggplot2`, `readr`, etc.) |
| [<img src="https://raw.githubusercontent.com/rstudio/hex-stickers/master/PNG/ggplot2.png" width="150"/>](https://ggplot2.tidyverse.org/) | **tidyverse** - Generación de gráficos avanzados en R |
| [<img src="https://raw.githubusercontent.com/rstudio/hex-stickers/master/PNG/dplyr.png" width="150"/>](https://dplyr.tidyverse.org/) | **dyplr** - Transformación y manipulación de datos |
| [<img src="https://rpkgs.datanovia.com/rstatix/tools/README-paired-t-test-1.png" width="150"/>](https://rpkgs.datanovia.com/rstatix/) | **rstatix** - Estadística descriptiva y análisis |
| [<img src="https://www.sthda.com/english/sthda-upload/images/ggpubr/ggpubr.png" width="150"/>](https://rpkgs.datanovia.com/ggpubr/) | **ggpubr** - Diagramas de barras y boxplots mejorados |
| [<img src="https://github.com/boxuancui/DataExplorer/raw/master/man/figures/logo.png" width="150"/>](https://cran.r-project.org/web/packages/DataExplorer/vignettes/dataexplorer-intro.html) | **DataExplorer** - Exploración automática de datos |
| [<img src="https://patchwork.data-imaginist.com/logo.svg" width="150"/>](https://patchwork.data-imaginist.com/) | **patchwork** - Composición de gráficos en paneles |
| [<img src="https://raw.githubusercontent.com/rstudio/hex-stickers/master/PNG/gt.png" width="150"/>](https://gt.rstudio.com/) | **gt** - Creación de tablas estilizadas |
| [<img src="https://raw.githubusercontent.com/rstudio/hex-stickers/master/PNG/renv.png" width="150"/>](https://rstudio.github.io/renv/) | **renv** - Gestión de entornos reproducibles en R |

---

## 🔁 Reproducibilidad con 'renv'

Este proyecto utiliza el paquete 'renv' para asegurar un entorno reproducible. Esto significa que todas las versiones de los paquetes usados en el análisis están registradas en el archivo 'renv.lock'.

### 📦 ¿Qué hace 'renv'?

- Registra los paquetes usados y sus versiones exactas.
- Crea un entorno aislado en la carpeta '/renv/'.
- Permite restaurar el entorno en cualquier equipo o momento.

### 🛠 Cómo usarlo

#### 🟢 1. Instalar 'renv' (una sola vez)

Si aún no tienes el paquete instalado:

```r
install.packages("renv")
```

#### 🔄 2. Restaurar el entorno del proyecto

Desde R o RStudio, estando en la raíz del proyecto, ejecuta:

```r
renv::restore()
```

Esto instalará automáticamente todos los paquetes usados con las versiones que estaban activas cuando se generó el análisis.

#### 🧪 3. Ejecutar el análisis

Una vez restaurado el entorno, abre el archivo:

```bash
scripts/analisis_nodulacion.Rmd
```

Y compílalo usando:

```r
rmarkdown::render("scripts/analisis_nodulacion.Rmd", output_file = "../docs/index.html")
```

---

💡 Tip: El archivo '.Rprofile' ya incluye 'renv::activate()' para que el entorno se active automáticamente al abrir el proyecto.


---

## 📘 Créditos

Este análisis fue desarrollado como parte de un taller académico de bioestadística aplicada, con fines educativos y de documentación científica.  
Autor: **Anderson Bedoya Ciro**  
Universidad Nacional de Colombia

---
