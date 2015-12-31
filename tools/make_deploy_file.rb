require 'json'

root = {
    :package => {
        :name               => "ci-ijk-ffmpeg-ios",
        :repo               => "generic",
        :subject            => "bbcallen",
        :desc               => "Prebuilt FFmpeg for ijkplayer on iOS",
        :website_url        => "https://github.com/bbcallen/ci-ijk-ffmpeg-ios",
        :issue_tracker_url  => "https://github.com/bbcallen/ci-ijk-ffmpeg-ios/issues",
        :vcs_url            => "https://github.com/bbcallen/ci-ijk-ffmpeg-ios.git",
        :licenses           => ["LGPL-2.1"],
    },

    :version => {
        :name => ARGV[0],
    },

    :files => [
        {
            :includePattern => "output/(.*)",
            :uploadPattern  => "$1",
        },
    ],

    :publish => true,
}

puts JSON.pretty_generate(root)
