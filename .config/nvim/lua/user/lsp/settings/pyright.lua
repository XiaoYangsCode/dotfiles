local utils = require("user.utils")

local python_root_files = {
  -- 'WORKSPACE', -- added for Bazel; items below are from default config
  'pyproject.toml',
  'main.py',
  'setup.py',
  'setup.cfg',
  'requirements.txt',
  'Pipfile',
  'pyrightconfig.json',
}

return {
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "off",
      },
    }
  },
  root_dir = utils.root_pattern(unpack(python_root_files))
}
