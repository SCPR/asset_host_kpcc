# A hack to fix backwards compatibility with legacy
# model namespaces when using polymorphic relationships.
# This will be removed when we run a migration to update
# those relationships.
AssetHostCore.const_set "Video", Video
AssetHostCore.const_set "YoutubeVideo", YoutubeVideo
AssetHostCore.const_set "VimeoVideo", VimeoVideo
AssetHostCore.const_set "BrightcoveVideo", BrightcoveVideo

