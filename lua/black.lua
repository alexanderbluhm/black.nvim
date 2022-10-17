local black = {
    gray1    = '#111111';
    gray2    = '#222222';
    gray3    = '#333333';
    gray4    = '#444444';
    gray7    = '#777777';
    graya    = '#aaaaaa';
    white    = '#d6deeb';
    bright   = '#eeeeee';
    bgblue   = '#000000';
    neardark = '#112630';
    purple   = '#c792ea';
    green    = '#c5e478';
    yellow   = '#ffcb8b';
    gray     = '#637777';
    blue     = '#82aaff';
    yellow2  = '#f78c6c';
    yellow3  = '#fbec9f';
    yellow4  = '#f4d554';
    green2   = '#7fdbca';
    red      = '#ff5874';
    blue2    = '#5ca7e4';
    purple2  = '#2d2c5d';
    hoki     = '#5f7e97';
    error_fg = '#EF5350';
    info_fg  = '#64B5F6';
    warn_fg  = '#FFCA28';
    hint_fg  = '#c51cfd';
    none     = 'NONE';
  }

  function black.terminal_color()
    vim.g.terminal_color_0  = black.bgblue
    vim.g.terminal_color_1  = black.red
    vim.g.terminal_color_2  = black.green
    vim.g.terminal_color_3  = black.yellow2
    vim.g.terminal_color_4  = black.blue
    vim.g.terminal_color_5  = black.purple
    vim.g.terminal_color_6  = black.green2
    vim.g.terminal_color_7  = black.graya
    vim.g.terminal_color_8  = black.gray
    vim.g.terminal_color_9  = black.red
    vim.g.terminal_color_10 = black.green
    vim.g.terminal_color_11 = black.yellow2
    vim.g.terminal_color_12 = black.blue
    vim.g.terminal_color_13 = black.purple
    vim.g.terminal_color_14 = black.green2
    vim.g.terminal_color_15 = black.bright
  end

  function black.highlight(group, color)
    local style = color.style and 'gui=' .. color.style or 'gui=NONE'
    local fg = color.fg and 'guifg=' .. color.fg or 'guifg=NONE'
    local bg = color.bg and 'guibg=' .. color.bg or 'guibg=NONE'
    local sp = color.sp and 'guisp=' .. color.sp or ''
    vim.api.nvim_command('highlight ' .. group .. ' ' .. style .. ' ' .. fg ..
    ' ' .. bg..' '..sp)
  end

  function black.load_syntax()
    local syntax = {
      Normal                               = {fg=black.white,bg=black.bgblue};
      Terminal                             = {fg = black.white,bg=black.darkblue};
      LineNr                               = {fg=black.gray4,   bg=black.bgblue};
      CursorLine                           = {bg=black.neardark};
      CursorLineNr                         = {fg=black.graya,   bg=black.neardark};
      ColorColumn                          = {bg=black.gray2};
      Directory                            = {fg=black.blue};
      DiffAdd                              = {fg=black.bgblue,  bg=black.green};
      DiffChange                           = {fg=black.bgblue,  bg=black.yellow};
      DiffDelete                           = {fg=black.bgblue,  bg=black.red };
      DiffText                             = {fg=black.bgblue,  bg=black.green};
      diffAdded                            = {fg=black.green};
      diffRemoved                          = {fg=black.red};
      VertSplit                            = {fg=black.gray7};
      Folded                               = {fg=black.gray7,   bg=black.bgblue};
      FoldColumn                           = {fg=black.gray3,   bg=black.bgblue};
      SignColumn                           = {fg=black.none,    bg=black.bgblue};
      IncSearch                            = {fg=black.bright,  bg=black.yellow};
      NonText                              = {fg=black.gray4};
      PMenu                                = {bg=black.purple2};
      PMenuSel                             = {bg=black.purple};
      Search                               = {fg=black.bgblue,  bg=black.yellow};
      SpecialKey                           = {fg=black.yellow};
      StatusLine                           = {fg=black.bright,  bg=black.neardark};
      StatusLineNC                         = {fg=black.gray7,   bg=black.neardark};
      Title                                = {fg=black.blue};
      Visual                               = {fg=black.white,   bg=black.purple2};
      EndOfBuffer                          = {fg=black.gray4,   bg=black.bgblue };
      Comment                              = {fg=black.gray,    style='italic'};
      Constant                             = {fg=black.green};
      String                               = {fg=black.yellow};
      Identifier                           = {fg=black.green2};
      Statement                            = {fg=black.blue};
      Operator                             = {fg=black.purple};
      Exception                            = {fg=black.green};
      PreProc                              = {fg=black.purple};
      Type                                 = {fg=black.green};
      StorageClass                         = {fg=black.purple};
      htmlTag                              = {fg=black.gray,    bg=black.none};
      htmlEndTag                           = {fg=black.gray,    bg=black.none};
      Todo                                 = {fg=black.gray7,   bg=black.yellow};
      jsStorageClass                       = {fg=black.blue};
      jsOperator                           = {fg=black.purple};
      jsArrowFunction                      = {fg=black.purple};
      jsString                             = {fg=black.yellow};
      jsComment                            = {fg=black.gray,    style='italic'};
      jsFuncCall                           = {fg=black.blue};
      jsNumber                             = {fg=black.yellow2};
      jsSpecial                            = {fg=black.yellow2};
      jsObjectProp                         = {fg=black.green2};
      jsOperatorKeyword                    = {fg=black.green2};
      jsBooleanFalse                       = {fg=black.red};
      jsBooleanTrue                        = {fg=black.red};
      jsRegexpString                       = {fg=black.blue2};
      jsConditional                        = {fg=black.purple};
      jsFunction                           = {fg=black.blue};
      jsReturn                             = {fg=black.purple};
      jsFuncName                           = {fg=black.blue};
      jsParensError                        = {fg=black.blue};
      jsClassDefinition                    = {fg=black.yellow};
      jsImport                             = {fg=black.purple,  style='italic'};
      jsFrom                               = {fg=black.purple,  style='italic'};
      jsModuleAs                           = {fg=black.purple,  style='italic'};
      jsExport                             = {fg=black.green2};
      jsExportDefault                      = {fg=black.green2};
      jsExtendsKeyword                     = {fg=black.purple,  style='italic'};
      javaScriptReserved                   = {fg=black.blue};
      javaScriptConditional                = {fg=black.purple};
      javaScriptStringS                    = {fg=black.yellow};
      javaScriptBoolean                    = {fg=black.red};
      javaScriptBraces                     = {fg=black.white};
      javaScriptLineComment                = {fg=black.gray,    style='italic'};
      javaScriptSpecial                    = {fg=black.yellow2};
      javaScriptFunction                   = {fg=black.blue};
      javaScriptStatement                  = {fg=black.purple};
      javaScriptException                  = {fg=black.green};
      scssSelectorName                     = {fg=black.green};
      cssTagName                           = {fg=black.red};
      cssClassName                         = {fg=black.green,   style='italic'};
      cssClassNameDot                      = {fg=black.green,   style='italic'};
      cssBraces                            = {fg=black.white};
      cssPositioningProp                   = {fg=black.green2};
      cssBoxProp                           = {fg=black.green2};
      cssDimensionProp                     = {fg=black.green2};
      cssTransitionProp                    = {fg=black.green2};
      cssTextProp                          = {fg=black.green2};
      cssFontProp                          = {fg=black.green2};
      cssBorderProp                        = {fg=black.green2};
      cssBackgroundProp                    = {fg=black.green2};
      cssUIProp                            = {fg=black.green2};
      cssIEUIProp                          = {fg=black.red};
      scssFunctionName                     = {fg=black.green};
      cssPositioningAttr                   = {fg=black.red};
      cssTableAttr                         = {fg=black.red};
      cssCommonAttr                        = {fg=black.red};
      cssColorProp                         = {fg=black.green2};
      cssIncludeKeyword                    = {fg=black.green2};
      cssKeyFrameSelector                  = {fg=black.green};
      cssPseudoClassId                     = {fg=black.green,   style='italic'};
      cssBorderAttr                        = {fg=black.red};
      cssValueLength                       = {fg=black.yellow2};
      cssUnitDecorators                    = {fg=black.yellow3};
      cssIdentifier                        = {fg=black.yellow4, style='italic'};
      markdownHeadingDelimiter             = {fg=black.gray};
      markdownCodeDelimiter                = {fg=black.yellow};
      markdownCode                         = {fg=black.graya};
      mkdCodeStart                         = {fg=black.white};
      mkdCodeEnd                           = {fg=black.white};
      mkdLinkDef                           = {fg=black.green2};
      mkdCodeDelimiter                     = {fg=black.gray,    bg=black.bgblue};
      htmlH1                               = {fg=black.blue,    style='bold'};
      htmlH2                               = {fg=black.blue,    style='bold'};
      htmlH3                               = {fg=black.blue,    style='bold'};
      htmlH4                               = {fg=black.blue};
      htmlH5                               = {fg=black.blue};
      htmlBold                             = {fg=black.purple,  bg=black.bgblue  ,style='bold'};
      shComment                            = {fg=black.gray,    bg=black.bgblue  ,style='italic'};
      NERDTreeDir                          = {fg=black.hoki};
      NERDTreeOpenable                     = {fg=black.red};
      NERDTreeClosable                     = {fg=black.yellow};
      NERDTreeHelp                         = {fg=black.gray4,   style='italic'};
      NERDTreeUp                           = {fg=black.gray};
      NERDTreeDirSlash                     = {fg=black.gray};
      gitcommitSummary                     = {fg=black.white};
      IndentGuidesOdd                      = {bg=black.gray4};
      IndentGuidesEven                     = {bg=black.gray7};
      GitGutterAdd                         = {fg=black.green};
      GitGutterChange                      = {fg=black.yellow};
      GitGutterDelete                      = {fg=black.red};
      GitGutterChangeDelete                = {fg=black.yellow};
      LspDiagnosticsSignError              = {fg=black.error_fg};
      LspDiagnosticsSignWarning            = {fg=black.warn_fg};
      LspDiagnosticsSignInformation        = {fg=black.info_fg};
      LspDiagnosticsSignHint               = {fg=black.hint_fg};
      LspDiagnosticsVirtualTextError       = {fg=black.error_fg};
      LspDiagnosticsVirtualTextWarning     = {fg=black.warn_fg};
      LspDiagnosticsVirtualTextInformation = {fg=black.info_fg};
      LspDiagnosticsVirtualTextHint        = {fg=black.hint_fg};
      LspDiagnosticsUnderlineError         = {style="undercurl",sp=black.error_fg};
      LspDiagnosticsUnderlineWarning       = {style="undercurl",sp=black.warn_fg};
      LspDiagnosticsUnderlineInformation   = {style="undercurl",sp=black.info_fg};
      LspDiagnosticsUnderlineHint          = {style="undercurl",sp=black.hint_fg};
    }
    return syntax
  end


  function black.get_black_color()
    return black
  end

  function black.colorscheme()
    vim.api.nvim_command('hi clear')
    if vim.fn.exists('syntax_on') then
      vim.api.nvim_command('syntax reset')
    end
    vim.o.background = 'dark'
    vim.o.termguicolors = true

    black.terminal_color()
    local syntax = black.load_syntax()

    for group,colors in pairs(syntax) do
      black.highlight(group,colors)
    end
  end

  black.colorscheme()

  return black
