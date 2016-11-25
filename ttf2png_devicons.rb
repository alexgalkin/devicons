# coding: utf-8
# USAGE: ruby ttf2png_devicons.rb

# inspired by ttf2png.rb from https://github.com/yukinoraru/ttf2png
#//-------------------------------------------
# Config:
#//-------------------------------------------

FONT      = "devicon.ttf"
FONT_SIZE = 128 #pt

Dir.mkdir "png_#{FONT_SIZE}"
#//-------------------------------------------

inames = { 
  "\uE600" => "react_label",
  "\uE601" => "react_icon",
  "\uE602" => "symfony_label",
  "\uE603" => "aws_icon",
  "\uE604" => "aws_label",
  "\uE605" => "symfony_icon",
  "\uE606" => "redis_label",
  "\uE607" => "redis_icon",
  "\uE608" => "meteor_label",
  "\uE609" => "meteor_icon",
  "\uE60A" => "heroku_label",
  "\uE60B" => "heroku_icon",
  "\uE60C" => "heroku_label_black",
  "\uE60D" => "android_label",
  "\uE60E" => "android_icon",
  "\uE60F" => "heroku_icon_black",
  "\uE610" => "golang_icon",
  "\uE611" => "nodewebkit_label",
  "\uE612" => "nodewebkit_icon",
  "\uE613" => "nodewebkit_label_black",
  "\uE614" => "nodewebkit_icon_black",
  "\uE615" => "nginx_icon",
  "\uE616" => "erlang_label",
  "\uE617" => "erlang_icon",
  "\uE618" => "doctrine_label",
  "\uE619" => "doctrine_icon",
  "\uE61A" => "doctrine_label_black",
  "\uE61B" => "golang_icon_black",
  "\uE61C" => "angularjs_label",
  "\uE61D" => "angularjs_icon",
  "\uE61E" => "docker_label",
  "\uE61F" => "docker_icon",
  "\uE620" => "appcelerator_icon",
  "\uE621" => "appcelerator_label",
  "\uE622" => "apple_icon_black",
  "\uE623" => "atom_label",
  "\uE624" => "atom_icon",
  "\uE625" => "doctrine_icon_black",
  "\uE626" => "apache_label",
  "\uE627" => "apache_icon",
  "\uE628" => "apache_label_black",
  "\uE629" => "apache_icon_black",
  "\uE62A" => "redhat_label",
  "\uE62B" => "redhat_icon",
  "\uE62C" => "backbone_label",
  "\uE62D" => "backbone_icon",
  "\uE62E" => "bootstrap_label",
  "\uE62F" => "bootstrap_icon",
  "\uE630" => "bower_label",
  "\uE631" => "bower_icon",
  "\uE632" => "safari_label",
  "\uE633" => "gimp_icon",
  "\uE634" => "c_plus_plus_icon",
  "\uE635" => "c_plus_plus_icon_black",
  "\uE636" => "c_sharp_icon",
  "\uE637" => "c_sharp_icon_black",
  "\uE638" => "c_lang_icon",
  "\uE639" => "c_lang_icon_black",
  "\uE63A" => "safari_icon",
  "\uE63B" => "safari_label_black",
  "\uE63C" => "safari_icon_black",
  "\uE63D" => "jetbrains_icon",
  "\uE63E" => "django_icon",
  "\uE63F" => "django_icon_black",
  "\uE64E" => "bower_label_black",
  "\uE64F" => "bower_icon_black",
  "\uE665" => "chrome_label_black",
  "\uE666" => "chrome_icon_black",
  "\uE667" => "codeigniter_label",
  "\uE668" => "codeigniter_icon",
  "\uE669" => "coffeescript_label",
  "\uE66A" => "coffeescript_icon",
  "\uE678" => "css3_label",
  "\uE679" => "css3_icon",
  "\uE67E" => "debian_label",
  "\uE67F" => "debian_icon",
  "\uE6D3" => "ms_net_label",
  "\uE6D4" => "ms_net_icon",
  "\uE6E2" => "drupal_label",
  "\uE6E3" => "drupal_icon",
  "\uE75D" => "firefox_label",
  "\uE75E" => "firefox_icon",
  "\uE7A2" => "foundation_label",
  "\uE7A3" => "foundation_icon",
  "\uE7A7" => "git_label",
  "\uE7A8" => "git_icon",
  "\uE7A9" => "grunt_label",
  "\uE7AA" => "grunt_icon",
  "\uE7EA" => "grunt_label_black",
  "\uE7EB" => "grunt_icon_black",
  "\uE7EC" => "gulp_icon_black",
  "\uE7F6" => "html5_label",
  "\uE7F7" => "html5_icon",
  "\uE7F8" => "ie_browser_icon",
  "\uE7F9" => "adobe_illustrator_icon",
  "\uE7FA" => "adobe_illustrator_icon_black",
  "\uE834" => "inkscape_label",
  "\uE835" => "inkscape_icon",
  "\uE841" => "java_label",
  "\uE842" => "java_icon", 
  "\uE845" => "js_icon",
  "\uE849" => "jquery_label",
  "\uE84A" => "jquery_icon",
  "\uE84F" => "krakenjs_label",
  "\uE850" => "krakenjs_icon",
  "\uE851" => "laravel_label",
  "\uE852" => "laravel_icon",
  "\uE853" => "less_icon",
  "\uE900" => "ssh_label",
  "\uE901" => "ssh_icon",
  "\uE902" => "sourcetree_label",
  "\uE903" => "sourcetree_icon",
  "\uE904" => "phpstorm_label",
  "\uE905" => "phpstorm_icon",
  "\uE906" => "jeet_label",
  "\uE907" => "jeet_icon",
  "\uE908" => "gitlab_label",
  "\uE909" => "gitlab_icon",
  "\uE90A" => "github_label",
  "\uE90B" => "github_icon",
  "\uE90C" => "d3_icon",
  "\uE90D" => "confluence_label",
  "\uE90E" => "confluence_icon",
  "\uE90F" => "bitbucket_label",
  "\uE910" => "bitbucket_icon",
  "\uEB1C" => "linux_icon",
  "\uEB43" => "mongodb_label",
  "\uEB44" => "mongodb_icon",
  "\uEB5A" => "moodle_label",
  "\uEB5B" => "moodle_icon",
  "\uEB60" => "mysql_label",
  "\uEB61" => "mysql_icon",
  "\uEB69" => "nodejs_label",
  "\uEB6A" => "nodejs_icon",
  "\uEB6B" => "oracle_icon",
  "\uEB6C" => "photoshop_icon",
  "\uEB6D" => "photoshop_icon_black",
  "\uEB71" => "php_icon",
  "\uEB7C" => "postgresql_label",
  "\uEB7D" => "postgresql_icon",
  "\uEB88" => "python_label",
  "\uEB89" => "python_icon",
  "\uEBA2" => "rails_label",
  "\uEBA3" => "rails_icon",
  "\uEBC9" => "ruby_label",
  "\uEBCA" => "ruby_icon",
  "\uEBCB" => "sass_icon",
  "\uEBCC" => "travis_label",
  "\uEBCD" => "travis_icon",
  "\uEBCE" => "trello_label",
  "\uEBCF" => "trello_icon",
  "\uEBD0" => "ubuntu_label",
  "\uEBD1" => "ubuntu_icon",
  "\uEBF3" => "vim_icon",
  "\uEBF4" => "windows8_label",
  "\uEBF5" => "windows8_icon",
  "\uEBFD" => "wordpress_label",
  "\uEBFE" => "wordpress_icon",
  "\uEC01" => "yiiframework_label",
  "\uEC02" => "yiiframework_icon",
  "\uEC03" => "zend_label",
  "\uEC04" => "zend_icon"
}

# (FIRST..LAST).step do |a|
#   cmd = "convert -background none -fill black -font #{FONT} -pointsize #{FONT_SIZE} label:\"#{a}\"  #{inames[a]}.png"
#   puts cmd
#   system(cmd) if ARGV[0]
# end

inames.each do |key, value|
	cmd = "convert -background none -fill black -font #{FONT} -pointsize #{FONT_SIZE} label:\"#{key}\"  png_#{FONT_SIZE}/#{value}.png"
    puts cmd
    system(cmd) if ARGV[0]
end

print sprintf("If you want to execute these commands, try this: \nruby %s 1\n", File.basename(__FILE__)) if ARGV.length == 0
