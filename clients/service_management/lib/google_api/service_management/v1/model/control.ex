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

defmodule GoogleApi.ServiceManagement.V1.Model.Control do
  @moduledoc """
  Selects and configures the service controller used by the service.  The
  service controller handles features like abuse, quota, billing, logging,
  monitoring, etc.

  ## Attributes

  *   `environment` (*type:* `String.t`, *default:* `nil`) - The service control environment to use. If empty, no control plane
      feature (like quota and billing) will be enabled.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :environment => String.t()
        }

  field(:environment)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.Control do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.Control.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.Control do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
