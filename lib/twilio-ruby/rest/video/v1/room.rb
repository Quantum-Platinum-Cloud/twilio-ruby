##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

module Twilio
  module REST
    class Video < Domain
      class V1 < Version
        class RoomList < ListResource
          ##
          # Initialize the RoomList
          # @param [Version] version Version that contains the resource
          # @return [RoomList] RoomList
          def initialize(version)
            super(version)

            # Path Solution
            @solution = {}
            @uri = "/Rooms"
          end

          ##
          # Retrieve a single page of RoomInstance records from the API.
          # Request is executed immediately.
          # @param [Boolean] enable_turn The enable_turn
          # @param [room.RoomType] type The type
          # @param [String] unique_name The unique_name
          # @param [String] status_callback The status_callback
          # @param [String] status_callback_method The status_callback_method
          # @param [String] max_participants The max_participants
          # @param [Boolean] record_participants_on_connect The
          #   record_participants_on_connect
          # @return [RoomInstance] Newly created RoomInstance
          def create(enable_turn: nil, type: nil, unique_name: nil, status_callback: nil, status_callback_method: nil, max_participants: nil, record_participants_on_connect: nil)
            data = {
                'EnableTurn' => enable_turn,
                'Type' => type,
                'UniqueName' => unique_name,
                'StatusCallback' => status_callback,
                'StatusCallbackMethod' => status_callback_method,
                'MaxParticipants' => max_participants,
                'RecordParticipantsOnConnect' => record_participants_on_connect,
            }

            payload = @version.create(
                'POST',
                @uri,
                data: data
            )

            return RoomInstance.new(
                @version,
                payload,
            )
          end

          ##
          # Lists RoomInstance records from the API as a list.
          # Unlike stream(), this operation is eager and will load `limit` records into
          # memory before returning.
          # @param [room.RoomStatus] status The status
          # @param [String] unique_name The unique_name
          # @param [Time] date_created_after The date_created_after
          # @param [Time] date_created_before The date_created_before
          # @param [Integer] limit Upper limit for the number of records to return. stream()
          #                   guarantees to never return more than limit.  Default is no limit
          # @param [Integer] page_size Number of records to fetch per request, when not set will                      use
          #  the default value of 50 records.  If no page_size is                      defined
          #  but a limit is defined, stream() will attempt to read                      the
          #  limit with the most efficient page size,                      i.e. min(limit, 1000)
          # @return [Array] Array of up to limit results
          def list(status: nil, unique_name: nil, date_created_after: nil, date_created_before: nil, limit: nil, page_size: nil)
            self.stream(
                status: status,
                unique_name: unique_name,
                date_created_after: date_created_after,
                date_created_before: date_created_before,
                limit: limit,
                page_size: page_size
            ).entries
          end

          ##
          # Streams RoomInstance records from the API as an Enumerable.
          # This operation lazily loads records as efficiently as possible until the limit
          # is reached.
          # @param [room.RoomStatus] status The status
          # @param [String] unique_name The unique_name
          # @param [Time] date_created_after The date_created_after
          # @param [Time] date_created_before The date_created_before
          # @param [Integer] limit Upper limit for the number of records to return.                  stream()
          #  guarantees to never return more than limit.                  Default is no limit
          # @param [Integer] page_size Number of records to fetch per request, when                      not set will use
          #  the default value of 50 records.                      If no page_size is defined
          #                       but a limit is defined, stream() will attempt to                      read the
          #  limit with the most efficient page size,                       i.e. min(limit, 1000)
          # @return [Enumerable] Enumerable that will yield up to limit results
          def stream(status: nil, unique_name: nil, date_created_after: nil, date_created_before: nil, limit: nil, page_size: nil)
            limits = @version.read_limits(limit, page_size)

            page = self.page(
                status: status,
                unique_name: unique_name,
                date_created_after: date_created_after,
                date_created_before: date_created_before,
                page_size: limits[:page_size],
            )

            @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
          end

          ##
          # When passed a block, yields RoomInstance records from the API.
          # This operation lazily loads records as efficiently as possible until the limit
          # is reached.
          # @param [room.RoomStatus] status The status
          # @param [String] unique_name The unique_name
          # @param [Time] date_created_after The date_created_after
          # @param [Time] date_created_before The date_created_before
          # @param [Integer] limit Upper limit for the number of records to return.                  stream()
          #  guarantees to never return more than limit.                  Default is no limit
          # @param [Integer] page_size Number of records to fetch per request, when                       not set will use
          #  the default value of 50 records.                      If no page_size is defined
          #                       but a limit is defined, stream() will attempt to read the
          #                       limit with the most efficient page size, i.e. min(limit, 1000)
          def each
            limits = @version.read_limits

            page = self.page(
                page_size: limits[:page_size],
            )

            @version.stream(page,
                            limit: limits[:limit],
                            page_limit: limits[:page_limit]).each {|x| yield x}
          end

          ##
          # Retrieve a single page of RoomInstance records from the API.
          # Request is executed immediately.
          # @param [room.RoomStatus] status The status
          # @param [String] unique_name The unique_name
          # @param [Time] date_created_after The date_created_after
          # @param [Time] date_created_before The date_created_before
          # @param [String] page_token PageToken provided by the API
          # @param [Integer] page_number Page Number, this value is simply for client state
          # @param [Integer] page_size Number of records to return, defaults to 50
          # @return [Page] Page of RoomInstance
          def page(status: nil, unique_name: nil, date_created_after: nil, date_created_before: nil, page_token: nil, page_number: nil, page_size: nil)
            params = {
                'Status' => status,
                'UniqueName' => unique_name,
                'DateCreatedAfter' => Twilio.serialize_iso8601(date_created_after),
                'DateCreatedBefore' => Twilio.serialize_iso8601(date_created_before),
                'PageToken' => page_token,
                'Page' => page_number,
                'PageSize' => page_size,
            }
            response = @version.page(
                'GET',
                @uri,
                params
            )
            return RoomPage.new(@version, response, @solution)
          end

          ##
          # Provide a user friendly representation
          def to_s
            '#<Twilio.Video.V1.RoomList>'
          end
        end

        class RoomPage < Page
          ##
          # Initialize the RoomPage
          # @param [Version] version Version that contains the resource
          # @param [Response] response Response from the API
          # @param [Hash] solution Path solution for the resource
          # @return [RoomPage] RoomPage
          def initialize(version, response, solution)
            super(version, response)

            # Path Solution
            @solution = solution
          end

          ##
          # Build an instance of RoomInstance
          # @param [Hash] payload Payload response from the API
          # @return [RoomInstance] RoomInstance
          def get_instance(payload)
            return RoomInstance.new(
                @version,
                payload,
            )
          end

          ##
          # Provide a user friendly representation
          def to_s
            '<Twilio.Video.V1.RoomPage>'
          end
        end

        class RoomContext < InstanceContext
          ##
          # Initialize the RoomContext
          # @param [Version] version Version that contains the resource
          # @param [String] sid The sid
          # @return [RoomContext] RoomContext
          def initialize(version, sid)
            super(version)

            # Path Solution
            @solution = {
                sid: sid,
            }
            @uri = "/Rooms/#{@solution[:sid]}"

            # Dependents
            @recordings = nil
          end

          ##
          # Fetch a RoomInstance
          # @return [RoomInstance] Fetched RoomInstance
          def fetch
            params = {}

            payload = @version.fetch(
                'GET',
                @uri,
                params,
            )

            return RoomInstance.new(
                @version,
                payload,
                sid: @solution[:sid],
            )
          end

          ##
          # Update the RoomInstance
          # @param [room.RoomStatus] status The status
          # @return [RoomInstance] Updated RoomInstance
          def update(status: nil)
            data = {
                'Status' => status,
            }

            payload = @version.update(
                'POST',
                @uri,
                data: data,
            )

            return RoomInstance.new(
                @version,
                payload,
                sid: @solution[:sid],
            )
          end

          ##
          # Access the recordings
          # @return [RoomRecordingList] RoomRecordingList
          def recordings(sid=:unset)
            if sid != :unset
              return RoomRecordingContext.new(
                  @version,
                  @solution[:sid],
                  sid,
              )
            end

            unless @recordings
              @recordings = RoomRecordingList.new(
                  @version,
                  room_sid: @solution[:sid],
              )
            end

            @recordings
          end

          ##
          # Provide a user friendly representation
          def to_s
            context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
            "#<Twilio.Video.V1.RoomContext #{context}>"
          end
        end

        class RoomInstance < InstanceResource
          ##
          # Initialize the RoomInstance
          # @param [Version] version Version that contains the resource
          # @param [Hash] payload payload that contains response from Twilio
          # @param [String] sid The sid
          # @return [RoomInstance] RoomInstance
          def initialize(version, payload, sid: nil)
            super(version)

            # Marshaled Properties
            @properties = {
                'sid' => payload['sid'],
                'status' => payload['status'],
                'date_created' => Twilio.deserialize_iso8601(payload['date_created']),
                'date_updated' => Twilio.deserialize_iso8601(payload['date_updated']),
                'account_sid' => payload['account_sid'],
                'enable_turn' => payload['enable_turn'],
                'unique_name' => payload['unique_name'],
                'status_callback' => payload['status_callback'],
                'status_callback_method' => payload['status_callback_method'],
                'end_time' => Twilio.deserialize_iso8601(payload['end_time']),
                'duration' => payload['duration'] == nil ? payload['duration'] : payload['duration'].to_i,
                'type' => payload['type'],
                'max_participants' => payload['max_participants'].to_i,
                'record_participants_on_connect' => payload['record_participants_on_connect'],
                'url' => payload['url'],
                'links' => payload['links'],
            }

            # Context
            @instance_context = nil
            @params = {
                'sid' => sid || @properties['sid'],
            }
          end

          ##
          # Generate an instance context for the instance, the context is capable of
          # performing various actions.  All instance actions are proxied to the context
          # @param [Version] version Version that contains the resource
          # @return [RoomContext] RoomContext for this RoomInstance
          def context
            unless @instance_context
              @instance_context = RoomContext.new(
                  @version,
                  @params['sid'],
              )
            end
            @instance_context
          end

          def sid
            @properties['sid']
          end

          def status
            @properties['status']
          end

          def date_created
            @properties['date_created']
          end

          def date_updated
            @properties['date_updated']
          end

          def account_sid
            @properties['account_sid']
          end

          def enable_turn
            @properties['enable_turn']
          end

          def unique_name
            @properties['unique_name']
          end

          def status_callback
            @properties['status_callback']
          end

          def status_callback_method
            @properties['status_callback_method']
          end

          def end_time
            @properties['end_time']
          end

          def duration
            @properties['duration']
          end

          def type
            @properties['type']
          end

          def max_participants
            @properties['max_participants']
          end

          def record_participants_on_connect
            @properties['record_participants_on_connect']
          end

          def url
            @properties['url']
          end

          def links
            @properties['links']
          end

          ##
          # Fetch a RoomInstance
          # @return [RoomInstance] Fetched RoomInstance
          def fetch
            context.fetch
          end

          ##
          # Update the RoomInstance
          # @param [room.RoomStatus] status The status
          # @return [RoomInstance] Updated RoomInstance
          def update(status: nil)
            context.update(
                status: status,
            )
          end

          ##
          # Access the recordings
          # @return [recordings] recordings
          def recordings
            context.recordings
          end

          ##
          # Provide a user friendly representation
          def to_s
            values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
            "<Twilio.Video.V1.RoomInstance #{values}>"
          end
        end
      end
    end
  end
end