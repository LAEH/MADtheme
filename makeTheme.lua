#!/usr/bin/env th
local col = require 'async.repl'.colorize
local theme = require './theme.lua'
local MADtheme = {}


function MADtheme.KNITxml()

--╓┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅╖
--║           GENERAL ║
--║                   ║
--╙┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅╜

   local generalScopes = {}
   for _,scope in ipairs(theme.general) do
      print(scope.color)
      table.insert(generalScopes,
         [[<key>]]..scope.selector..[[</key>
         <string>]]..scope.color..[[</string>
      ]])
   end
   local general = [[
      <dict>
         <key>settings</key>
         <dict>]]
               ..table.concat(generalScopes)..[[
         </dict>
      </dict>
   ]]

   --╓┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅╖
   --║         LANGAUGES ║
   --║                   ║
   --╙┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅╜

   local langs = theme.language.available
   local languagesStrings = {}
   for _,lang in ipairs(langs) do
      local syntaxTheme = theme.language[lang]
      local langScopesStrings = {}
      for _,scope in ipairs(syntaxTheme) do
         local scopeStrings = {}
         local name = scope.name
         local color = scope.color
         local selector = scope.selector
         local style, back = ' ', ' '
         if scope.style then style = scope.style end
         if scope.back  then back = scope.back end
         table.insert(scopeStrings,
            [[ <dict>
                  <key>name</key>
                  <string>]]..name..[[</string>
                  <key>scope</key>
                  <string>]]..selector..[[</string>
                  <key>settings</key>
                     <dict>
                        <key>foreground</key>
                        <string>]]..color..[[</string>
                        <key>fontStyle</key>
                        <string>]]..style..[[</string>
                        <key>background</key>
                        <string>]]..back..[[</string>
                  </dict>
               </dict>
            ]]
         )
         table.insert(langScopesStrings,
            table.concat(scopeStrings))
      end
      table.insert(languagesStrings,
         table.concat(langScopesStrings))
   end
   local languages = table.concat(languagesStrings)

--╓┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅╖
--║               XML ║
--║                   ║
--╙┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅╜

   local xml = [[
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist
         PUBLIC '-//Apple Computer//DTD PLIST 1.0//EN'
         'http://www.apple.com/DTDs/PropertyList-1.0.dtd'>
         <plist version="1.0">
         <dict>
            <key>name</key>
            <string>MAD01</string>
            <key>settings</key>
            <array>]]
               ..general
               ..languages
               ..[[
            </array>
            <key>uuid</key>
            <string>13E579BF-40AB-42E2-9EAB-0AD3EDD88532</string>
            <key>colorSpaceName</key>
            <string>sRGB</string>
            <key>semanticClass</key>
            <string>theme.mad</string>
            <key>author</key>
            <string>MADenvironment</string>
         </dict>
      </plist>
   ]]
   print(col._yellow(xml))

--╓┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅╖
--║             WRITE ║
--║                   ║
--╙┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅╜

   local me = os.getenv('HOME')
   local time = os.time()
   local MAD = [[/Library/Application Support/Sublime Text 3/Packages/MAD/]]
   local MADme = me..MAD
   local themeName = 'MAD01'
   local themeFile = themeName..'.tmTheme'
   local themePath = MADme..'/'..themeFile
   local file = io.open(themePath,'w')
   file:write(xml)
   file:close()
   print(col.blue('Theme Directory'),col.red(MADme))
   print(col.blue('Theme Path'),col.red(themePath))
end

MADtheme.KNITxml()
