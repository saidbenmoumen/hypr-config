-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
require('conform').formatters.prettier = {
  prepend_args = function()
    return {
      '--no-semi',
      '--single-quote',
      '--no-bracket-spacing',
      '--print-width',
      '80',
      '--config-precedence',
      'prefer-file',
    }
  end,
}

return {}
