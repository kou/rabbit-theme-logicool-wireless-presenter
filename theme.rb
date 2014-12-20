# Copyright (C) 2014  Kouhei Sutou <kou@cozmixng.org>
#
# License: LGPLv3+

# Button         | Key
# ---------------+--------
# Previous Slide | Page Up
# Next Slide     | Page Down
# Play           | F5 -> Escape
# Blackout       | .

connect_key(Gdk::Keyval::GDK_KEY_Escape) do
  handled = true # Ignore
  handled
end

connect_key(Gdk::Keyval::GDK_KEY_period) do
  handled = true
  canvas.activate("ToggleBlackout")
  handled
end
