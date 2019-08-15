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

defmodule GoogleApi.SQLAdmin.V1beta4.Api.Operations do
  @moduledoc """
  API calls for all endpoints tagged `Operations`.
  """

  alias GoogleApi.SQLAdmin.V1beta4.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Retrieves an instance operation that has been performed on an instance.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.SQLAdmin.V1beta4.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Project ID of the project that contains the instance.
  *   `operation` (*type:* `String.t`) - Instance operation ID.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec sql_operations_get(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def sql_operations_get(connection, project, operation, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/projects/{project}/operations/{operation}", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "operation" => URI.encode(operation, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}])
  end

  @doc """
  Lists all instance operations that have been performed on the given Cloud SQL instance in the reverse chronological order of the start time.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.SQLAdmin.V1beta4.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Project ID of the project that contains the instance.
  *   `instance` (*type:* `String.t`) - Cloud SQL instance ID. This does not include the project ID.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:maxResults` (*type:* `integer()`) - Maximum number of operations per response.
      *   `:pageToken` (*type:* `String.t`) - A previously-returned page token representing part of the larger set of results to view.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.SQLAdmin.V1beta4.Model.OperationsListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec sql_operations_list(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.SQLAdmin.V1beta4.Model.OperationsListResponse.t()}
          | {:error, Tesla.Env.t()}
  def sql_operations_list(connection, project, instance, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/projects/{project}/operations", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :instance, instance)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.SQLAdmin.V1beta4.Model.OperationsListResponse{}]
    )
  end
end
