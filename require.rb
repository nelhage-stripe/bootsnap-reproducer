if ENV['BOOTSNAP_CACHE_DIR']
  puts("Initializing bootsnap...")
  require 'bootsnap'
  Bootsnap.setup(
    cache_dir: ENV['BOOTSNAP_CACHE_DIR'],
    development_mode: false,
    load_path_cache: true,
    autoload_paths_cache: false,
    disable_trace: false,
    compile_cache_iseq: false,
    compile_cache_yaml: false,
  )
end
$LOAD_PATH << File.join(__dir__, 'a')
$LOAD_PATH << File.join(__dir__, 'b')
puts("require b/file: #{require File.join(__dir__, 'b/file')}")
puts("require file: #{require 'file'}")
