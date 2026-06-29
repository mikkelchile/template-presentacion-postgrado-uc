# Reporte de anonimización y consistencia

## Información sensible eliminada

- Nombre real del estudiante de la presentación original.
- Nombre de profesora guía, co-guía, comisión o integrantes académicos reales.
- Correo institucional real.
- Título específico de tesis o investigación.
- Contenido técnico específico asociado a una investigación particular.
- Datos, resultados, variables, tablas y referencias bibliográficas propias del proyecto original.
- Comentarios internos del código y rutas o rastros locales presentes en archivos auxiliares.
- Archivos de compilación, `__MACOSX`, `.DS_Store`, renders previos y PDF compilado original.

## Información reemplazada por campos genéricos

- `Nombre del estudiante`.
- `Tipo de programa: Magíster / Doctorado`.
- `Nombre del programa de posgrado`.
- `Título de la presentación`.
- `Título tentativo de la tesis`.
- `Profesor/a guía: Nombre profesor/a guía`.
- `Profesor/a co-guía: Nombre profesor/a co-guía`.
- `Departamento / Escuela`.
- `Fecha`.
- `correo.institucional@uc.cl`.
- `Variable de ejemplo`.
- `Resultado de ejemplo`.
- `Figura de ejemplo`.
- `Tabla de ejemplo`.

## Archivos modificados o generados

- `main.tex`.
- `ucbeamer.cls`.
- `sections/01_contexto.tex`.
- `sections/02_objetivos.tex`.
- `sections/03_metodologia.tex`.
- `sections/04_avance_resultados.tex`.
- `sections/05_cierre_anexos.tex`.
- `references.bib`.
- `README.md`.
- `.gitignore`.
- `.latexmkrc`.
- `compile.sh`.
- `Makefile`.
- `LICENSE`.
- `ANONYMIZATION_REPORT.md`.
- `assets/data/example_results.csv`.
- `assets/logos/department_logo_placeholder.png`.
- `licenses/THU-Beamer-Theme-reference.txt`.

## Archivos para revisión manual antes de publicar

- `assets/logos/uc_logo_template.png`: verificar autorización y lineamientos institucionales vigentes.
- `assets/logos/department_logo_placeholder.png`: reemplazar por logo autorizado si corresponde.
- `README.md`: completar URL exacta del repositorio o referencia base indicada por el usuario.
- `README.md`: completar `URL_LINKEDIN` si se quiere publicar el enlace personal.
- `LICENSE`: revisar si se publicará con autoría explícita o con una organización.
- `references.bib`: reemplazar referencias ficticias por bibliografía real del usuario antes de una presentación personal.

## Riesgo de privacidad restante

No se detectan nombres reales no autorizados, correos reales, rutas locales ni resultados de investigación específicos en los archivos fuente revisados. El principal riesgo restante es el uso de logos o identidad visual institucional sin revisar permisos actualizados. También queda pendiente completar manualmente el enlace de LinkedIn y la URL exacta de la referencia base indicada por el usuario si se desea dejar constancia pública.

## Revisión de consistencia posgrado

Se reemplazaron referencias específicas a “avance de magíster”, “tesis de magíster”, “estudiante de magíster” y “MSc” por formulaciones generales de posgrado. Las menciones a “Magíster” se mantienen únicamente como parte del campo editable `Magíster / Doctorado` o como explicación de que el template sirve para ambos tipos de programa.
