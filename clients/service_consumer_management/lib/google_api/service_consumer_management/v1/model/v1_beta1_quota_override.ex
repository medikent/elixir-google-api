# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.V1Beta1QuotaOverride do
  @moduledoc """
  A quota override

  ## Attributes

  - dimensions (%{optional(String.t) &#x3D;&gt; String.t}): If this map is nonempty, then this override applies only to specific values for dimensions defined in the limit unit.  For example, an override on a limit with the unit 1/{project}/{region} could contain an entry with the key \&quot;region\&quot; and the value \&quot;us-east-1\&quot;; the override is only applied to quota consumed in that region.  This map has the following restrictions: - Keys that are not defined in the limit&#39;s unit are not valid keys.   Any string appearing in {brackets} in the unit (besides {project} or   {user}) is a defined key. - \&quot;project\&quot; is not a valid key; the project is already specified in   the parent resource name. - \&quot;user\&quot; is not a valid key; the API does not support quota overrides   that apply only to a specific user. - If \&quot;region\&quot; appears as a key, its value must be a valid Cloud region. - If \&quot;zone\&quot; appears as a key, its value must be a valid Cloud zone. - If any valid key other than \&quot;region\&quot; or \&quot;zone\&quot; appears in the map, then   all valid keys other than \&quot;region\&quot; or \&quot;zone\&quot; must also appear in the map. Defaults to: `null`.
  - metric (String.t): The name of the metric to which this override applies.  An example name would be: &#x60;compute.googleapis.com/cpus&#x60; Defaults to: `null`.
  - name (String.t): The resource name of the producer override. An example name would be: &#x60;services/compute.googleapis.com/projects/123/consumerQuotaMetrics/compute.googleapis.com%2Fcpus/limits/%2Fproject%2Fregion/producerOverrides/4a3f2c1d&#x60; Defaults to: `null`.
  - overrideValue (String.t): The overriding quota limit value. Can be any nonnegative integer, or -1 (unlimited quota). Defaults to: `null`.
  - unit (String.t): The limit unit of the limit to which this override applies.  An example unit would be: &#x60;1/{project}/{region}&#x60; Note that &#x60;{project}&#x60; and &#x60;{region}&#x60; are not placeholders in this example; the literal characters &#x60;{&#x60; and &#x60;}&#x60; occur in the string. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensions => map(),
          :metric => any(),
          :name => any(),
          :overrideValue => any(),
          :unit => any()
        }

  field(:dimensions, type: :map)
  field(:metric)
  field(:name)
  field(:overrideValue)
  field(:unit)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.V1Beta1QuotaOverride do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.V1Beta1QuotaOverride.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.V1Beta1QuotaOverride do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end