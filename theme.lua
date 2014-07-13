#!/usr/bin/env th
local theme = {}


--╓┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅╖
--║            COLORS ║
--║                   ║
--╙┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅╜

theme.color = {
   base     = '#eeeeee',
   violet   = { front='#530ff5', back ='#e3f9fd'},
   cyan     = { front='#2cbae7', back ='#cbebf5'},
   green    = { front='#65b11a', back ='#f0f7ee'},
   pink     = { front='#fe2973', back ='#fcf1f4'},
   orange   = { front='#ffa502', back ='#fff6e6'},
   red      = { front='#ff5533', back ='#ffeeeb'},
   yellow   = { front='#ffd201', back ='#fffbe6'},
   grey     = { front='#9fa0a4', back ='#f6f6f6'},
   black    = { front='#9fa0a4', back ='#f6f6f6'},
   lightblue= { front='#65d0fc', back ='#f0fbff'},
   blue     = { front='#157efb', back ='#eaf3ff'},
}

local thc = theme.color

theme.general = {
   { selector = 'background',        color =  thc.base},
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
   { selector = 'inactiveSelection', color = thc.yellow.front},
   { selector = 'findHighlight',     color = '#FFE792'},
}

theme.language = {}
--╓┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅╖
--║               LUA ║
--║                   ║
--╙┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅╜

theme.language.available = {
   'lua',
   'css',
   'markdown'
}

theme.language.lua = {

   {
      selector = 'string.quoted.single',
      name = 'LUA block string', -- [[string]]
      color= thc.pink.front,
      back = thc.pink.back,
      style='bold italic',
   },
   {
      selector = 'string.quoted.double',
      name = 'LUA string',
      color ='#000000',
      back = base,
      style ='black',
   },
   {
      selector= 'constant.character, string',
      name = 'LUA block quote',
      color = thc.green.front,
      style = 'bold',
   },
   --COMMENTS
   {
   selector = 'comment, comment punctuation',
      name = 'LUA comment',
      color = '#bbb',
      style='italic',
   },
   {
      name = 'LUA comments block',
      color = thc.pink.front,
      style='bold italic',
      selector = 'comment.block',
   },

   --KEYWORDS & CONSTANTS
   {
      selector = 'support.function',
      name  = 'LUA support functions',-- 'io. table. os. math. .file'
      color = thc.blue.front,
      style = 'italic',
   },
   {
      selector = 'keyword.control',
      name = 'LUA controls keyword', -- 'local' 'function' 'for' 'if'
      back = thc.orange.back,
      color = thc.orange.front,
      style = 'bold',
   },
   {
      selector  = 'keyword.operator',
      name = 'LUA arythmetic signs',--'==, =, >'
      back = thc.blue.back,
      color = thc.blue.front,
   },
   {
      name = 'LUA constants',--'true, false'
      color = thc.red.front,
      style = 'bold',
      selector = 'constant.language',
   },

   --USER
   {
      selector = 'entity.name.function',
      name = 'LUA user function name',-- 'MADweb.' 'MAD '
      style = 'bold',
      color = thc.violet.front,
   },
   {
   {
      name = 'LUA user function arguments',--'opt'
      color = thc.green.front,
      back = thc.green.back,
      selector  = 'variable.parameter',
   },
      name = 'LUA numbers',--'2,3,4'
      color = '#000000',
      style = 'bold',
      color = thc.red.front,
      selector = 'constant',
   },
   {
      name= 'LUA user variables',--'x, color1'
      style='Medium',
      color='#222',
      selector = 'variable',
   },
   {
      name = 'LUA user strings',--strings, key strings, quotes'
      style='bold',
      color = '#000',
      selector= 'punctuation',
   }
}


theme.language.css = {
   {
      selector = 'entity.name.tag.css',
      name = 'CSS Selector - Tag',
      back = thc.pink.back,
      color = thc.pink.front,
      style = 'bold',
   },
   {
      selector = 'source.css entity.other.attribute-name.id',
      name = 'CSS Selector - Id',
      back = thc.pink.back,
      color = thc.pink.front,
      style = 'bold',
   },
   {
      selector = 'entity.other.attribute-name.class',
      name = 'CSS Selector - Class',
      back = thc.violet.back,
      color = thc.violet.front,
      style = 'bold',
   },
   {
      selector = 'entity.other.attribute-name.pseudo-element, entity.other',
      name = 'CSS Pseudo Class,attribute-name.pseudo-class',
      back = thc.pink.back,
      color = thc.pink.front,
   },
   {
      selector = 'support.type.property-name',
      name = 'CSS Property Name',
      back = thc.pink.back,
      color = thc.pink.front,
   },
   {
      selector = 'support.constant.property-value',
      name = 'CSS Property Value',
      back = thc.cyan.back,
      color = thc.cyan.front,
   },
   {
      selector = 'constant.other.color.rgb-value',
      name = 'CSS Color',
      back = thc.pink.back,
      color = thc.pink.front,
   },
   {
      selector = 'keyword.other.unit.css',
      name = 'CSS Unit',
      back = thc.pink.back,
      color = thc.pink.front,
   },
   {
      selector = 'support.constant.font-name',
      name = 'CSS Font Name',
      back = thc.green.back,
      color = thc.green.front,
   },
   {
      selector = 'punctuation.section.property-list.css',
      name = 'CSS Curly Brackets',
      back = thc.pink.back,
      color = thc.pink.front,
   },
   {
      selector = 'punctuation.section.function.css',
      name = 'CSS Round Brackets',
      back = thc.pink.back,
      color = thc.pink.front,
   },
   {
      selector = 'support.function.misc.css',
      name = 'CSS url() / rgba() / hsla',
      back = thc.pink.back,
      color = thc.pink.front,
   },
   {
      selector = 'variable.parameter.misc.css',
      name = 'CSS Parameter',
      back = thc.pink.back,
      color = thc.pink.front,
   }
}

theme.language.markdown = {
   {
      name = 'Markdown punctuation',
      selector = 'markup.list, text.html.markdown punctuation.definition, meta.separator.markdown',
      back = thc.pink.back,
      color = thc.pink.front,
   },
   {
      name = 'Markdown heading',
      selector = 'markup.heading',
      back = thc.blue.back,
      color = thc.blue.front,
   },
   {
      name = 'Markdown text inside some block element',
      selector = 'markup.quote, meta.paragraph.list',
      back = thc.violet.back,
      color = thc.violet.front,
   },
   {
      name = 'Markdown em',
      selector = 'markup.italic',
      back = thc.red.back,
      color = thc.red.front,
   },
   {
      name = 'Markdown strong',
      selector = 'markup.bold',
      color = thc.red.front,
   },
   {
      name = 'Markdown reference',
      selector = 'markup.underline.link.markdown, meta.link.inline punctuation.definition.metadata, meta.link.reference.markdowdefinition.constant, meta.link.reference.markdown constant.other.reference',
      color = thc.red.front,
   },
   {
      name = 'Markdown linebreak',
      selector = 'meta.paragraph.markdown meta.dummy.line-break',
      color = thc.red.front,
   }
}


return theme
