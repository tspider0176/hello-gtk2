
#  helloworld.rb - Ruby/GTK first sample script.

require 'gtk2'

def callback(widget)
  puts "Hello again - #{widget.label}(#{widget}) was pressed."
end

button = Gtk::Button.new('Hello World')
button.signal_connect('clicked') do
  puts 'Hello World'
end

window = Gtk::Window.new
window.title = 'Hello Buttons'
window.border_width = 10

window.signal_connect('destroy') do
  puts 'destroy event occurred'
  Gtk.main_quit
end

hbox1 = Gtk::HBox.new(false, 0)
window.add(hbox1)
vbox1 = Gtk::VBox.new(false, 0)
window.add(vbox1)

button1 = Gtk::Button.new('Button 1')
button1.signal_connect('clicked') do |w|
  callback(w)
end
hbox1.pack_start(button1, true, true, 0)

button2 = Gtk::Button.new('Button 2')
button2.signal_connect('clicked') do |w|
  callback(w)
end
hbox1.pack_start(button2, true, true, 0)

button3 = Gtk::Button.new('Quit')
button3.signal_connect('clicked') do
  puts 'Quit button clicked.'
  Gtk.main_quit
end
hbox1.pack_start(button3, true, true, 0)

window.show_all

Gtk.main
