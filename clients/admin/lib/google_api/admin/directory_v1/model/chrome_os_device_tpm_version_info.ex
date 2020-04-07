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

defmodule GoogleApi.Admin.Directory_v1.Model.ChromeOsDeviceTpmVersionInfo do
  @moduledoc """
  Trusted Platform Module (TPM) (Read-only)

  ## Attributes

  *   `family` (*type:* `String.t`, *default:* `nil`) - TPM family.
  *   `firmwareVersion` (*type:* `String.t`, *default:* `nil`) - TPM firmware version.
  *   `manufacturer` (*type:* `String.t`, *default:* `nil`) - TPM manufacturer code.
  *   `specLevel` (*type:* `String.t`, *default:* `nil`) - TPM specification level.
  *   `tpmModel` (*type:* `String.t`, *default:* `nil`) - TPM model number.
  *   `vendorSpecific` (*type:* `String.t`, *default:* `nil`) - Vendor-specific information such as Vendor ID.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :family => String.t(),
          :firmwareVersion => String.t(),
          :manufacturer => String.t(),
          :specLevel => String.t(),
          :tpmModel => String.t(),
          :vendorSpecific => String.t()
        }

  field(:family)
  field(:firmwareVersion)
  field(:manufacturer)
  field(:specLevel)
  field(:tpmModel)
  field(:vendorSpecific)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.ChromeOsDeviceTpmVersionInfo do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.ChromeOsDeviceTpmVersionInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.ChromeOsDeviceTpmVersionInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end