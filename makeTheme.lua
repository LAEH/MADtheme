#!/usr/bin/env th
local col = require 'async.repl'.colorize
local MADtheme = {}

local base     = '#eeeeee'
local violet   = { front='#530ff5', back ='#e3f9fd'}
local cyan     = { front='#2cbae7', back ='#cbebf5'}
local green    = { front='#65b11a', back ='#f0f7ee'}
local pink     = { front='#fe2973', back ='#fcf1f4'}
local orange   = { front='#ffa502', back ='#fff6e6'}
local red      = { front='#ff5533', back ='#ffeeeb'}
local yellow   = { front='#ffd201', back ='#fffbe6'}
local grey     = { front='#9fa0a4', back ='#f6f6f6'}
local black    = { front='#9fa0a4', back ='#f6f6f6'}
local lightblue= { front='#65d0fc', back ='#f0fbff'}
local blue     = { front='#2f87fb', back ='#eaf3ff'}

--╓┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅╖
--║                                            ║
--║                           SYNTAX COLORING  ║
--║                                            ║
--║                                            ║
--╙┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅╜

MADtheme.general = {
   { selector = 'background',        color =  base},
   { selector = 'invisibles',        color = '#E0E0E0'},
   { selector = 'lineHighlight',     color = '#ffffff'},
   { selector = 'gutterForeground',  color = '#bbbbbb'},
   { selector = 'foreground',        color = '#222222'},
   { selector = 'selection',         color = '#ffffff'},
   { selector = 'selectionBorder',   color = '#000000'},
   { selector = 'caret',             color = '#000000'},
   { selector = 'brackets',          color = '#839496'},
   { selector = 'guide',             color = '#dddddd'},
   { selector = 'activeGuide',       color = '#ffffff'},
   { selector = 'inactiveSelection', color = yellow.front},
   { selector = 'findHighlight',     color = '#FFE792'},
}

