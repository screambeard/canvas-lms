#
# Copyright (C) 2018 - present Instructure, Inc.
#
# This file is part of Canvas.
#
# Canvas is free software: you can redistribute it and/or modify it under
# the terms of the GNU Affero General Public License as published by the Free
# Software Foundation, version 3 of the License.
#
# Canvas is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
# A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
# details.
#
# You should have received a copy of the GNU Affero General Public License along
# with this program. If not, see <http://www.gnu.org/licenses/>.

require 'json'
require_relative '../../../pact_config'
require_relative '../api_client_base'

module Helper
  module ApiClient
    class Planner < ApiClientBase
      base_uri PactConfig.mock_provider_service_base_uri
      headers 'Authorization' => 'Bearer some_token'

      def list_items
        JSON.parse(self.class.get("/api/v1/planner/items").body)
      rescue
        nil
      end
    end
  end
end
