# Copyright 2012, Dell
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
class CreateProposalConfigs < ActiveRecord::Migration
  def change
    create_table :proposal_configs do |t|
      t.string         :failed_reason
      t.integer        :status, :default => 0
      t.text           :config
      t.integer        :revision
      t.belongs_to     :proposal
      t.timestamps
    end
  end
end
