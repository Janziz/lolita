# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{lolita}
  s.version = "3.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["ITHouse", "Arturs Meisters"]
  s.date = %q{2011-03-16}
  s.description = %q{Great Rails CMS that allow you to start working with models right when you add this to your project.}
  s.email = %q{support@ithouse.lv}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".project",
    "GUIDELINE",
    "Gemfile",
    "IDEA",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "app/controllers/lolita/rest_controller.rb",
    "app/helpers/components/lolita/list_component.rb",
    "app/helpers/lolita_helper.rb",
    "app/views/components/lolita/field/_collection.html.erb",
    "app/views/components/lolita/field/_date.html.erb",
    "app/views/components/lolita/field/_datetime.html.erb",
    "app/views/components/lolita/field/_disabled.html.erb",
    "app/views/components/lolita/field/_display.html.erb",
    "app/views/components/lolita/field/_integer.html.erb",
    "app/views/components/lolita/field/_label.html.erb",
    "app/views/components/lolita/field/_object.html.erb",
    "app/views/components/lolita/field/_password.html.erb",
    "app/views/components/lolita/field/_select.html.erb",
    "app/views/components/lolita/field/_string.html.erb",
    "app/views/components/lolita/field/_text.html.erb",
    "app/views/components/lolita/field_set/_display.html.erb",
    "app/views/components/lolita/list/_body.html.erb",
    "app/views/components/lolita/list/_body_cell.html.erb",
    "app/views/components/lolita/list/_checkbox_cell.html.erb",
    "app/views/components/lolita/list/_checkbox_header.html.erb",
    "app/views/components/lolita/list/_display.html.erb",
    "app/views/components/lolita/list/_header.html.erb",
    "app/views/components/lolita/list/_header_cell.html.erb",
    "app/views/components/lolita/list/_new_resource.html.erb",
    "app/views/components/lolita/list/_paginator.html.erb",
    "app/views/components/lolita/list/_row.html.erb",
    "app/views/components/lolita/list/_title.html.erb",
    "app/views/components/lolita/list/_tool_cell.html.erb",
    "app/views/components/lolita/list/_tool_header.html.erb",
    "app/views/components/lolita/navigation/_display.html.erb",
    "app/views/components/lolita/tab/_content.html.erb",
    "app/views/components/lolita/tab/_default.html.erb",
    "app/views/components/lolita/tab/_display.html.erb",
    "app/views/components/lolita/tabs/_display.html.erb",
    "app/views/lolita/layouts/application.html.erb",
    "app/views/lolita/rest/form.html.erb",
    "app/views/lolita/rest/index.html.erb",
    "author",
    "config/locales/en.yml",
    "db/seed.rb",
    "lib/generators/lolita/file_helper.rb",
    "lib/generators/lolita/install_generator.rb",
    "lib/generators/templates/lolita.rb",
    "lib/lolita.rb",
    "lib/lolita/adapter/abstract_adapter.rb",
    "lib/lolita/adapter/active_record.rb",
    "lib/lolita/adapter/mongoid.rb",
    "lib/lolita/builder.rb",
    "lib/lolita/callbacks.rb",
    "lib/lolita/configuration/base.rb",
    "lib/lolita/configuration/column.rb",
    "lib/lolita/configuration/columns.rb",
    "lib/lolita/configuration/field.rb",
    "lib/lolita/configuration/field_extensions/collection.rb",
    "lib/lolita/configuration/field_set.rb",
    "lib/lolita/configuration/list.rb",
    "lib/lolita/configuration/page.rb",
    "lib/lolita/configuration/tab.rb",
    "lib/lolita/configuration/tabs.rb",
    "lib/lolita/controllers/component_helpers.rb",
    "lib/lolita/controllers/internal_helpers.rb",
    "lib/lolita/controllers/url_helpers.rb",
    "lib/lolita/controllers/user_helpers.rb",
    "lib/lolita/dbi/base.rb",
    "lib/lolita/errors.rb",
    "lib/lolita/lazy_loader.rb",
    "lib/lolita/mapping.rb",
    "lib/lolita/modules.rb",
    "lib/lolita/modules/rest.rb",
    "lib/lolita/observed_array.rb",
    "lib/lolita/rails.rb",
    "lib/lolita/rails/routes.rb",
    "lib/lolita/ruby_ext/accessors.rb",
    "lib/lolita/version.rb",
    "log/development.log",
    "public/javascripts/jquery-1.5.1.min.js",
    "public/javascripts/lolita/main.js",
    "public/javascripts/lolita/tab.js",
    "public/javascripts/modernizr-1.7.min.js",
    "public/javascripts/rails.js",
    "public/javascripts/tinymce/jquery.tinymce.js",
    "public/javascripts/tinymce/langs/en.js",
    "public/javascripts/tinymce/license.txt",
    "public/javascripts/tinymce/plugins/advhr/css/advhr.css",
    "public/javascripts/tinymce/plugins/advhr/editor_plugin.js",
    "public/javascripts/tinymce/plugins/advhr/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/advhr/js/rule.js",
    "public/javascripts/tinymce/plugins/advhr/langs/en_dlg.js",
    "public/javascripts/tinymce/plugins/advhr/rule.htm",
    "public/javascripts/tinymce/plugins/advimage/css/advimage.css",
    "public/javascripts/tinymce/plugins/advimage/editor_plugin.js",
    "public/javascripts/tinymce/plugins/advimage/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/advimage/image.htm",
    "public/javascripts/tinymce/plugins/advimage/img/sample.gif",
    "public/javascripts/tinymce/plugins/advimage/js/image.js",
    "public/javascripts/tinymce/plugins/advimage/langs/en_dlg.js",
    "public/javascripts/tinymce/plugins/advlink/css/advlink.css",
    "public/javascripts/tinymce/plugins/advlink/editor_plugin.js",
    "public/javascripts/tinymce/plugins/advlink/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/advlink/js/advlink.js",
    "public/javascripts/tinymce/plugins/advlink/langs/en_dlg.js",
    "public/javascripts/tinymce/plugins/advlink/link.htm",
    "public/javascripts/tinymce/plugins/advlist/editor_plugin.js",
    "public/javascripts/tinymce/plugins/advlist/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/autoresize/editor_plugin.js",
    "public/javascripts/tinymce/plugins/autoresize/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/autosave/editor_plugin.js",
    "public/javascripts/tinymce/plugins/autosave/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/autosave/langs/en.js",
    "public/javascripts/tinymce/plugins/bbcode/editor_plugin.js",
    "public/javascripts/tinymce/plugins/bbcode/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/contextmenu/editor_plugin.js",
    "public/javascripts/tinymce/plugins/contextmenu/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/directionality/editor_plugin.js",
    "public/javascripts/tinymce/plugins/directionality/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/emotions/editor_plugin.js",
    "public/javascripts/tinymce/plugins/emotions/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/emotions/emotions.htm",
    "public/javascripts/tinymce/plugins/emotions/img/smiley-cool.gif",
    "public/javascripts/tinymce/plugins/emotions/img/smiley-cry.gif",
    "public/javascripts/tinymce/plugins/emotions/img/smiley-embarassed.gif",
    "public/javascripts/tinymce/plugins/emotions/img/smiley-foot-in-mouth.gif",
    "public/javascripts/tinymce/plugins/emotions/img/smiley-frown.gif",
    "public/javascripts/tinymce/plugins/emotions/img/smiley-innocent.gif",
    "public/javascripts/tinymce/plugins/emotions/img/smiley-kiss.gif",
    "public/javascripts/tinymce/plugins/emotions/img/smiley-laughing.gif",
    "public/javascripts/tinymce/plugins/emotions/img/smiley-money-mouth.gif",
    "public/javascripts/tinymce/plugins/emotions/img/smiley-sealed.gif",
    "public/javascripts/tinymce/plugins/emotions/img/smiley-smile.gif",
    "public/javascripts/tinymce/plugins/emotions/img/smiley-surprised.gif",
    "public/javascripts/tinymce/plugins/emotions/img/smiley-tongue-out.gif",
    "public/javascripts/tinymce/plugins/emotions/img/smiley-undecided.gif",
    "public/javascripts/tinymce/plugins/emotions/img/smiley-wink.gif",
    "public/javascripts/tinymce/plugins/emotions/img/smiley-yell.gif",
    "public/javascripts/tinymce/plugins/emotions/js/emotions.js",
    "public/javascripts/tinymce/plugins/emotions/langs/en_dlg.js",
    "public/javascripts/tinymce/plugins/example/dialog.htm",
    "public/javascripts/tinymce/plugins/example/editor_plugin.js",
    "public/javascripts/tinymce/plugins/example/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/example/img/example.gif",
    "public/javascripts/tinymce/plugins/example/js/dialog.js",
    "public/javascripts/tinymce/plugins/example/langs/en.js",
    "public/javascripts/tinymce/plugins/example/langs/en_dlg.js",
    "public/javascripts/tinymce/plugins/fullpage/css/fullpage.css",
    "public/javascripts/tinymce/plugins/fullpage/editor_plugin.js",
    "public/javascripts/tinymce/plugins/fullpage/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/fullpage/fullpage.htm",
    "public/javascripts/tinymce/plugins/fullpage/js/fullpage.js",
    "public/javascripts/tinymce/plugins/fullpage/langs/en_dlg.js",
    "public/javascripts/tinymce/plugins/fullscreen/editor_plugin.js",
    "public/javascripts/tinymce/plugins/fullscreen/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/fullscreen/fullscreen.htm",
    "public/javascripts/tinymce/plugins/iespell/editor_plugin.js",
    "public/javascripts/tinymce/plugins/iespell/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/inlinepopups/editor_plugin.js",
    "public/javascripts/tinymce/plugins/inlinepopups/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/inlinepopups/skins/clearlooks2/img/alert.gif",
    "public/javascripts/tinymce/plugins/inlinepopups/skins/clearlooks2/img/button.gif",
    "public/javascripts/tinymce/plugins/inlinepopups/skins/clearlooks2/img/buttons.gif",
    "public/javascripts/tinymce/plugins/inlinepopups/skins/clearlooks2/img/confirm.gif",
    "public/javascripts/tinymce/plugins/inlinepopups/skins/clearlooks2/img/corners.gif",
    "public/javascripts/tinymce/plugins/inlinepopups/skins/clearlooks2/img/horizontal.gif",
    "public/javascripts/tinymce/plugins/inlinepopups/skins/clearlooks2/img/vertical.gif",
    "public/javascripts/tinymce/plugins/inlinepopups/skins/clearlooks2/window.css",
    "public/javascripts/tinymce/plugins/inlinepopups/template.htm",
    "public/javascripts/tinymce/plugins/insertdatetime/editor_plugin.js",
    "public/javascripts/tinymce/plugins/insertdatetime/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/layer/editor_plugin.js",
    "public/javascripts/tinymce/plugins/layer/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/legacyoutput/editor_plugin.js",
    "public/javascripts/tinymce/plugins/legacyoutput/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/media/css/media.css",
    "public/javascripts/tinymce/plugins/media/editor_plugin.js",
    "public/javascripts/tinymce/plugins/media/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/media/js/embed.js",
    "public/javascripts/tinymce/plugins/media/js/media.js",
    "public/javascripts/tinymce/plugins/media/langs/en_dlg.js",
    "public/javascripts/tinymce/plugins/media/media.htm",
    "public/javascripts/tinymce/plugins/media/moxieplayer.swf",
    "public/javascripts/tinymce/plugins/nonbreaking/editor_plugin.js",
    "public/javascripts/tinymce/plugins/nonbreaking/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/noneditable/editor_plugin.js",
    "public/javascripts/tinymce/plugins/noneditable/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/pagebreak/editor_plugin.js",
    "public/javascripts/tinymce/plugins/pagebreak/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/paste/editor_plugin.js",
    "public/javascripts/tinymce/plugins/paste/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/paste/js/pastetext.js",
    "public/javascripts/tinymce/plugins/paste/js/pasteword.js",
    "public/javascripts/tinymce/plugins/paste/langs/en_dlg.js",
    "public/javascripts/tinymce/plugins/paste/pastetext.htm",
    "public/javascripts/tinymce/plugins/paste/pasteword.htm",
    "public/javascripts/tinymce/plugins/preview/editor_plugin.js",
    "public/javascripts/tinymce/plugins/preview/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/preview/example.html",
    "public/javascripts/tinymce/plugins/preview/jscripts/embed.js",
    "public/javascripts/tinymce/plugins/preview/preview.html",
    "public/javascripts/tinymce/plugins/print/editor_plugin.js",
    "public/javascripts/tinymce/plugins/print/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/save/editor_plugin.js",
    "public/javascripts/tinymce/plugins/save/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/searchreplace/css/searchreplace.css",
    "public/javascripts/tinymce/plugins/searchreplace/editor_plugin.js",
    "public/javascripts/tinymce/plugins/searchreplace/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/searchreplace/js/searchreplace.js",
    "public/javascripts/tinymce/plugins/searchreplace/langs/en_dlg.js",
    "public/javascripts/tinymce/plugins/searchreplace/searchreplace.htm",
    "public/javascripts/tinymce/plugins/spellchecker/css/content.css",
    "public/javascripts/tinymce/plugins/spellchecker/editor_plugin.js",
    "public/javascripts/tinymce/plugins/spellchecker/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/spellchecker/img/wline.gif",
    "public/javascripts/tinymce/plugins/style/css/props.css",
    "public/javascripts/tinymce/plugins/style/editor_plugin.js",
    "public/javascripts/tinymce/plugins/style/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/style/js/props.js",
    "public/javascripts/tinymce/plugins/style/langs/en_dlg.js",
    "public/javascripts/tinymce/plugins/style/props.htm",
    "public/javascripts/tinymce/plugins/tabfocus/editor_plugin.js",
    "public/javascripts/tinymce/plugins/tabfocus/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/table/cell.htm",
    "public/javascripts/tinymce/plugins/table/css/cell.css",
    "public/javascripts/tinymce/plugins/table/css/row.css",
    "public/javascripts/tinymce/plugins/table/css/table.css",
    "public/javascripts/tinymce/plugins/table/editor_plugin.js",
    "public/javascripts/tinymce/plugins/table/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/table/js/cell.js",
    "public/javascripts/tinymce/plugins/table/js/merge_cells.js",
    "public/javascripts/tinymce/plugins/table/js/row.js",
    "public/javascripts/tinymce/plugins/table/js/table.js",
    "public/javascripts/tinymce/plugins/table/langs/en_dlg.js",
    "public/javascripts/tinymce/plugins/table/merge_cells.htm",
    "public/javascripts/tinymce/plugins/table/row.htm",
    "public/javascripts/tinymce/plugins/table/table.htm",
    "public/javascripts/tinymce/plugins/template/blank.htm",
    "public/javascripts/tinymce/plugins/template/css/template.css",
    "public/javascripts/tinymce/plugins/template/editor_plugin.js",
    "public/javascripts/tinymce/plugins/template/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/template/js/template.js",
    "public/javascripts/tinymce/plugins/template/langs/en_dlg.js",
    "public/javascripts/tinymce/plugins/template/template.htm",
    "public/javascripts/tinymce/plugins/visualchars/editor_plugin.js",
    "public/javascripts/tinymce/plugins/visualchars/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/wordcount/editor_plugin.js",
    "public/javascripts/tinymce/plugins/wordcount/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/xhtmlxtras/abbr.htm",
    "public/javascripts/tinymce/plugins/xhtmlxtras/acronym.htm",
    "public/javascripts/tinymce/plugins/xhtmlxtras/attributes.htm",
    "public/javascripts/tinymce/plugins/xhtmlxtras/cite.htm",
    "public/javascripts/tinymce/plugins/xhtmlxtras/css/attributes.css",
    "public/javascripts/tinymce/plugins/xhtmlxtras/css/popup.css",
    "public/javascripts/tinymce/plugins/xhtmlxtras/del.htm",
    "public/javascripts/tinymce/plugins/xhtmlxtras/editor_plugin.js",
    "public/javascripts/tinymce/plugins/xhtmlxtras/editor_plugin_src.js",
    "public/javascripts/tinymce/plugins/xhtmlxtras/ins.htm",
    "public/javascripts/tinymce/plugins/xhtmlxtras/js/abbr.js",
    "public/javascripts/tinymce/plugins/xhtmlxtras/js/acronym.js",
    "public/javascripts/tinymce/plugins/xhtmlxtras/js/attributes.js",
    "public/javascripts/tinymce/plugins/xhtmlxtras/js/cite.js",
    "public/javascripts/tinymce/plugins/xhtmlxtras/js/del.js",
    "public/javascripts/tinymce/plugins/xhtmlxtras/js/element_common.js",
    "public/javascripts/tinymce/plugins/xhtmlxtras/js/ins.js",
    "public/javascripts/tinymce/plugins/xhtmlxtras/langs/en_dlg.js",
    "public/javascripts/tinymce/themes/advanced/about.htm",
    "public/javascripts/tinymce/themes/advanced/anchor.htm",
    "public/javascripts/tinymce/themes/advanced/charmap.htm",
    "public/javascripts/tinymce/themes/advanced/color_picker.htm",
    "public/javascripts/tinymce/themes/advanced/editor_template.js",
    "public/javascripts/tinymce/themes/advanced/editor_template_src.js",
    "public/javascripts/tinymce/themes/advanced/image.htm",
    "public/javascripts/tinymce/themes/advanced/img/colorpicker.jpg",
    "public/javascripts/tinymce/themes/advanced/img/flash.gif",
    "public/javascripts/tinymce/themes/advanced/img/icons.gif",
    "public/javascripts/tinymce/themes/advanced/img/iframe.gif",
    "public/javascripts/tinymce/themes/advanced/img/pagebreak.gif",
    "public/javascripts/tinymce/themes/advanced/img/quicktime.gif",
    "public/javascripts/tinymce/themes/advanced/img/realmedia.gif",
    "public/javascripts/tinymce/themes/advanced/img/shockwave.gif",
    "public/javascripts/tinymce/themes/advanced/img/trans.gif",
    "public/javascripts/tinymce/themes/advanced/img/video.gif",
    "public/javascripts/tinymce/themes/advanced/img/windowsmedia.gif",
    "public/javascripts/tinymce/themes/advanced/js/about.js",
    "public/javascripts/tinymce/themes/advanced/js/anchor.js",
    "public/javascripts/tinymce/themes/advanced/js/charmap.js",
    "public/javascripts/tinymce/themes/advanced/js/color_picker.js",
    "public/javascripts/tinymce/themes/advanced/js/image.js",
    "public/javascripts/tinymce/themes/advanced/js/link.js",
    "public/javascripts/tinymce/themes/advanced/js/source_editor.js",
    "public/javascripts/tinymce/themes/advanced/langs/en.js",
    "public/javascripts/tinymce/themes/advanced/langs/en_dlg.js",
    "public/javascripts/tinymce/themes/advanced/link.htm",
    "public/javascripts/tinymce/themes/advanced/shortcuts.htm",
    "public/javascripts/tinymce/themes/advanced/skins/cirkuit/content.css",
    "public/javascripts/tinymce/themes/advanced/skins/cirkuit/dialog.css",
    "public/javascripts/tinymce/themes/advanced/skins/cirkuit/img/butt2.png",
    "public/javascripts/tinymce/themes/advanced/skins/cirkuit/img/button-bg.png",
    "public/javascripts/tinymce/themes/advanced/skins/cirkuit/img/buttons.png",
    "public/javascripts/tinymce/themes/advanced/skins/cirkuit/img/down_arrow.gif",
    "public/javascripts/tinymce/themes/advanced/skins/cirkuit/img/fade-butt.png",
    "public/javascripts/tinymce/themes/advanced/skins/cirkuit/img/icons.png",
    "public/javascripts/tinymce/themes/advanced/skins/cirkuit/img/items.gif",
    "public/javascripts/tinymce/themes/advanced/skins/cirkuit/img/menu-arrow.png",
    "public/javascripts/tinymce/themes/advanced/skins/cirkuit/img/menu-check.png",
    "public/javascripts/tinymce/themes/advanced/skins/cirkuit/img/progress.gif",
    "public/javascripts/tinymce/themes/advanced/skins/cirkuit/img/tabs.gif",
    "public/javascripts/tinymce/themes/advanced/skins/cirkuit/img/toolbarbg.png",
    "public/javascripts/tinymce/themes/advanced/skins/cirkuit/ui.css",
    "public/javascripts/tinymce/themes/advanced/skins/default/content.css",
    "public/javascripts/tinymce/themes/advanced/skins/default/dialog.css",
    "public/javascripts/tinymce/themes/advanced/skins/default/img/buttons.png",
    "public/javascripts/tinymce/themes/advanced/skins/default/img/items.gif",
    "public/javascripts/tinymce/themes/advanced/skins/default/img/menu_arrow.gif",
    "public/javascripts/tinymce/themes/advanced/skins/default/img/menu_check.gif",
    "public/javascripts/tinymce/themes/advanced/skins/default/img/progress.gif",
    "public/javascripts/tinymce/themes/advanced/skins/default/img/tabs.gif",
    "public/javascripts/tinymce/themes/advanced/skins/default/ui.css",
    "public/javascripts/tinymce/themes/advanced/skins/highcontrast/content.css",
    "public/javascripts/tinymce/themes/advanced/skins/highcontrast/dialog.css",
    "public/javascripts/tinymce/themes/advanced/skins/highcontrast/ui.css",
    "public/javascripts/tinymce/themes/advanced/skins/o2k7/content.css",
    "public/javascripts/tinymce/themes/advanced/skins/o2k7/dialog.css",
    "public/javascripts/tinymce/themes/advanced/skins/o2k7/img/button_bg.png",
    "public/javascripts/tinymce/themes/advanced/skins/o2k7/img/button_bg_black.png",
    "public/javascripts/tinymce/themes/advanced/skins/o2k7/img/button_bg_silver.png",
    "public/javascripts/tinymce/themes/advanced/skins/o2k7/ui.css",
    "public/javascripts/tinymce/themes/advanced/skins/o2k7/ui_black.css",
    "public/javascripts/tinymce/themes/advanced/skins/o2k7/ui_silver.css",
    "public/javascripts/tinymce/themes/advanced/source_editor.htm",
    "public/javascripts/tinymce/themes/simple/editor_template.js",
    "public/javascripts/tinymce/themes/simple/editor_template_src.js",
    "public/javascripts/tinymce/themes/simple/img/icons.gif",
    "public/javascripts/tinymce/themes/simple/langs/en.js",
    "public/javascripts/tinymce/themes/simple/skins/default/content.css",
    "public/javascripts/tinymce/themes/simple/skins/default/ui.css",
    "public/javascripts/tinymce/themes/simple/skins/o2k7/content.css",
    "public/javascripts/tinymce/themes/simple/skins/o2k7/img/button_bg.png",
    "public/javascripts/tinymce/themes/simple/skins/o2k7/ui.css",
    "public/javascripts/tinymce/tiny_mce.js",
    "public/javascripts/tinymce/tiny_mce_popup.js",
    "public/javascripts/tinymce/tiny_mce_src.js",
    "public/javascripts/tinymce/utils/editable_selects.js",
    "public/javascripts/tinymce/utils/form_utils.js",
    "public/javascripts/tinymce/utils/mctabs.js",
    "public/javascripts/tinymce/utils/validate.js",
    "public/stylesheets/lolita/default.css",
    "public/stylesheets/lolita/style.css",
    "spec/adapter_helper.rb",
    "spec/configuration/base_spec.rb",
    "spec/configuration/column_spec.rb",
    "spec/configuration/columns_spec.rb",
    "spec/configuration/field_set_spec.rb",
    "spec/configuration/field_spec.rb",
    "spec/configuration/list_spec.rb",
    "spec/configuration/page_spec.rb",
    "spec/configuration/tab_spec.rb",
    "spec/configuration/tabs_spec.rb",
    "spec/controllers/internal_helpers_spec.rb",
    "spec/controllers/lolita_rest_spec.rb",
    "spec/dbi/base_spec.rb",
    "spec/lolita_spec.rb",
    "spec/mapping_spec.rb",
    "spec/orm/mongoid.rb",
    "spec/rails_app/app/controllers/application_controller.rb",
    "spec/rails_app/app/helpers/application_helper.rb",
    "spec/rails_app/app/mongoid/address.rb",
    "spec/rails_app/app/mongoid/comment.rb",
    "spec/rails_app/app/mongoid/post.rb",
    "spec/rails_app/app/mongoid/preference.rb",
    "spec/rails_app/app/mongoid/profile.rb",
    "spec/rails_app/app/views/components/lolita/list/_body_cell.html.erb",
    "spec/rails_app/config/application.rb",
    "spec/rails_app/config/boot.rb",
    "spec/rails_app/config/environment.rb",
    "spec/rails_app/config/environments/development.rb",
    "spec/rails_app/config/environments/production.rb",
    "spec/rails_app/config/environments/test.rb",
    "spec/rails_app/config/initializers/backtrace_silencers.rb",
    "spec/rails_app/config/initializers/inflections.rb",
    "spec/rails_app/config/initializers/load_my_cells.rb",
    "spec/rails_app/config/initializers/secret_token.rb",
    "spec/rails_app/config/routes.rb",
    "spec/rails_app/db/schema.rb",
    "spec/routing/routes_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/factories/post.rb",
    "test/cells/form_cell_test.rb",
    "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/ithouse/lolita}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.1}
  s.summary = %q{Great Rails CMS.}
  s.test_files = [
    "spec/adapter_helper.rb",
    "spec/configuration/base_spec.rb",
    "spec/configuration/column_spec.rb",
    "spec/configuration/columns_spec.rb",
    "spec/configuration/field_set_spec.rb",
    "spec/configuration/field_spec.rb",
    "spec/configuration/list_spec.rb",
    "spec/configuration/page_spec.rb",
    "spec/configuration/tab_spec.rb",
    "spec/configuration/tabs_spec.rb",
    "spec/controllers/internal_helpers_spec.rb",
    "spec/controllers/lolita_rest_spec.rb",
    "spec/dbi/base_spec.rb",
    "spec/lolita_spec.rb",
    "spec/mapping_spec.rb",
    "spec/orm/mongoid.rb",
    "spec/rails_app/app/controllers/application_controller.rb",
    "spec/rails_app/app/helpers/application_helper.rb",
    "spec/rails_app/app/mongoid/address.rb",
    "spec/rails_app/app/mongoid/comment.rb",
    "spec/rails_app/app/mongoid/post.rb",
    "spec/rails_app/app/mongoid/preference.rb",
    "spec/rails_app/app/mongoid/profile.rb",
    "spec/rails_app/config/application.rb",
    "spec/rails_app/config/boot.rb",
    "spec/rails_app/config/environment.rb",
    "spec/rails_app/config/environments/development.rb",
    "spec/rails_app/config/environments/production.rb",
    "spec/rails_app/config/environments/test.rb",
    "spec/rails_app/config/initializers/backtrace_silencers.rb",
    "spec/rails_app/config/initializers/inflections.rb",
    "spec/rails_app/config/initializers/load_my_cells.rb",
    "spec/rails_app/config/initializers/secret_token.rb",
    "spec/rails_app/config/routes.rb",
    "spec/rails_app/db/schema.rb",
    "spec/routing/routes_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/factories/post.rb",
    "test/cells/form_cell_test.rb",
    "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 3.0"])
      s.add_runtime_dependency(%q<will_paginate>, ["~> 3.0.pre2"])
      s.add_runtime_dependency(%q<abstract>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rspec>, [">= 2.2.0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
      s.add_development_dependency(%q<factory_girl>, [">= 0"])
      s.add_development_dependency(%q<ffaker>, [">= 0"])
      s.add_development_dependency(%q<ruby-debug19>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["~> 3.0"])
      s.add_dependency(%q<will_paginate>, ["~> 3.0.pre2"])
      s.add_dependency(%q<abstract>, [">= 0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rspec>, [">= 2.2.0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
      s.add_dependency(%q<factory_girl>, [">= 0"])
      s.add_dependency(%q<ffaker>, [">= 0"])
      s.add_dependency(%q<ruby-debug19>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 3.0"])
    s.add_dependency(%q<will_paginate>, ["~> 3.0.pre2"])
    s.add_dependency(%q<abstract>, [">= 0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rspec>, [">= 2.2.0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
    s.add_dependency(%q<factory_girl>, [">= 0"])
    s.add_dependency(%q<ffaker>, [">= 0"])
    s.add_dependency(%q<ruby-debug19>, [">= 0"])
  end
end

