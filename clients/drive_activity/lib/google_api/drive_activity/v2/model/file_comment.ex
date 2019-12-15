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

defmodule GoogleApi.DriveActivity.V2.Model.FileComment do
  @moduledoc """
  A comment on a file.

  ## Attributes

  *   `legacyCommentId` (*type:* `String.t`, *default:* `nil`) - The comment in the discussion thread. This identifier is an opaque string
      compatible with the Drive API; see
      https://developers.google.com/drive/v3/reference/comments/get
  *   `legacyDiscussionId` (*type:* `String.t`, *default:* `nil`) - The discussion thread to which the comment was added. This identifier is an
      opaque string compatible with the Drive API and references the first
      comment in a discussion; see
      https://developers.google.com/drive/v3/reference/comments/get
  *   `linkToDiscussion` (*type:* `String.t`, *default:* `nil`) - The link to the discussion thread containing this comment, for example,
      "https://docs.google.com/DOCUMENT_ID/edit?disco=THREAD_ID".
  *   `parent` (*type:* `GoogleApi.DriveActivity.V2.Model.DriveItem.t`, *default:* `nil`) - The Drive item containing this comment.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :legacyCommentId => String.t(),
          :legacyDiscussionId => String.t(),
          :linkToDiscussion => String.t(),
          :parent => GoogleApi.DriveActivity.V2.Model.DriveItem.t()
        }

  field(:legacyCommentId)
  field(:legacyDiscussionId)
  field(:linkToDiscussion)
  field(:parent, as: GoogleApi.DriveActivity.V2.Model.DriveItem)
end

defimpl Poison.Decoder, for: GoogleApi.DriveActivity.V2.Model.FileComment do
  def decode(value, options) do
    GoogleApi.DriveActivity.V2.Model.FileComment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DriveActivity.V2.Model.FileComment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end