MADtheme.language ={
   lua = {

      --QUOTES
      {
         selector = 'string.quoted.single',
         name = 'LUA block string', -- [[string]]
         color = pink.front,
         back = pink.back,
         style='bold italic',
      },
      {
         selector = 'string.quoted.double',
         name = 'LUA string',
         color ='#000000',
         back = base,
         style ='bold italic',
      },
      {
         selector= 'constant.character, string',
         name = 'LUA block quote',
         color = green.front,
         style = 'bold',
      },

      --COMMENTS
      {
         name = 'LUA comment',
         color = '#000',
         style='bold italic',
         selector = 'comment, comment punctuation',
      },
      {
         name = 'LUA comments block',
         color = pink.front,
         style='bold italic',
         selector = 'comment.block',
      },

      --KEYWORDS & CONSTANTS
      {
         selector = 'support.function',
         name  = 'LUA support functions',-- 'io. table. os. math. .file'
         color = blue.front,
         style = 'italic',
      },
      {
         selector = 'keyword.control',
         name = 'LUA controls keyword', -- 'local' 'function' 'for' 'if'
         back = orange.back,
         color = orange.front,
         style = 'bold',
      },
      {
         selector  = 'keyword.operator',
         name = 'LUA arythmetic signs',--'==, =, >'
         back = violet.back,
         color = violet.front,
      },
      {
         name = 'LUA constants',--'true, false'
         color = red.front,
         style = 'bold',
         selector = 'constant.language',
      },

      --USER
      {
         name = 'LUA user function name',-- 'MADweb.' 'MAD '
         style = 'italic bold',
         color = violet.front,
         selector = 'entity.name.function',
      },
      {
      {
         name = 'LUA user function arguments',--'opt'
         color = green.front,
         back = green.back,
         selector  = 'variable.parameter',
      },
         name = 'LUA numbers',--'2,3,4'
         color = '#000000',
         style = 'bold',
         color = red.front,
         selector = 'constant',
      },
      {
         name= 'LUA user variables',--'x, color1'
         color='#147B8A',
         selector = 'variable',
      },
      {
         name = 'LUA user strings',--strings, key strings, quotes'
         style='bold',
         color = '#000',
         selector= 'punctuation',
      }
   },
   css = {
      {
         selector = 'entity.name.tag.css',
         name = 'CSS Selector - Tag',
         back = pink.back,
         color = pink.front,
         style = 'bold',
      },
      {
         selector = 'source.css entity.other.attribute-name.id',
         name = 'CSS Selector - Id',
         back = pink.back,
         color = pink.front,
         style = 'bold',
      },
      {
         selector = 'entity.other.attribute-name.class',
         name = 'CSS Selector - Class',
         back = pink.back,
         color = pink.front,
      },
      {
         selector = 'entity.other.attribute-name.pseudo-element, entity.other',
         name = 'CSS Pseudo Class,attribute-name.pseudo-class',
         back = pink.back,
         color = pink.front,
      },
      {
         selector = 'support.type.property-name',
         name = 'CSS Property Name',
         back = pink.back,
         color = pink.front,
      },
      {
         selector = 'support.constant.property-value',
         name = 'CSS Property Value',
         back = pink.back,
         color = pink.front,
      },
      {
         selector = 'constant.other.color.rgb-value',
         name = 'CSS Color',
         back = pink.back,
         color = pink.front,
      },
      {
         selector = 'keyword.other.unit.css',
         name = 'CSS Unit',
         back = pink.back,
         color = pink.front,
      },
      {
         selector = 'support.constant.font-name',
         name = 'CSS Font Name',
         back = pink.back,
         color = pink.front,
      },
      {
         selector = 'punctuation.section.property-list.css',
         name = 'CSS Curly Brackets',
         back = pink.back,
         color = pink.front,
      },
      {
         selector = 'punctuation.section.function.css',
         name = 'CSS Round Brackets',
         back = pink.back,
         color = pink.front,
      },
      {
         selector = 'support.function.misc.css',
         name = 'CSS url() / rgba() / hsla',
         back = pink.back,
         color = pink.front,
      },
      {
         selector = 'variable.parameter.misc.css',
         name = 'CSS Parameter',
         back = pink.back,
         color = pink.front,
      }
   },
   markdown = {
      {
         name = 'Markdown punctuation',
         selector = 'markup.list, text.html.markdown punctuation.definition, meta.separator.markdown',
         back = pink.back,
         color = pink.front,
      },
      {
         name = 'Markdown heading',
         selector = 'markup.heading',
         back = blue.back,
         color = blue.front,
      },
      {
         name = 'Markdown text inside some block element',
         selector = 'markup.quote, meta.paragraph.list',
         back = violet.back,
         color = violet.front,
      },
      {
         name = 'Markdown em',
         selector = 'markup.italic',
         back = red.back,
         color = red.front,
      },
      {
         name = 'Markdown strong',
         selector = 'markup.bold',
         color = red.front,
      },
      {
         name = 'Markdown reference',
         selector = 'markup.underline.link.markdown, meta.link.inline punctuation.definition.metadata, meta.link.reference.markdowdefinition.constant, meta.link.reference.markdown constant.other.reference',
         color = red.front,
      },
      {
         name = 'Markdown linebreak',
         selector = 'meta.paragraph.markdown meta.dummy.line-break',
         color = red.front,
      }
   },
}

local avaiLableLanguages = {
   'lua',
   'css',
   'markdown'
}

--╓┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅╖
--║                                           ║
--║                         KNIT .tmTheme XML ║
--║                                           ║
--║                                           ║
--╙┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅╜

function MADtheme.KNITxml()

--╓┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅╖
--║           GENERAL ║
--║                   ║
--╙┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅╜
   local generalScopes = {}
   for _,scope in ipairs(MADtheme.general) do
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
   local languagesStrings = {}
   for _,lang in ipairs(avaiLableLanguages) do
      local syntaxTheme = MADtheme.language[lang]
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
   print(col._blue(xml))

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
   print(col.blue('Theme Directory'),col.red(MADme))
   print(col.blue('Theme Path'),col.red(themePath))
   local file = io.open(themePath,'w')
   file:write(xml)
   file:close()
end

MADtheme.KNITxml()
