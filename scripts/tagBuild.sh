#!/bin/bash

#
# Copyright 2020 IBM Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

set -e

TAG_NAME="$1"

echo "Setting github tag $TAG_NAME"
git tag -f $TAG_NAME
git push --quiet https://$GITHUB_TOKEN@github.com/${GIT_ORG}/pipeline-schemas $TAG_NAME -f
echo "$TAG_NAME tag set successfully"
