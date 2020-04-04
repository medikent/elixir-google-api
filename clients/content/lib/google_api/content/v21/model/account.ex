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

defmodule GoogleApi.Content.V21.Model.Account do
  @moduledoc """
  Account data. After the creation of a new account it may take a few minutes before it is fully operational. The methods delete, insert, and update require the admin role.

  ## Attributes

  *   `adsLinks` (*type:* `list(GoogleApi.Content.V21.Model.AccountAdsLink.t)`, *default:* `nil`) - List of linked Ads accounts that are active or pending approval. To create a new link request, add a new link with status active to the list. It will remain in a pending state until approved or rejected either in the Ads interface or through the AdWords API. To delete an active link, or to cancel a link request, remove it from the list.
  *   `adultContent` (*type:* `boolean()`, *default:* `nil`) - Indicates whether the merchant sells adult content.
  *   `businessInformation` (*type:* `GoogleApi.Content.V21.Model.AccountBusinessInformation.t`, *default:* `nil`) - The business information of the account.
  *   `googleMyBusinessLink` (*type:* `GoogleApi.Content.V21.Model.AccountGoogleMyBusinessLink.t`, *default:* `nil`) - The GMB account which is linked or in the process of being linked with the Merchant Center account.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Required for update. Merchant Center account ID.
  *   `kind` (*type:* `String.t`, *default:* `content#account`) - Identifies what kind of resource this is. Value: the fixed string "content#account".
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Display name for the account.
  *   `sellerId` (*type:* `String.t`, *default:* `nil`) - Client-specific, locally-unique, internal ID for the child account.
  *   `users` (*type:* `list(GoogleApi.Content.V21.Model.AccountUser.t)`, *default:* `nil`) - Users with access to the account. Every account (except for subaccounts) must have at least one admin user.
  *   `websiteUrl` (*type:* `String.t`, *default:* `nil`) - The merchant's website.
  *   `youtubeChannelLinks` (*type:* `list(GoogleApi.Content.V21.Model.AccountYouTubeChannelLink.t)`, *default:* `nil`) - List of linked YouTube channels that are active or pending approval. To create a new link request, add a new link with status active to the list. It will remain in a pending state until approved or rejected in the YT Creator Studio interface. To delete an active link, or to cancel a link request, remove it from the list.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adsLinks => list(GoogleApi.Content.V21.Model.AccountAdsLink.t()),
          :adultContent => boolean(),
          :businessInformation => GoogleApi.Content.V21.Model.AccountBusinessInformation.t(),
          :googleMyBusinessLink => GoogleApi.Content.V21.Model.AccountGoogleMyBusinessLink.t(),
          :id => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :sellerId => String.t(),
          :users => list(GoogleApi.Content.V21.Model.AccountUser.t()),
          :websiteUrl => String.t(),
          :youtubeChannelLinks => list(GoogleApi.Content.V21.Model.AccountYouTubeChannelLink.t())
        }

  field(:adsLinks, as: GoogleApi.Content.V21.Model.AccountAdsLink, type: :list)
  field(:adultContent)
  field(:businessInformation, as: GoogleApi.Content.V21.Model.AccountBusinessInformation)
  field(:googleMyBusinessLink, as: GoogleApi.Content.V21.Model.AccountGoogleMyBusinessLink)
  field(:id)
  field(:kind)
  field(:name)
  field(:sellerId)
  field(:users, as: GoogleApi.Content.V21.Model.AccountUser, type: :list)
  field(:websiteUrl)

  field(:youtubeChannelLinks,
    as: GoogleApi.Content.V21.Model.AccountYouTubeChannelLink,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.Account do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.Account.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.Account do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
