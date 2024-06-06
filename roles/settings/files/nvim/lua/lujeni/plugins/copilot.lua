return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  opts = {
     -- It is also recommended to disable copilot.lua suggestions and panel modules,
     -- as they can interfere with completions properly appearing in copilot-cmp.
     suggestion = { enabled = false },
     panel = { enabled = false },
     filetypes = {
       markdown = true,
       help = true,
     }
   }
 }
