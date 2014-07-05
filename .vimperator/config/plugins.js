(function () {
  let rtp = options['runtimepath'];
  let root = File.joinPaths(rtp, 'src/github.com/vimpr/vimperator-plugins');
  let loader = File.joinPaths(root.path, 'plugin_loader.js');
  let libly = File.joinPaths(root.path, '_libly.js');
  if (!loader.exists() || !loader.isFile() || !loader.isReadable()) {
    return;
  }

  //
  // plugin_loader.js
  //
  liberator.globalVariables.plugin_loader_roots = [root.path];
  liberator.globalVariables.plugin_loader_plugins = [
    'appendAnchor',
    'autoproxychanger',
    'commandBookmarklet',
    'cookieManager',
    'feedSomeKeys_3',
    'multi_requester',
    'opener',
    'sbmcommentsviewer',
    'yetmappings',
  ];

  //
  // appendAnchor.js
  //
  liberator.globalVariables.auto_append_anchor = 'true';

  //
  // commandBookmarklet.js
  //
  liberator.globalVariables.command_bookmarklet_prefix = '';

  //
  // multi_requester.js
  //
  liberator.globalVariables.multi_requester_default_sites = 'alc';

  //
  // sbmcommentsviewer.js
  //
  liberator.globalVariables.def_sbms = 'h';

  io.source(libly.path, false);
  io.source(loader.path, false);
})();
