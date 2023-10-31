local util = require 'lspconfig.util'

local root_files = {
  '.odoo_lsp',
  '.odoo_lsp.json',
}

return {
  default_config = {
    cmd = { 'odoo-lsp' },
    filetypes = { 'javascript', 'xml', 'python' },
    root_dir = util.root_pattern(unpack(root_files)) or util.find_git_ancestor(),
    single_file_support = true,
    settings = {},
  },
  docs = {
    description = [[
https://github.com/Desdaemon/odoo-lsp

Language server for Odoo Python/JS/XML.

Install odoo-lsp CLI.

```sh
# One-line
curl -L https://github.com/Desdaemon/odoo-lsp/releases/download/nightly/odoo-lsp-x86_64-unknown-linux-musl.tgz | tar -xzvf -

# Apple Silicon
curl -L https://github.com/Desdaemon/odoo-lsp/releases/download/nightly/odoo-lsp-aarch64-apple-darwin.tgz | tar -xzvf -

# With cargo-binstall
cargo binstall odoo-lsp

# Install from source
cargo install odoo-lsp
```

  ]],
    root_dir = [[root_pattern(".odoo_lsp", ".odoo_lsp.json", ".git")]],
  },
}
