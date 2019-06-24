# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Vault.V1.Model.Status do
  @moduledoc """
  The `Status` type defines a logical error model that is suitable for
  different programming environments, including REST APIs and RPC APIs. It is
  used by [gRPC](https://github.com/grpc). The error model is designed to be:

  - Simple to use and understand for most users
  - Flexible enough to meet unexpected needs

  # Overview

  The `Status` message contains three pieces of data: error code, error
  message, and error details. The error code should be an enum value of
  google.rpc.Code, but it may accept additional error codes if needed.  The
  error message should be a developer-facing English message that helps
  developers *understand* and *resolve* the error. If a localized user-facing
  error message is needed, put the localized message in the error details or
  localize it in the client. The optional error details may contain arbitrary
  information about the error. There is a predefined set of error detail types
  in the package `google.rpc` that can be used for common error conditions.

  # Language mapping

  The `Status` message is the logical representation of the error model, but it
  is not necessarily the actual wire format. When the `Status` message is
  exposed in different client libraries and different wire protocols, it can be
  mapped differently. For example, it will likely be mapped to some exceptions
  in Java, but more likely mapped to some error codes in C.

  # Other uses

  The error model and the `Status` message can be used in a variety of
  environments, either with or without APIs, to provide a
  consistent developer experience across different environments.

  Example uses of this error model include:

  - Partial errors. If a service needs to return partial errors to the client,
      it may embed the `Status` in the normal response to indicate the partial
      errors.

  - Workflow errors. A typical workflow has multiple steps. Each step may
      have a `Status` message for error reporting.

  - Batch operations. If a client uses batch request and batch response, the
      `Status` message should be used directly inside batch response, one for
      each error sub-response.

  - Asynchronous operations. If an API call embeds asynchronous operation
      results in its response, the status of those operations should be
      represented directly using the `Status` message.

  - Logging. If some API errors are stored in logs, the message `Status` could
      be used directly after any stripping needed for security/privacy reasons.

  ## Attributes

  *   `code` (*type:* `integer()`, *default:* `nil`) - The status code, which should be an enum value of google.rpc.Code.
  *   `details` (*type:* `list(map())`, *default:* `nil`) - A list of messages that carry the error details.  There is a common set of
      message types for APIs to use.
  *   `message` (*type:* `String.t`, *default:* `nil`) - A developer-facing error message, which should be in English. Any
      user-facing error message should be localized and sent in the
      google.rpc.Status.details field, or localized by the client.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :code => integer(),
          :details => list(map()),
          :message => String.t()
        }

  field(:code)
  field(:details, type: :list)
  field(:message)
end

defimpl Poison.Decoder, for: GoogleApi.Vault.V1.Model.Status do
  def decode(value, options) do
    GoogleApi.Vault.V1.Model.Status.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vault.V1.Model.Status do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
