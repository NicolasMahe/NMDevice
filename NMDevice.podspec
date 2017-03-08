Pod::Spec.new do |s|
  s.name             = 'NMDevice'
  s.version          = '0.0.6'
  s.summary          = 'Get info about the device'
  s.description      = <<-DESC
Get info about the device like system name, version, screen size, etc..
                       DESC

  s.homepage         = 'https://github.com/NicolasMahe/NMDevice'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Nicolas Mahé' => 'nicolas@mahe.me' }
  s.source           = { :git => 'https://github.com/NicolasMahe/NMDevice.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'NMDevice//**/*.swift'
end
