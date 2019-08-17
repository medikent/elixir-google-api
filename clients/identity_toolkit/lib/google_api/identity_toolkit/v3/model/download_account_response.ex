# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.IdentityToolkit.V3.Model.DownloadAccountResponse do
  @moduledoc """
  Response of downloading accounts in batch.

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `identitytoolkit#DownloadAccountResponse`) - The fixed string "identitytoolkit#DownloadAccountResponse".
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The next page token. To be used in a subsequent request to return the next page of results.
  *   `users` (*type:* `list(GoogleApi.IdentityToolkit.V3.Model.UserInfo.t)`, *default:* `nil`) - The user accounts data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :nextPageToken => String.t(),
          :users => list(GoogleApi.IdentityToolkit.V3.Model.UserInfo.t())
        }

  field(:kind)
  field(:nextPageToken)
  field(:users, as: GoogleApi.IdentityToolkit.V3.Model.UserInfo, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.IdentityToolkit.V3.Model.DownloadAccountResponse do
  def decode(value, options) do
    GoogleApi.IdentityToolkit.V3.Model.DownloadAccountResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IdentityToolkit.V3.Model.DownloadAccountResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
