# First-try.nvim

A first try counter for nvim

## Why?

If you have ever followed [theprimagin](https://github.com/theprimeagen),
you are probable obtusest with two things:

- A. [neovim](https://github.com/neovim/neovim) - "The superior editor"
- B. First Trying the code

So, why not combine the two?

This simple plugin that adds a "first try" counter to your nvim statusline.

## Installation

### Lazy

```lua
return {
  "theacebutler/first-try.nvim",
 dependencies = {
  "nvim-lualine/lualine.nvim",
 },
  config = function()
    require("first-try").setup({
      keymap = {
        add = "+f",
        subtract = "-f",
      },
    })
  end
}
```

### Packer

```lua
use {
  "theacebutler/first-try.nvim",
 dependencies = {
  "nvim-lualine/lualine.nvim",
 },
  config = function()
    require("first-try").setup({
      keymap = {
        add = "+f",
        subtract = "-f",
      },
    })
  end
}
```

By default, the keymaps are `+f` to add a first-try and `-f`
to subtract (boo...), you can change that by passing a
lua table with `add` or `subtract` keys and a string that will
be the new keymap.

NOTE: the counter resets when you leave nvim, it dose not keep track
across sessions. Feel free to leave a PR with such a fetcher.

## Dependencies

- [lualine](https://github.com/nvim-lualine/lualine.nvim)

## Contributing

Contributions are welcome! Please open an issue or submit a
pull request.

## Roadmap (PRs welcome!)

- [ ] Add a fetcher to keep track of the counter across sessions
- [ ] Add support without lualine
- [ ] Integrate with [nvim-navic](https://github.com/SmiteshP/nvim-navic)
- [ ] Integrate with test runners and auto increment when a test passes for the
      first time.

## License

This project is licensed under the MIT License.
