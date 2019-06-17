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

defmodule GoogleApi.CloudBuild.V1.Model.GitHubEventsConfig do
  @moduledoc """
  GitHubEventsConfig describes the configuration of a trigger that creates a
  build whenever a GitHub event is received.

  This message is experimental.

  ## Attributes

  - checkSuite (GoogleApi.CloudBuild.V1.Model.CheckSuiteFilter.t): Output only. Indicates that a build was generated from a check suite
  event. Defaults to `nil`.
  - installationId (String.t): The installationID that emmits the GitHub event. Defaults to `nil`.
  - name (String.t): Name of the repository. Defaults to `nil`.
  - owner (String.t): Owner of the repository. Defaults to `nil`.
  - pullRequest (GoogleApi.CloudBuild.V1.Model.PullRequestFilter.t): filter to match changes in pull requests. Defaults to `nil`.
  - push (GoogleApi.CloudBuild.V1.Model.PushFilter.t): filter to match changes in refs like branches, tags. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :checkSuite => GoogleApi.CloudBuild.V1.Model.CheckSuiteFilter.t(),
          :installationId => String.t(),
          :name => String.t(),
          :owner => String.t(),
          :pullRequest => GoogleApi.CloudBuild.V1.Model.PullRequestFilter.t(),
          :push => GoogleApi.CloudBuild.V1.Model.PushFilter.t()
        }

  field(:checkSuite, as: GoogleApi.CloudBuild.V1.Model.CheckSuiteFilter)
  field(:installationId)
  field(:name)
  field(:owner)
  field(:pullRequest, as: GoogleApi.CloudBuild.V1.Model.PullRequestFilter)
  field(:push, as: GoogleApi.CloudBuild.V1.Model.PushFilter)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.GitHubEventsConfig do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.GitHubEventsConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.GitHubEventsConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
