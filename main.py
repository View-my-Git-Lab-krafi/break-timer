import gi
import os
import random

gi.require_version('Gtk', '3.0')
from gi.repository import Gtk, GdkPixbuf, Gdk

dir_path = "./ast"
files = os.listdir(dir_path)
image_files = [f for f in files if f.endswith(".png")]

img_file = random.choice(image_files)

img = GdkPixbuf.Pixbuf.new_from_file(os.path.join(dir_path, img_file))

img_resized = img.scale_simple(500, 500, GdkPixbuf.InterpType.BILINEAR)

win = Gtk.Window()
win.set_type_hint(Gdk.WindowTypeHint.UTILITY) 
win.connect('destroy', Gtk.main_quit)
image = Gtk.Image.new_from_pixbuf(img_resized)
win.add(image)

win.show_all()

Gtk.main()

