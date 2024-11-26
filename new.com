<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>     </title>
  </head>

  <body>
    <!-- CSS  -->
    <!-- file source is from: https://gist.github.com/Fazzani/8f89546e188f8086a46073dc5d4e2928 -->
    <!-- this html page is from: https://stackoverflow.com/questions/19782389/playing-m3u8-files-with-html-video-tag -->
    <!-- sample page: https://jlypnc.csb.app/ -->
    <link href="https://vjs.zencdn.net/7.2.3/video-js.css" rel="stylesheet" />

    <h1>sample m3u8</h1>
    <!-- HTML -->
    <video
      id="hls-example"
      class="video-js vjs-default-skin"
      width="400"
      height="300"
      controls
    >
      <source
        type="application/x-mpegURL"
        src="https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8
"
      />
    </video>

    <!-- JS code -->
    <!-- If you'd like to support IE8 (for Video.js versions prior to v7) -->
    <script src="https://vjs.zencdn.net/ie8/ie8-version/videojs-ie8.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/videojs-contrib-hls/5.14.1/videojs-contrib-hls.js"></script>
    <script src="https://vjs.zencdn.net/7.2.3/video.js"></script>

    <script>
      var player = videojs("hls-example");
      player.play();
    </script>
  </body>
</html>
