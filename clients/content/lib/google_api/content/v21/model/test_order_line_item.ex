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

defmodule GoogleApi.Content.V21.Model.TestOrderLineItem do
  @moduledoc """


  ## Attributes

  *   `product` (*type:* `GoogleApi.Content.V21.Model.TestOrderLineItemProduct.t`, *default:* `nil`) - Product data from the time of the order placement.
  *   `quantityOrdered` (*type:* `integer()`, *default:* `nil`) - Number of items ordered.
  *   `returnInfo` (*type:* `GoogleApi.Content.V21.Model.OrderLineItemReturnInfo.t`, *default:* `nil`) - Details of the return policy for the line item.
  *   `shippingDetails` (*type:* `GoogleApi.Content.V21.Model.OrderLineItemShippingDetails.t`, *default:* `nil`) - Details of the requested shipping for the line item.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :product => GoogleApi.Content.V21.Model.TestOrderLineItemProduct.t(),
          :quantityOrdered => integer(),
          :returnInfo => GoogleApi.Content.V21.Model.OrderLineItemReturnInfo.t(),
          :shippingDetails => GoogleApi.Content.V21.Model.OrderLineItemShippingDetails.t()
        }

  field(:product, as: GoogleApi.Content.V21.Model.TestOrderLineItemProduct)
  field(:quantityOrdered)
  field(:returnInfo, as: GoogleApi.Content.V21.Model.OrderLineItemReturnInfo)
  field(:shippingDetails, as: GoogleApi.Content.V21.Model.OrderLineItemShippingDetails)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.TestOrderLineItem do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.TestOrderLineItem.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.TestOrderLineItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end