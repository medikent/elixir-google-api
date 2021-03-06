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

defmodule GoogleApi.Docs.V1.Model.TableCellStyle do
  @moduledoc """
  The style of a TableCell.

  Inherited table cell styles are represented as unset fields in this message.
  A table cell style can inherit from the table's style.

  ## Attributes

  *   `backgroundColor` (*type:* `GoogleApi.Docs.V1.Model.OptionalColor.t`, *default:* `nil`) - The background color of the cell.
  *   `borderBottom` (*type:* `GoogleApi.Docs.V1.Model.TableCellBorder.t`, *default:* `nil`) - The bottom border of the cell.
  *   `borderLeft` (*type:* `GoogleApi.Docs.V1.Model.TableCellBorder.t`, *default:* `nil`) - The left border of the cell.
  *   `borderRight` (*type:* `GoogleApi.Docs.V1.Model.TableCellBorder.t`, *default:* `nil`) - The right border of the cell.
  *   `borderTop` (*type:* `GoogleApi.Docs.V1.Model.TableCellBorder.t`, *default:* `nil`) - The top border of the cell.
  *   `columnSpan` (*type:* `integer()`, *default:* `nil`) - The column span of the cell.

      This property is read-only.
  *   `contentAlignment` (*type:* `String.t`, *default:* `nil`) - The alignment of the content in the table cell. The default alignment
      matches the alignment for newly created table cells in the Docs editor.
  *   `paddingBottom` (*type:* `GoogleApi.Docs.V1.Model.Dimension.t`, *default:* `nil`) - The bottom padding of the cell.
  *   `paddingLeft` (*type:* `GoogleApi.Docs.V1.Model.Dimension.t`, *default:* `nil`) - The left padding of the cell.
  *   `paddingRight` (*type:* `GoogleApi.Docs.V1.Model.Dimension.t`, *default:* `nil`) - The right padding of the cell.
  *   `paddingTop` (*type:* `GoogleApi.Docs.V1.Model.Dimension.t`, *default:* `nil`) - The top padding of the cell.
  *   `rowSpan` (*type:* `integer()`, *default:* `nil`) - The row span of the cell.

      This property is read-only.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backgroundColor => GoogleApi.Docs.V1.Model.OptionalColor.t(),
          :borderBottom => GoogleApi.Docs.V1.Model.TableCellBorder.t(),
          :borderLeft => GoogleApi.Docs.V1.Model.TableCellBorder.t(),
          :borderRight => GoogleApi.Docs.V1.Model.TableCellBorder.t(),
          :borderTop => GoogleApi.Docs.V1.Model.TableCellBorder.t(),
          :columnSpan => integer(),
          :contentAlignment => String.t(),
          :paddingBottom => GoogleApi.Docs.V1.Model.Dimension.t(),
          :paddingLeft => GoogleApi.Docs.V1.Model.Dimension.t(),
          :paddingRight => GoogleApi.Docs.V1.Model.Dimension.t(),
          :paddingTop => GoogleApi.Docs.V1.Model.Dimension.t(),
          :rowSpan => integer()
        }

  field(:backgroundColor, as: GoogleApi.Docs.V1.Model.OptionalColor)
  field(:borderBottom, as: GoogleApi.Docs.V1.Model.TableCellBorder)
  field(:borderLeft, as: GoogleApi.Docs.V1.Model.TableCellBorder)
  field(:borderRight, as: GoogleApi.Docs.V1.Model.TableCellBorder)
  field(:borderTop, as: GoogleApi.Docs.V1.Model.TableCellBorder)
  field(:columnSpan)
  field(:contentAlignment)
  field(:paddingBottom, as: GoogleApi.Docs.V1.Model.Dimension)
  field(:paddingLeft, as: GoogleApi.Docs.V1.Model.Dimension)
  field(:paddingRight, as: GoogleApi.Docs.V1.Model.Dimension)
  field(:paddingTop, as: GoogleApi.Docs.V1.Model.Dimension)
  field(:rowSpan)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.TableCellStyle do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.TableCellStyle.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.TableCellStyle do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
