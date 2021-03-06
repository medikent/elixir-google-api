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

defmodule GoogleApi.Monitoring.V3.Model.TimeInterval do
  @moduledoc """
  A closed time interval. It extends from the start time to the end time, and includes both: [startTime, endTime]. Valid time intervals depend on the MetricKind of the metric value. In no case can the end time be earlier than the start time.
  For a GAUGE metric, the startTime value is technically optional; if  no value is specified, the start time defaults to the value of the  end time, and the interval represents a single point in time. If both  start and end times are specified, they must be identical. Such an  interval is valid only for GAUGE metrics, which are point-in-time  measurements.
  For DELTA and CUMULATIVE metrics, the start time must be earlier  than the end time.
  In all cases, the start time of the next interval must be  at least a microsecond after the end time of the previous interval.  Because the interval is closed, if the start time of a new interval  is the same as the end time of the previous interval, data written  at the new start time could overwrite data written at the previous  end time.

  ## Attributes

  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Required. The end of the time interval.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. The beginning of the time interval. The default value for the start time is the end time. The start time must not be later than the end time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTime => DateTime.t(),
          :startTime => DateTime.t()
        }

  field(:endTime, as: DateTime)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.TimeInterval do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.TimeInterval.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.TimeInterval do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
