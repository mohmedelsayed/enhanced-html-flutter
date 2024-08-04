import 'package:flutter/material.dart';

/// Abstract class that all the toolbar classes extend
abstract class Toolbar {
  const Toolbar();
}

/// Style group
class StyleButtons extends Toolbar {
  final bool style;

  const StyleButtons({
    this.style = true,
  });
}

/// Font setting group
class FontSettingButtons extends Toolbar {
  final bool fontName;
  final bool fontSize;
  final bool fontSizeUnit;

  const FontSettingButtons({
    this.fontName = true,
    this.fontSize = true,
    this.fontSizeUnit = true,
  });
}

/// Font group
class FontButtons extends Toolbar {
  final bool bold;
  final bool italic;
  final bool underline;
  final bool clearAll;
  final bool strikethrough;
  final bool superscript;
  final bool subscript;

  const FontButtons({
    this.bold = true,
    this.italic = true,
    this.underline = true,
    this.clearAll = true,
    this.strikethrough = true,
    this.superscript = true,
    this.subscript = true,
  });
  List<Icon> getIcons1() {
    var icons = <Icon>[];
    if (bold) icons.add(Icon(Icons.format_bold, size: 20));
    if (italic) icons.add(Icon(Icons.format_italic, size: 20));
    if (underline) icons.add(Icon(Icons.format_underline, size: 20));
    if (clearAll) icons.add(Icon(Icons.format_clear, size: 20));
    return icons;
  }

  List<Icon> getIcons2() {
    var icons = <Icon>[];
    if (strikethrough) icons.add(Icon(Icons.format_strikethrough, size: 20));
    if (superscript) icons.add(Icon(Icons.superscript, size: 20));
    if (subscript) icons.add(Icon(Icons.subscript, size: 20));
    return icons;
  }
}

/// Color bar group
class ColorButtons extends Toolbar {
  final bool foregroundColor;
  final bool highlightColor;

  const ColorButtons({
    this.foregroundColor = true,
    this.highlightColor = true,
  });

  List<Icon> getIcons() {
    var icons = <Icon>[];
    if (foregroundColor) icons.add(Icon(Icons.format_color_text, size: 20));
    if (highlightColor) icons.add(Icon(Icons.format_color_fill, size: 20));
    return icons;
  }
}

/// List group
class ListButtons extends Toolbar {
  final bool ul;
  final bool ol;
  final bool listStyles;

  const ListButtons({
    this.ul = true,
    this.ol = true,
    this.listStyles = true,
  });

  List<Icon> getIcons() {
    var icons = <Icon>[];
    if (ul) icons.add(Icon(Icons.format_list_bulleted, size: 20));
    if (ol) icons.add(Icon(Icons.format_list_numbered, size: 20));
    return icons;
  }
}

/// Paragraph group
class ParagraphButtons extends Toolbar {
  final bool alignLeft;
  final bool alignCenter;
  final bool alignRight;
  final bool alignJustify;
  final bool increaseIndent;
  final bool decreaseIndent;
  final bool textDirection;
  final bool lineHeight;
  final bool caseConverter;

  const ParagraphButtons({
    this.alignLeft = true,
    this.alignCenter = true,
    this.alignRight = true,
    this.alignJustify = true,
    this.increaseIndent = true,
    this.decreaseIndent = true,
    this.textDirection = true,
    this.lineHeight = true,
    this.caseConverter = true,
  });

  List<Icon> getIcons1() {
    var icons = <Icon>[];
    if (alignLeft) icons.add(Icon(Icons.format_align_left, size: 20));
    if (alignCenter) icons.add(Icon(Icons.format_align_center, size: 20));
    if (alignRight) icons.add(Icon(Icons.format_align_right, size: 20));
    if (alignJustify) icons.add(Icon(Icons.format_align_justify, size: 20));
    return icons;
  }

  List<Icon> getIcons2() {
    var icons = <Icon>[];
    if (increaseIndent) icons.add(Icon(Icons.format_indent_increase, size: 20));
    if (decreaseIndent) icons.add(Icon(Icons.format_indent_decrease, size: 20));
    return icons;
  }
}

/// Insert group
class InsertButtons extends Toolbar {
  final bool link;
  final bool picture;
  final bool audio;
  final bool video;
  final bool otherFile;
  final bool table;
  final bool hr;

  const InsertButtons({
    this.link = true,
    this.picture = true,
    this.audio = true,
    this.video = true,
    this.otherFile = false,
    this.table = true,
    this.hr = true,
  });

  List<Icon> getIcons() {
    var icons = <Icon>[];
    if (link) icons.add(Icon(Icons.link, size: 20));
    if (picture) icons.add(Icon(Icons.image_outlined, size: 20));
    if (audio) icons.add(Icon(Icons.audiotrack_outlined, size: 20));
    if (video) icons.add(Icon(Icons.videocam_outlined, size: 20));
    if (otherFile) icons.add(Icon(Icons.attach_file, size: 20));
    if (table) icons.add(Icon(Icons.table_chart_outlined, size: 20));
    if (hr) icons.add(Icon(Icons.horizontal_rule, size: 20));
    return icons;
  }
}

/// Miscellaneous group
class OtherButtons extends Toolbar {
  final bool fullscreen;
  final bool codeview;
  final bool undo;
  final bool redo;
  final bool help;
  final bool copy;
  final bool paste;

  const OtherButtons({
    this.fullscreen = true,
    this.codeview = true,
    this.undo = true,
    this.redo = true,
    this.help = true,
    this.copy = true,
    this.paste = true,
  });

  List<Icon> getIcons1() {
    var icons = <Icon>[];
    if (fullscreen) icons.add(Icon(Icons.fullscreen, size: 20));
    if (codeview) icons.add(Icon(Icons.code, size: 20));
    if (undo) icons.add(Icon(Icons.undo, size: 20));
    if (redo) icons.add(Icon(Icons.redo, size: 20));
    if (help) icons.add(Icon(Icons.help_outline, size: 20));
    return icons;
  }

  List<Icon> getIcons2() {
    var icons = <Icon>[];
    if (copy) icons.add(Icon(Icons.copy, size: 20));
    if (paste) icons.add(Icon(Icons.paste, size: 20));
    return icons;
  }
}
