begin
  require 'hen'
rescue LoadError
  abort "Please install the 'hen' gem first."
end

require 'lib/medusa/version'

Hen.lay! {{
  :rubyforge => {
    :package => 'medusa'
  },

  :gem => {
    :version      => Medusa::VERSION,
    :summary      => 'The terminology management software for perseus-a.',
    :files        => FileList['lib/**/*.rb', 'bin/*'].to_a,
    :extra_files  => FileList['[A-Z]*'].to_a,
    :dependencies => %w[highline athena]
  }
}}
