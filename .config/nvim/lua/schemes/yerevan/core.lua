local colors = require('schemes.yerevan.palette')

local core = {
    Normal       				= { fg = colors.Gray16, bg = colors.Gray2 },
    Comment      				= { fg = colors.Gray8, italic = true },
    SpecialComment 				= { fg = colors.Gray8, italic = true  },
    Todo         				= { fg = colors.Gray8, italic = true },
   
    Visual       				= { fg = colors.Blue0, bg = colors.Blue16 },
    Cursor                      = { fg = colors.Gray0, bg = colors.Gray24 },
    CursorLine   				= { bg = colors.Gray3 },
    LineNr       				= { fg = colors.Gray4 },
    CursorLineNr 				= { fg = colors.Gray24, bg = colors.Gray3, bold = true },
    Search       				= { fg = colors.Yellow20, bg = colors.Yellow8 },
    MatchParen   				= { fg = colors.Yellow20, bold = true },
    
    StatusLine                  = { fg = colors.Gray8 },
   
    Boolean      				= { fg = colors.Wine12, bold = true },
    Number       				= { fg = colors.Orange12 },
    Float                       = { fg = colors.Yellow12 },
    Character    				= { fg = colors.Coral16, bold = true },
    String       				= { fg = colors.Red8 },
    
    Keyword      				= { fg = colors.Gray24, bold = true },
    Operator     				= { fg = colors.Rose20, bold = true },
    Tag          				= { fg = colors.Gray24, bold = true },
    Type         				= { fg = colors.Orchid12 },
    Identifier   				= { fg = colors.Magenta12 },
    Constant     				= { fg = colors.Azure12 },
    Function     				= { fg = colors.Blue16 },
    Macro        				= { fg = colors.Indigo12 },
    Structure    				= { fg = colors.Mint12 },
    StorageClass 				= { fg = colors.Gray24, bold = true },
    Typedef      				= { fg = colors.Cobalt20, bold = true },
    PreProc      				= { fg = colors.Cobalt20, bold = true },
    Include      				= { fg = colors.Raspberry20, bold = true },
    Define       				= { fg = colors.Cobalt20, bold = true },
    Exception    				= { fg = colors.Red20, bold = true },

    PreCondit    				= { fg = colors.Rose20, bold = true },
    Conditional  				= { fg = colors.Rose20, bold = true },
    Repeat       				= { fg = colors.Orange20, bold = true },
    
    SpecialChar  				= { fg = colors.Orange12, bold = true },
    
    Special      				= { fg = colors.Rose20 },
    Delimiter   				= { fg = colors.Gray20 },
    PunctuationBracket          = { fg = colors.Cyan8 },

    Title        				= { fg = colors.Gray24 },
    Label        				= { fg = colors.Gray16 },
    Bold                        = { bold = true },
    Italic                      = { italic = true },
    Underlined   				= { underline = true },

    Directory    				= { fg = colors.Blue16 },
    SpecialKey   				= { fg = colors.Gray24 },
    NonText      				= { fg = colors.Gray4 },

    FoldColumn                  = { fg = colors.Blue16 },
    Folded                      = { fg = colors.Blue16 },
    
    DiffAdd      				= { fg = colors.Blue16 },
    DiffText     				= { fg = colors.Gray16 },
    DiffChange   				= { fg = colors.Yellow12 },
    DiffChangeDelete            = { fg = colors.Orange12 },
    DiffDelete   				= { fg = colors.Red8, strikethrough = true },
    
    healthError                 = { fg = colors.Red16 },
    healthWarning               = { fg = colors.Orange16 },
    healthSuccess               = { fg = colors.Green16 },
    
    Error        				= { fg = colors.Red16 },
    Warning        				= { fg = colors.Orange16 },
    Info                        = { fg = colors.Blue16 },
    Hint                        = { fg = colors.Orchid16 },
    ErrorMsg     				= { fg = colors.Red16 },
    WarningMsg   				= { fg = colors.Orange16 },
    Question     				= { fg = colors.Yellow16 },
    MoreMsg      				= { fg = colors.Gray16 },
                                
    DiagnosticError        		= { fg = colors.Red16 },
    DiagnosticWarn        		= { fg = colors.Orange16 },
    DiagnosticInfo              = { fg = colors.Blue16 },
    DiagnosticHint              = { fg = colors.Orchid16 },
    DiagnosticUnnecessary       = { fg = colors.Gray16 },
    DiagnosticVirtualTextError  = { fg = colors.Red16 },
    DiagnosticVirtualTextWarn   = { fg = colors.Orange16 },
    DiagnosticVirtualTextInfo   = { fg = colors.Blue16 },
    DiagnosticVirtualTextHint   = { fg = colors.Orchid16 },
    DiagnosticUnderlineError    = { fg = colors.Red16 },
    DiagnosticUnderlineWarn     = { fg = colors.Orange16 },
    DiagnosticUnderlineInfo     = { fg = colors.Blue16 },
    DiagnosticUnderlineHint     = { fg = colors.Orchid16 },
}

return core
