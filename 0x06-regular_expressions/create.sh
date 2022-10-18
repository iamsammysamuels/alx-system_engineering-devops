#!/usr/bin/env bash

echo -e "#!/usr/bin/env ruby\nputs ARGV[0].scan(/$2/).join" > $1
