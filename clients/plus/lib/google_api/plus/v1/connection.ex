# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Plus.V1.Connection do
  @moduledoc """
  Handle Tesla connections for GoogleApi.Plus.V1.
  """

  use GoogleApi.Gax.Connection,
    scopes: [
      # Know the list of people in your circles, your age range, and language
      "https://www.googleapis.com/auth/plus.login",
      # Know who you are on Google
      "https://www.googleapis.com/auth/plus.me",
      # View your email address
      "https://www.googleapis.com/auth/userinfo.email",
      # View your basic profile info
      "https://www.googleapis.com/auth/userinfo.profile"
    ],
    otp_app: :google_api_plus,
    base_url: "https://www.googleapis.com/plus/v1"
end
