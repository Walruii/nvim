local ls = require "luasnip"
local snip = ls.snippet
local text = ls.text_node
local insert = ls.insert_node

require("luasnip.loaders.from_vscode").lazy_load()

ls.config.set_config({
  history = true,
  enable_autosnippets = true,
})

ls.add_snippets(nil, {
  cmake = {
    snip({
      trig = "cmakecpp",
      namr = "cmakecpp",
      dscr = "cmake boiler for cpp",
    }, {
      text { "cmake_minimum_required(VERSION 3.10)",
        "set(CMAKE_CXX_STANDARD 17)",
        "set(CMAKE_CXX_STANDARD_REQUIRED ON)",
        "set(CMAKE_EXPORT_COMPILE_COMMANDS ON)",
        "",
        "# add_library(lib STATIC lib/)",
        "# target_include_directories(lib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/lib/include)",
        "",
        "project("
      },
      insert(1, "PROJECT"),
      text {
        " VERSION 1.0)",
        "add_executable(main src/main.cpp)",
        "# target_include_directories(main PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)",
        "# target_link_libraries(main PUBLIC lib)" },
    }),

    snip({
      trig = "cmakec",
      namr = "cmakec",
      dscr = "cmake boiler for c",
    }, {
      text { "cmake_minimum_required(VERSION 3.10)",
        "set(CMAKE_EXPORT_COMPILE_COMMANDS ON)",
        "",
        "# add_library(lib STATIC lib/)",
        "# target_include_directories(lib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/lib/include)",
        "",
        "project(" },
      insert(1, "PROJECT"),
      text { " C)",
        "add_executable(main src/main.c)",
        "# target_include_directories(main PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)",
        "# target_link_libraries(main PUBLIC lib)" },
    }),
  },
  json = {
    snip({
      trig = "node-brow",
      namr = "nodemon and browser-sync",
      dscr = "nodemon and browser-sync script",
    }, {
      text { "\"start\": \"node " },
      insert(0, "app"),
      text { ".js\",",
        "\"dev\": \"nodemon " },
      insert(1, "app"),
      text { ".js\",",
        "\"ui\": \"browser-sync start --proxy localhost:8000 --files=**/*  --ignore=node_modules --reload-delay 1000 --no-ui --no-inject-changes --no-open\"",
      },
    })
  },
  ejs = {
    snip({
      trig = "e",
      namr = "ejs brac",
      dscr = "ejs brackets",
    }, {
      text { "<%" },
      insert(0),
      text { " %>" },
    })
  },
  all = {
    snip({
      trig = "inderjap",
      namr = "Inder in japanese",
      dscr = "'Inder' in japanese because it looks cool yk what i mean",
    }, {
      text { "インダー" },
    }),
  },
})
