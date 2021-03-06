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

defmodule GoogleApi.Reseller.V1.Api.Resellernotify do
  @moduledoc """
  API calls for all endpoints tagged `Resellernotify`.
  """

  alias GoogleApi.Reseller.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Returns all the details of the watch corresponding to the reseller.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Reseller.V1.Connection.t`) - Connection to server
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

  *   `{:ok, %GoogleApi.Reseller.V1.Model.ResellernotifyGetwatchdetailsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec reseller_resellernotify_getwatchdetails(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Reseller.V1.Model.ResellernotifyGetwatchdetailsResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def reseller_resellernotify_getwatchdetails(connection, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/resellernotify/getwatchdetails", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Reseller.V1.Model.ResellernotifyGetwatchdetailsResponse{}]
    )
  end

  @doc """
  Registers a Reseller for receiving notifications.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Reseller.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:serviceAccountEmailAddress` (*type:* `String.t`) - The service account which will own the created Cloud-PubSub topic.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Reseller.V1.Model.ResellernotifyResource{}}` on success
  *   `{:error, info}` on failure
  """
  @spec reseller_resellernotify_register(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Reseller.V1.Model.ResellernotifyResource.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def reseller_resellernotify_register(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :serviceAccountEmailAddress => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/resellernotify/register", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Reseller.V1.Model.ResellernotifyResource{}])
  end

  @doc """
  Unregisters a Reseller for receiving notifications.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Reseller.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:serviceAccountEmailAddress` (*type:* `String.t`) - The service account which owns the Cloud-PubSub topic.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Reseller.V1.Model.ResellernotifyResource{}}` on success
  *   `{:error, info}` on failure
  """
  @spec reseller_resellernotify_unregister(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Reseller.V1.Model.ResellernotifyResource.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def reseller_resellernotify_unregister(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :serviceAccountEmailAddress => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/resellernotify/unregister", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Reseller.V1.Model.ResellernotifyResource{}])
  end
end
