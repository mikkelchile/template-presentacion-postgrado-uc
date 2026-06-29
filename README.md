# Template Presentación Posgrado Ingeniería UC

> Estado: en construcción.

Este repositorio contiene un **template no oficial** en LaTeX/Beamer para presentaciones académicas de posgrado en Ingeniería UC. Está pensado como una base editable, ordenada y reutilizable para estudiantes de **magíster** y **doctorado** que necesiten preparar presentaciones de avance, seminarios, defensas internas u otras instancias académicas.

El proyecto fue creado por iniciativa personal para aportar una base común que pueda ser descargada, modificada y mejorada por otras personas. Su diseño toma como referencia templates académicos que sirvieron como inspiración, recursos visuales institucionales y lineamientos disponibles en el [Kit Digital UC](https://kitdigital.uc.cl/), además del material base indicado en los créditos del proyecto.

Este repositorio **no corresponde a un documento ni template oficial** de la Pontificia Universidad Católica de Chile. El uso de logos, colores y elementos gráficos UC debe respetar los lineamientos institucionales vigentes y las autorizaciones que correspondan.


## Uso rápido

```bash
git clone URL_DEL_REPOSITORIO
cd template-posgrado-ingenieria-uc
bash compile.sh
```

También puedes compilar con:

```bash
make
```

O directamente con `latexmk`:

```bash
latexmk -lualatex main.tex
```

## Requisitos

- Distribución LaTeX reciente: TeX Live, MacTeX o MiKTeX.
- Motor recomendado: LuaLaTeX.
- `latexmk` recomendado para compilar automáticamente.
- `biber` para bibliografía con `biblatex`.
- Fuente Roboto opcional. Si no está instalada, se usa TeX Gyre Heros.

## Estructura del repositorio

```text
.
├── main.tex                         # Archivo principal de la presentación
├── ucbeamer.cls                     # Clase Beamer personalizada del template
├── references.bib                   # Bibliografía de ejemplo
├── compile.sh                       # Script simple de compilación
├── Makefile                         # Compilación alternativa con make
├── .latexmkrc                       # Configuración de latexmk
├── .gitignore                       # Archivos auxiliares ignorados por Git
├── LICENSE                          # Licencia sugerida del template
├── ANONYMIZATION_REPORT.md          # Reporte de anonimización y revisión manual
├── assets/
│   ├── data/
│   │   └── example_results.csv      # Datos ficticios para gráficos de ejemplo
│   └── logos/
│       ├── uc_logo_template.png     # Logo/placeholder UC; revisar permisos antes de usar
│       └── department_logo_placeholder.png
├── licenses/
│   └── THU-Beamer-Theme-reference.txt
└── sections/
    ├── 01_contexto.tex
    ├── 02_objetivos.tex
    ├── 03_metodologia.tex
    ├── 04_avance_resultados.tex
    └── 05_cierre_anexos.tex
```

## Estructura sugerida de la presentación

El template está pensado para adaptarse a distintas instancias de posgrado. Una estructura recomendada es:

1. Portada.
2. Contexto general.
3. Motivación.
4. Problema de investigación.
5. Pregunta de investigación.
6. Hipótesis, si corresponde.
7. Objetivo general.
8. Objetivos específicos.
9. Marco teórico o antecedentes.
10. Metodología.
11. Estado actual del avance.
12. Resultados preliminares.
13. Discusión preliminar.
14. Cronograma.
15. Próximos pasos.
16. Referencias.
17. Anexos.

## Cómo usar el template

1. Edita los datos globales de portada en `main.tex`.
2. Indica si tu programa corresponde a `Magíster`, `Doctorado` u otra formulación requerida por tu unidad académica.
3. Reemplaza los placeholders por tu información académica.
4. Cambia o elimina las láminas que no correspondan a tu avance.
5. Actualiza la bibliografía en `references.bib`.
6. Reemplaza los gráficos, tablas y datos de ejemplo por material propio.
7. Compila con `bash compile.sh`, `make` o `latexmk -lualatex main.tex`.

## Personalización rápida

### Portada y datos globales

En `main.tex`, modifica una sola vez los comandos editables:

```latex
\newcommand{\tipoPrograma}{Magíster / Doctorado}
\newcommand{\nombrePrograma}{Nombre del programa de posgrado}
\newcommand{\tituloPresentacion}{Título de la presentación}
\newcommand{\tituloTesis}{Título tentativo de la tesis}
\newcommand{\nombreEstudiante}{Nombre del estudiante}
\newcommand{\nombreGuia}{Nombre profesor/a guía}
\newcommand{\nombreCoGuia}{Nombre profesor/a co-guía}
\newcommand{\departamentoEscuela}{Departamento / Escuela}
\newcommand{\fechaPresentacion}{Santiago, Chile -- Fecha}
\newcommand{\correoInstitucional}{correo.institucional@uc.cl}
```

Luego esos datos se usan automáticamente en la portada, pie de página y láminas de cierre mediante:

```latex
\setprogramtype{\tipoPrograma}
\setthesistype{Tesis de \tipoPrograma: \tituloTesis}
\setprogram{\nombrePrograma}
\setsupervisor{Profesor/a guía: \nombreGuia}
\setcosupervisor{Profesor/a co-guía: \nombreCoGuia}
\setcontact{\correoInstitucional}
```

### Logos

Por defecto se incluyen archivos de ejemplo en `assets/logos/`. Para reemplazarlos:

```latex
\UCsetlogos{assets/logos/uc_logo_template.png}{assets/logos/department_logo_placeholder.png}
```

Antes de publicar o distribuir una versión con logos UC, revisa los lineamientos institucionales vigentes y verifica que tienes autorización para usarlos.

### Colores

La paleta se define en `ucbeamer.cls` mediante colores como:

```latex
\definecolor{UCBluePPT}{HTML}{2F86DE}
\definecolor{UCYellow}{HTML}{FEC60D}
```

Puedes ajustar estos colores si tu unidad académica requiere una versión distinta. Si usas colores institucionales, revisa previamente el Kit Digital UC y los lineamientos oficiales vigentes.

### Secciones

Las secciones están separadas en la carpeta `sections/` para facilitar la edición:

- `01_contexto.tex`: contexto, motivación, problema, pregunta e hipótesis.
- `02_objetivos.tex`: objetivo general, objetivos específicos, antecedentes y alcance.
- `03_metodologia.tex`: diseño metodológico, variables y flujo de trabajo.
- `04_avance_resultados.tex`: estado de avance, resultados preliminares y discusión preliminar.
- `05_cierre_anexos.tex`: cronograma, próximos pasos, referencias y anexos.

### Bibliografía

El template usa `biblatex` con `biber`. Agrega tus referencias en `references.bib` y cita en las láminas con comandos estándar como:

```latex
\parencite{example_research}
```

## Uso en Overleaf

1. Crea un proyecto nuevo en Overleaf.
2. Sube todos los archivos y carpetas del repositorio.
3. En `Menu`, selecciona `LuaLaTeX` como compilador.
4. Verifica que `main.tex` sea el archivo principal.
5. Compila el proyecto.

## Recomendaciones para estudiantes

- Mantén una idea principal por lámina.
- Usa gráficos, esquemas o tablas simples para apoyar la narración oral.
- Evita tablas extensas salvo que sean estrictamente necesarias.
- Diferencia claramente entre datos, evidencia e interpretación.
- Declara limitaciones, supuestos y riesgos del proyecto.
- Incluye un cronograma realista y próximos pasos concretos.
- Elimina toda información privada antes de compartir públicamente.

## Autor y motivación

Este template fue creado por iniciativa personal de Miguel Farias --> **Mikkel Farias** como una propuesta no oficial para facilitar la preparación de presentaciones académicas de posgrado en Ingeniería UC.

La idea surge a partir de la necesidad de contar con una base editable, ordenada y visualmente consistente para presentaciones de avance, seminarios, defensas internas u otras instancias académicas de posgrado.

El proyecto se mantiene abierto a mejoras, correcciones y sugerencias. Si encuentras errores, tienes ideas para mejorar el formato, quieres proponer nuevas diapositivas o deseas colaborar con una versión más visual o flexible del template, puedes abrir un issue o enviar un pull request.

- GitHub: [Mikkel Farias](https://github.com/mikkelchile)
- LinkedIn: [Mikkel Farias](www.linkedin.com/in/miguelfariasuc)

## Créditos e inspiración

- Basado en una presentación académica anonimizada y transformada en template genérico.
- Inspirado en recursos visuales y lineamientos disponibles en el [Kit Digital UC](https://kitdigital.uc.cl/).
- Adaptado para presentaciones académicas de posgrado en Ingeniería UC.
- Pensado para estudiantes de magíster y doctorado.
- Inspirado parcialmente en la lógica de navegación de THU-Beamer-Theme. Ver `licenses/THU-Beamer-Theme-reference.txt`.
- Este template se inspira en referencias entregadas previamente por el autor del repositorio y en materiales académicos desarrollados dentro del contexto de Ingeniería UC. En particular, se considera como referencia visual una presentación/poster elaborada por [Carlos Otárola](https://www.linkedin.com/in/carlos-otárola-san-martín-379710b6/), estudiante de doctorado, quien utilizó formato, colores y elementos gráficos alineados con el Kit Digital UC. Dicho trabajo sirvió como inspiración para construir una base reutilizable, editable y visualmente consistente para presentaciones de posgrado.

## Nota sobre identidad institucional

Este template no es oficial. La presencia de colores, logos o elementos visuales asociados a la UC no implica aprobación institucional. Cada usuario es responsable de verificar permisos, lineamientos vigentes y condiciones de uso antes de publicar, distribuir o presentar material con identidad visual UC.

## Licencia

Se sugiere utilizar la licencia MIT para el código fuente y la documentación del template. Los logos, marcas institucionales y recursos visuales de terceros pueden estar sujetos a condiciones distintas y deben usarse según los lineamientos correspondientes.

* [ ] Recibir sugerencias, issues o pull requests para mejorar el template. La idea es que este repositorio pueda seguir creciendo de manera colaborativa, incorporando correcciones, nuevas diapositivas, mejoras visuales, ajustes de formato y recomendaciones de otros estudiantes o usuarios que encuentren formas de hacerlo más claro, flexible y útil para presentaciones académicas de posgrado.

## Recomendaciones de edición

Para quienes no tienen mucha experiencia programando o trabajando con LaTeX, se recomienda utilizar [TeXstudio](https://www.texstudio.org/), ya que es un editor especializado, simple de instalar y pensado específicamente para escribir, compilar y revisar documentos LaTeX de forma directa.

Para usuarios con mayor familiaridad con programación, editores de código y flujos de trabajo más avanzados, una alternativa muy cómoda es utilizar [Google Antigravity](https://antigravity.google.com/download) junto con extensiones como [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop). En mi caso, este flujo ha funcionado muy bien para editar el código, compilar la presentación y mantener una estructura de trabajo más ordenada dentro del proyecto. Sin embargo, si se utiliza intensivamente la asistencia de inteligencia artificial dentro de Antigravity, las cuotas o tokens disponibles pueden consumirse rápidamente, especialmente si no se cuenta con un plan o suscripción que entregue mayor capacidad de uso.

Como alternativa, también se recomienda utilizar [Visual Studio Code](https://code.visualstudio.com/) con la extensión [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop). VS Code es una opción muy sólida para editar proyectos LaTeX y permite complementar el flujo de trabajo con herramientas de inteligencia artificial. Además, se puede instalar la extensión [Codex - OpenAI's coding agent](https://marketplace.visualstudio.com/items?itemName=openai.chatgpt), que permite incorporar ChatGPT/Codex al entorno de desarrollo y puede ser de gran ayuda para revisar código, proponer mejoras, corregir errores y avanzar en aportes al proyecto. Recuerda que VS Code también cuenta con sus propias herramientas de IA, pero integrar ChatGPT mediante Codex puede resultar especialmente útil para quienes quieran trabajar de manera más asistida y ordenada.
