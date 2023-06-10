local default_terminal = {
  type = "terminal",
  command = nil,
  width = 69,
  height = 8,
  opts = {
    redraw = true,
    window_config = {},
  },
}

local default_header = {
  type = "text",
  val = "",
  opts = {
    position = "center",
    hl = "Text",
    -- wrap = "overflow";
  },
}

local footer = {
  type = "text",
  val = "",
  opts = {
    position = "center",
    hl = "Text",
  },
}

local buttons = {
  type = "group",
  val = {
  },
  opts = {
    spacing = 1,
  },
}

local section = {
  terminal = default_terminal,
  header = default_header,
  buttons = buttons,
  footer = footer,
}

local config = {
  layout = {
    { type = "padding", val = 2 },
    section.header,
    { type = "padding", val = 2 },
    section.buttons,
    section.footer,
  },
  opts = {
    margin = 5,
  },
}

require "alpha".setup(config)
