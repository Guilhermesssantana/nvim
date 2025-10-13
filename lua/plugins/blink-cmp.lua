require("blink.cmp").setup({
  keymap = {
    preset = "enter",
  },
  sources = {
    per_filetype = {
      lua = { "lazydev", inherit_defaults = true },
    },
    providers = {
      lazydev = {
        name = "LazyDev",
        module = "lazydev.integrations.blink",
        score_offset = 100,
      },
    },
  },
  fuzzy = {
    implementation = "prefer_rust_with_warning",
    prebuilt_binaries = {
      download = true,
    },
  },
})
