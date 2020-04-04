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

defmodule GoogleApi.Content.V2.Model.DatafeedstatusesCustomBatchRequestEntry do
  @moduledoc """
  A batch entry encoding a single non-batch datafeedstatuses request.

  ## Attributes

  *   `batchId` (*type:* `integer()`, *default:* `nil`) - An entry ID, unique within the batch request.
  *   `country` (*type:* `String.t`, *default:* `nil`) - The country for which to get the datafeed status. If this parameter is provided then language must also be provided. Note that for multi-target datafeeds this parameter is required.
  *   `datafeedId` (*type:* `String.t`, *default:* `nil`) - The ID of the data feed to get.
  *   `language` (*type:* `String.t`, *default:* `nil`) - The language for which to get the datafeed status. If this parameter is provided then country must also be provided. Note that for multi-target datafeeds this parameter is required.
  *   `merchantId` (*type:* `String.t`, *default:* `nil`) - The ID of the managing account.
  *   `method` (*type:* `String.t`, *default:* `nil`) - The method of the batch entry.

      Acceptable values are:  
      - "get"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :batchId => integer(),
          :country => String.t(),
          :datafeedId => String.t(),
          :language => String.t(),
          :merchantId => String.t(),
          :method => String.t()
        }

  field(:batchId)
  field(:country)
  field(:datafeedId)
  field(:language)
  field(:merchantId)
  field(:method)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.DatafeedstatusesCustomBatchRequestEntry do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.DatafeedstatusesCustomBatchRequestEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.DatafeedstatusesCustomBatchRequestEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
