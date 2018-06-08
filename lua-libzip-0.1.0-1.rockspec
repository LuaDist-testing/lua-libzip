-- This file was automatically generated for the LuaDist project.

package = "lua-libzip"
version = "0.1.0-1"

description = {
    summary = "Lua binding to libzip",
    detailed = [[
lua-zip is a binding to libzip, which you can get from:
    http://www.nih.at/libzip/
]],
    homepage = "https://github.com/misterda/lua-zip",
    license = "MIT"
}

-- LuaDist source
source = {
  tag = "0.1.0-1",
  url = "git://github.com/LuaDist-testing/lua-libzip.git"
}
-- Original source
-- source = {
--     url = "git://github.com/misterda/lua-zip.git",
--     dir = "lua-zip"
-- }

dependencies = {
    "lua >= 5.1"
}

external_dependencies = {
   ZIP = {
      header  = "zip.h",
      library = "zip",
   }
}
build = {
   type = "builtin",
   modules = {
      ["misterda.zip"] = {
         sources   = { "lua_zip.c" },
         incdirs   = { "$(ZIP_INCDIR)" },
         libdirs   = { "$(ZIP_LIBDIR)" },
         libraries = { "zip" },
      }
   }
}
