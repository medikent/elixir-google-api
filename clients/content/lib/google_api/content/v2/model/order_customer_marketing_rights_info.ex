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

defmodule GoogleApi.Content.V2.Model.OrderCustomerMarketingRightsInfo do
  @moduledoc """


  ## Attributes

  *   `explicitMarketingPreference` (*type:* `String.t`, *default:* `nil`) - Last known customer selection regarding marketing preferences. In certain cases this selection might not be known, so this field would be empty. If a customer selected granted in their most recent order, they can be subscribed to marketing emails. Customers who have chosen denied must not be subscribed, or must be unsubscribed if already opted-in.

      Acceptable values are:  
      - "denied" 
      - "granted"
  *   `lastUpdatedTimestamp` (*type:* `String.t`, *default:* `nil`) - Timestamp when last time marketing preference was updated. Could be empty, if user wasn't offered a selection yet.
  *   `marketingEmailAddress` (*type:* `String.t`, *default:* `nil`) - Email address that can be used for marketing purposes. The field may be empty even if explicitMarketingPreference is 'granted'. This happens when retrieving an old order from the customer who deleted their account.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :explicitMarketingPreference => String.t(),
          :lastUpdatedTimestamp => String.t(),
          :marketingEmailAddress => String.t()
        }

  field(:explicitMarketingPreference)
  field(:lastUpdatedTimestamp)
  field(:marketingEmailAddress)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.OrderCustomerMarketingRightsInfo do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.OrderCustomerMarketingRightsInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.OrderCustomerMarketingRightsInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
