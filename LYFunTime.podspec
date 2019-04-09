Pod::Spec.new do |s|
  s.name         = "LYFunTime"
  s.version      = "0.1"
  s.summary      = "A short description of LYFunTime."
  s.description  = "Fun Time"
  s.homepage     = "http://EXAMPLE/LYFunTime"
  #s.license      = "MIT (example)"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "lyle" => "lyleyang@qq.com" }
  # s.social_media_url   = "http://twitter.com/lyle"
  s.source       = { :git => "https://github.com/lyleyang/LYFunTime.git"}
  s.source_files  = "src/*"
  s.preserve_paths = "clang/bin/clang","clang/lib/LYFunTime.dylib","clang/lib/clang/8.0.0/include/*"
  s.requires_arc = true
  s.xcconfig = { "OTHER_CFLAGS" => "-Xclang -load -Xclang ${PODS_ROOT}/LYFunTime/clang/lib/LYFunTime.dylib", 
                 "COMPILER_INDEX_STORE_ENABLE" => "No",
                 "CC" => "${PODS_ROOT}/LYFunTime/clang/bin/clang" }
end
