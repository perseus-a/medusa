# Utilizes global rake-tasks: alias rake="rake -r rake -R /path/to/rakelibdir"
# (Base tasks at <http://prometheus.khi.uni-koeln.de/svn/scratch/rake-tasks/>)

require 'lib/medusa/version'

FILES = FileList['lib/**/*.rb'].to_a
EXECS = FileList['bin/*'].to_a
RDOCS = %w[README COPYING ChangeLog]
OTHER = FileList['[A-Z]*'].to_a

task(:doc_spec) {{
  :title      => 'medusa Application documentation',
  :rdoc_files => RDOCS + FILES
}}

task(:gem_spec) {{
  :name             => 'medusa',
  :version          => Medusa::VERSION,
  :summary          => 'The terminology management software for perseus-a',
  :files            => FILES + EXECS + OTHER,
  :require_path     => 'lib',
  :bindir           => 'bin',
  :executables      => EXECS,
  :extra_rdoc_files => RDOCS,
  :dependencies     => %w[highline athena]
}}
