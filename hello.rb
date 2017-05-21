
#  helloworld.rb - Ruby/GTK first sample script.

require 'gtk2'

button = Gtk::Button.new('Hello World')
button.signal_connect('clicked') do
  puts 'Hello World'
end

window = Gtk::Window.new

window.signal_connect('destroy') do
  puts 'destroy event occurred'
  Gtk.main_quit
end

window.border_width = 10
window.add(button)
window.show_all

Gtk.main
