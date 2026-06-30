# ------------------------------------------------------------
# latexmk configuration
# Template Presentación Postgrado Ingeniería UC
# ------------------------------------------------------------

# Use LuaLaTeX
$pdf_mode = 4;

# Save auxiliary and output files in build/
$out_dir = 'build';

# Stop on real errors and avoid interactive prompts
$interaction = 'nonstopmode';
$halt_on_error = 1;

# Use biber for bibliography
$bibtex_use = 2;

# Clean extra auxiliary files
@generated_exts = (
  @generated_exts,
  'bbl',
  'bcf',
  'blg',
  'run.xml',
  'synctex.gz',
  'nav',
  'snm',
  'vrb'
);
