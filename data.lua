function generateMathList(index, character)
  data:extend({
    {
      type = "virtual-signal",
      name = "signal-" .. character,
      icon = "__Custom Signals__/graphics/icons/signal/mathematics/virtual-signal-" .. character .. ".png",
      subgroup = "virtual-signal-math",
      order = "cd[math]-[" .. character .. "]"
    }
  })
end

function generatePunctuationList(index, character)
  data:extend({
    {
      type = "virtual-signal",
      name = "signal-" .. character,
      icon = "__Custom Signals__/graphics/icons/signal/punctuation/virtual-signal-" .. character .. ".png",
      subgroup = "virtual-signal-punctuation",
      order = "cc[punctuation]-[" .. character .. "]"
    }
  })
end

function generateDirectionList(index, character)
  data:extend({
    {
      type = "virtual-signal",
      name = "signal-" .. character,
      icon = "__Custom Signals__/graphics/icons/signal/directions/virtual-signal-" .. character .. ".png",
      subgroup = "virtual-signal-direction",
      order = "cf[direction]-[" .. character .. "]"
    }
  })
end

function generateCurrencyList(index, character)
  data:extend({
    {
      type = "virtual-signal",
      name = "signal-" .. character,
      icon = "__Custom Signals__/graphics/icons/signal/currency/virtual-signal-" .. character .. ".png",
      subgroup = "virtual-signal-currency",
      order = "ce[currency]-[" .. character .. "]"
    }
  })
end

mathList =
{
  "null",
  "degree",
  "equals",
  "fraction-25",
  "fraction-50",
  "fraction-75",
  "greater-than-or-equals",
  "greater-than",
  "less-than-or-equals",
  "less-than",
  "not-equals",
  "obelus",
  "percent",
  "plus-minus",
  "plus",
  "power",
  "subtract",
}

punctuationList =
{
  "arobase",
  "exclamation-point",
  "pound-sign",
  "ampersand",
  "asterisk",
  "left-parenthesis",
  "right-parenthesis",
  "underscore",
  "left-square-bracket",
  "left-curly-bracket",
  "right-square-bracket",
  "right-curly-bracket",
  "vertical-break",
  "single-quote",
  "double-quote",
  "colon",
  "semicolon",
  "forward-slash",
  "back-slash",
  "comma",
  "period",
  "question-mark",
  "back-quote",
  "tilde",
  "interrobang",
  "double-bang",
  "crunch-bang",
}

currencyList =
{
  "dollar",
  "cent",
  "euro",
  "pound",
  "franc",
  "peso",
  "yen",
  "currency",
}

directionList =
{
  "left",
  "up",
  "right",
  "down",
  "left-right",
  "up-down",
}

for i, k in pairs(mathList) do
  generateMathList(i, k)
end

for i, k in pairs(punctuationList) do
  generatePunctuationList(i, k)
end

for i, k in pairs(currencyList) do
  generateCurrencyList(i, k)
end

for i, k in pairs(directionList) do
  generateDirectionList(i, k)
end

data:extend({
  {
    type = "item-subgroup",
    name = "virtual-signal-math",
    group = "signals",
    order = "dd"
  },
  {
    type = "item-subgroup",
    name = "virtual-signal-punctuation",
    group = "signals",
    order = "dd"
  },
  {
    type = "item-subgroup",
    name = "virtual-signal-direction",
    group = "signals",
    order = "dd"
  },
  {
    type = "item-subgroup",
    name = "virtual-signal-currency",
    group = "signals",
    order = "dd"
  },
})