##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'CallSummaries' do
  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.insights.v1.call_summaries.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://insights.twilio.com/v1/Voice/Summaries',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "page": 0,
              "page_size": 25,
              "first_page_url": "https://insights.twilio.com/v1/Voice/Summaries?PageSize=25&Page=0",
              "previous_page_url": null,
              "next_page_url": null,
              "key": "call_summaries",
              "url": "https://insights.twilio.com/v1/Voice/Summaries?PageSize=25&Page=0"
          },
          "call_summaries": []
      }
      ]
    ))

    actual = @client.insights.v1.call_summaries.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_with_carrier responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "page": 0,
              "page_size": 25,
              "first_page_url": "https://insights.twilio.com/v1/Voice/Summaries?ToCarrier=AT%26T+Wireless&StartTime=4h&PageSize=25&Page=0",
              "previous_page_url": null,
              "next_page_url": null,
              "key": "call_summaries",
              "url": "https://insights.twilio.com/v1/Voice/Summaries?ToCarrier=AT%26T+Wireless&StartTime=4h&PageSize=25&Page=0"
          },
          "call_summaries": [
              {
                  "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "created_time": "2021-08-25T03:40:25Z",
                  "start_time": "2021-08-25T03:40:25Z",
                  "end_time": "2021-08-25T03:40:45Z",
                  "duration": 20,
                  "connect_duration": 20,
                  "call_type": "carrier",
                  "call_state": "completed",
                  "from": {
                      "caller": "+15555555555",
                      "carrier": "T-Mobile USA, Inc.",
                      "connection": "mobile",
                      "number_prefix": "1555",
                      "location": {
                          "lat": 40.83885,
                          "lon": -74.04568
                      },
                      "country_code": "US"
                  },
                  "to": {
                      "callee": "+15555555556",
                      "carrier": "AT&T Wireless",
                      "connection": "mobile",
                      "number_prefix": "1555",
                      "location": {
                          "lat": 33.42767,
                          "lon": -86.886475
                      },
                      "country_code": "US"
                  },
                  "processing_state": "complete",
                  "sdk_edge": null,
                  "sip_edge": null,
                  "client_edge": null,
                  "carrier_edge": {
                      "properties": {
                          "media_region": "us1",
                          "signaling_region": "us1",
                          "edge_location": "xxxxx",
                          "direction": "inbound"
                      },
                      "metrics": {
                          "inbound": {
                              "codec": 0,
                              "codec_name": "pcmu",
                              "packets_received": 202,
                              "packets_lost": 0,
                              "packets_loss_percentage": 0.0,
                              "jitter": {
                                  "max": 1.48209,
                                  "avg": 0.483035
                              }
                          },
                          "outbound": {
                              "codec": 0,
                              "codec_name": "pcmu",
                              "packets_sent": 218,
                              "packets_lost": 0,
                              "packets_loss_percentage": 0.0,
                              "jitter": {
                                  "max": 0.51868,
                                  "avg": 0.364434
                              }
                          }
                      }
                  },
                  "tags": [
                      "high_packet_loss",
                      "high_jitter"
                  ],
                  "attributes": {
                      "conference_participant": false
                  },
                  "properties": {
                      "last_sip_response_num": 200,
                      "pdd_ms": 121,
                      "disconnected_by": "callee",
                      "direction": "inbound"
                  },
                  "trust": {
                      "verified_caller": {
                          "verified": true
                      }
                  },
                  "url": "https://insights.twilio.com/v1/Voice/Summaries"
              },
              {
                  "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "created_time": "2021-08-25T02:20:25Z",
                  "start_time": "2021-08-25T02:20:25Z",
                  "end_time": "2021-08-25T02:40:45Z",
                  "duration": 18,
                  "connect_duration": 18,
                  "call_type": "carrier",
                  "call_state": "completed",
                  "from": {
                      "caller": "+15555555555",
                      "carrier": "T-Mobile USA, Inc.",
                      "connection": "mobile",
                      "number_prefix": "1555",
                      "location": {
                          "lat": 40.83885,
                          "lon": -74.04568
                      },
                      "country_code": "US"
                  },
                  "to": {
                      "callee": "+15555555556",
                      "carrier": "AT&T Wireless",
                      "connection": "mobile",
                      "number_prefix": "1555",
                      "location": {
                          "lat": 33.42767,
                          "lon": -86.886475
                      },
                      "country_code": "US"
                  },
                  "processing_state": "complete",
                  "sdk_edge": null,
                  "sip_edge": null,
                  "client_edge": null,
                  "carrier_edge": {
                      "properties": {
                          "media_region": "us1",
                          "signaling_region": "us1",
                          "edge_location": "xxxxx",
                          "direction": "inbound"
                      },
                      "metrics": {
                          "inbound": {
                              "codec": 0,
                              "codec_name": "pcmu",
                              "packets_received": 100,
                              "packets_lost": 0,
                              "packets_loss_percentage": 0.0,
                              "jitter": {
                                  "max": 1.48209,
                                  "avg": 0.483035
                              }
                          },
                          "outbound": {
                              "codec": 0,
                              "codec_name": "pcmu",
                              "packets_sent": 102,
                              "packets_lost": 0,
                              "packets_loss_percentage": 0.0,
                              "jitter": {
                                  "max": 0.51868,
                                  "avg": 0.364434
                              }
                          }
                      }
                  },
                  "tags": null,
                  "attributes": {
                      "conference_participant": false
                  },
                  "properties": {
                      "last_sip_response_num": 200,
                      "pdd_ms": 121,
                      "disconnected_by": "callee",
                      "direction": "inbound"
                  },
                  "trust": {
                      "verified_caller": {
                          "verified": true
                      }
                  },
                  "url": "https://insights.twilio.com/v1/Voice/Summaries"
              }
          ]
      }
      ]
    ))

    actual = @client.insights.v1.call_summaries.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_with_subaccount responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "page": 0,
              "page_size": 25,
              "first_page_url": "https://insights.twilio.com/v1/Voice/Summaries?CallType=client&StartTime=7d&HasTag=True&Subaccount=ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab&PageSize=25&Page=0",
              "previous_page_url": null,
              "next_page_url": null,
              "key": "call_summaries",
              "url": "https://insights.twilio.com/v1/Voice/Summaries?CallType=client&StartTime=7d&HasTag=True&Subaccount=ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab&PageSize=25&Page=0"
          },
          "call_summaries": [
              {
                  "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab",
                  "created_time": "2021-08-25T04:16:35Z",
                  "start_time": "2021-08-25T04:16:36Z",
                  "end_time": "2021-08-25T04:16:42Z",
                  "duration": 7,
                  "connect_duration": 6,
                  "call_type": "client",
                  "call_state": "completed",
                  "from": {
                      "caller": "client:+15555555555",
                      "connection": "twilio_sdk"
                  },
                  "to": {
                      "callee": "client:TBBXXXXXXXXXXXX",
                      "connection": "twilio_sdk"
                  },
                  "processing_state": "complete",
                  "sdk_edge": null,
                  "sip_edge": null,
                  "client_edge": {
                      "properties": {
                          "media_region": "us1",
                          "signaling_region": "us1",
                          "twilio_media_ip": "54.xxx.xx.xxx",
                          "external_media_ip": "54.xxx.xx.xxx",
                          "edge_location": "xxxxxx",
                          "direction": "inbound"
                      },
                      "metrics": {
                          "inbound": {
                              "codec": 0,
                              "codec_name": "pcmu",
                              "packets_received": 252,
                              "packets_lost": 0,
                              "packets_loss_percentage": 0.0,
                              "jitter": {
                                  "max": 5.60994,
                                  "avg": 0.933334
                              }
                          },
                          "outbound": {
                              "codec": 0,
                              "codec_name": "pcmu",
                              "packets_sent": 229,
                              "packets_lost": 0,
                              "packets_loss_percentage": 0.0,
                              "jitter": {
                                  "max": 0.960786,
                                  "avg": 0.399859
                              }
                          }
                      }
                  },
                  "carrier_edge": null,
                  "tags": [
                      "high_pdd"
                  ],
                  "attributes": {
                      "conference_participant": false
                  },
                  "properties": {
                      "last_sip_response_num": 200,
                      "pdd_ms": 58,
                      "disconnected_by": "callee",
                      "direction": "inbound"
                  },
                  "trust": null,
                  "url": "https://insights.twilio.com/v1/Voice/Summaries"
              },
              {
                  "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab",
                  "created_time": "2021-08-25T04:16:35Z",
                  "start_time": "2021-08-25T04:16:37Z",
                  "end_time": "2021-08-25T04:16:40Z",
                  "duration": 5,
                  "connect_duration": 3,
                  "call_type": "client",
                  "call_state": "completed",
                  "from": {
                      "caller": "+15555555555",
                      "carrier": "Verizon",
                      "connection": "landline",
                      "number_prefix": "1555",
                      "location": {
                          "lat": 40.83885,
                          "lon": -74.04568
                      },
                      "country_code": "US"
                  },
                  "to": {
                      "callee": "client:TBBTXXXXXX",
                      "connection": "twilio_sdk"
                  },
                  "processing_state": "complete",
                  "sdk_edge": null,
                  "sip_edge": null,
                  "client_edge": {
                      "properties": {
                          "media_region": "us1",
                          "signaling_region": "us1",
                          "twilio_media_ip": "54.xxx.xx.xxx",
                          "external_media_ip": "54.xxx.xx.xxx",
                          "edge_location": "xxxxx",
                          "direction": "outbound"
                      },
                      "metrics": {
                          "inbound": {
                              "codec": 0,
                              "codec_name": "pcmu",
                              "packets_received": 110,
                              "packets_lost": 0,
                              "packets_loss_percentage": 0.0,
                              "jitter": {
                                  "max": 1.05918,
                                  "avg": 0.461966
                              }
                          },
                          "outbound": {
                              "codec": 0,
                              "codec_name": "pcmu",
                              "packets_sent": 147,
                              "packets_lost": 0,
                              "packets_loss_percentage": 0.0,
                              "jitter": {
                                  "max": 0.869174,
                                  "avg": 0.319674
                              }
                          }
                      }
                  },
                  "carrier_edge": null,
                  "tags": null,
                  "attributes": {
                      "conference_participant": false
                  },
                  "properties": {
                      "last_sip_response_num": 200,
                      "pdd_ms": 35,
                      "disconnected_by": "callee",
                      "direction": "outbound_api"
                  },
                  "trust": null,
                  "url": "https://insights.twilio.com/v1/Voice/Summaries"
              }
          ]
      }
      ]
    ))

    actual = @client.insights.v1.call_summaries.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_with_trust responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "page": 0,
              "page_size": 25,
              "first_page_url": "https://insights.twilio.com/v1/Voice/Summaries?Direction=outbound_api&StartTime=1d&VerifiedCaller=True&PageSize=25&Page=0",
              "previous_page_url": null,
              "next_page_url": null,
              "key": "call_summaries",
              "url": "https://insights.twilio.com/v1/Voice/Summaries?Direction=outbound_api&StartTime=1d&VerifiedCaller=True&PageSize=25&Page=0"
          },
          "call_summaries": [
              {
                  "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "created_time": "2021-08-25T14:03:31Z",
                  "start_time": "2021-08-25T14:03:32Z",
                  "end_time": "2021-08-25T14:03:38Z",
                  "duration": 7,
                  "connect_duration": 6,
                  "call_type": "carrier",
                  "call_state": "completed",
                  "from": {
                      "caller": "+15555555555",
                      "carrier": "T-Mobile USA, Inc.",
                      "connection": "mobile",
                      "number_prefix": "1555",
                      "location": {
                          "lat": 40.83885,
                          "lon": -74.04568
                      },
                      "country_code": "US"
                  },
                  "to": {
                      "callee": "+15555555556",
                      "carrier": "T-Mobile USA, Inc.",
                      "connection": "mobile",
                      "number_prefix": "1555",
                      "location": {
                          "lat": 34.186115,
                          "lon": -118.43555
                      },
                      "country_code": "US"
                  },
                  "processing_state": "complete",
                  "sdk_edge": null,
                  "sip_edge": null,
                  "client_edge": null,
                  "carrier_edge": {
                      "properties": {
                          "media_region": "us1",
                          "signaling_region": "us1",
                          "edge_location": "xxxx",
                          "direction": "outbound"
                      },
                      "metrics": {
                          "inbound": {
                              "codec": 0,
                              "codec_name": "pcmu",
                              "packets_received": 229,
                              "packets_lost": 0,
                              "packets_loss_percentage": 0.0,
                              "jitter": {
                                  "max": 1.10303,
                                  "avg": 0.449886
                              }
                          },
                          "outbound": {
                              "codec": 0,
                              "codec_name": "pcmu",
                              "packets_sent": 273,
                              "packets_lost": 0,
                              "packets_loss_percentage": 0.0,
                              "jitter": {
                                  "max": 0.410031,
                                  "avg": 0.295951
                              }
                          }
                      }
                  },
                  "tags": null,
                  "attributes": {
                      "conference_participant": false
                  },
                  "properties": {
                      "last_sip_response_num": 200,
                      "pdd_ms": 315,
                      "disconnected_by": "callee",
                      "direction": "outbound_api"
                  },
                  "trust": {
                      "verified_caller": {
                          "verified": true
                      }
                  },
                  "url": "https://insights.twilio.com/v1/Voice/Summaries"
              }
          ]
      }
      ]
    ))

    actual = @client.insights.v1.call_summaries.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_with_abnormal_session responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "page": 0,
              "page_size": 25,
              "first_page_url": "https://insights.twilio.com/v1/Voice/Summaries?CallType=sip&CallState=completed&StartTime=15d&AbnormalSession=True&PageSize=25&Page=0",
              "previous_page_url": null,
              "next_page_url": null,
              "key": "call_summaries",
              "url": "https://insights.twilio.com/v1/Voice/Summaries?CallType=sip&CallState=completed&StartTime=15d&AbnormalSession=True&PageSize=25&Page=0"
          },
          "call_summaries": [
              {
                  "call_sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "created_time": "2021-08-25T14:46:40Z",
                  "start_time": "2021-08-25T14:46:40Z",
                  "end_time": "2021-08-25T14:46:52Z",
                  "duration": 12,
                  "connect_duration": 12,
                  "call_type": "sip",
                  "call_state": "completed",
                  "from": {
                      "caller": "+15555555555",
                      "carrier": "XO Communications, Inc.",
                      "connection": "landline",
                      "number_prefix": "1555",
                      "location": {
                          "lat": 40.83885,
                          "lon": -74.04568
                      },
                      "country_code": "US"
                  },
                  "to": {
                      "callee": "sip:xxxx@xx.xxx.xx.xxx",
                      "connection": "sip_interface"
                  },
                  "processing_state": "complete",
                  "sdk_edge": null,
                  "sip_edge": {
                      "properties": {
                          "media_region": "us1",
                          "signaling_region": "us1",
                          "twilio_media_ip": "xx.xxx.xx.xxx",
                          "twilio_signaling_ip": "xx.xx.xx.xx",
                          "external_media_ip": "xx.xxx.xx.xxx",
                          "external_signaling_ip": "xx.xxx.xx.xxx",
                          "sip_call_id": "xxxxxxxx@0.0.0.0",
                          "edge_location": "xxxxx",
                          "direction": "outbound"
                      },
                      "metrics": {
                          "inbound": {
                              "codec": 0,
                              "codec_name": "pcmu",
                              "packets_received": 525,
                              "packets_lost": 0,
                              "packets_loss_percentage": 0.0,
                              "jitter": {
                                  "max": 0.554729,
                                  "avg": 0.229541
                              }
                          },
                          "outbound": {
                              "codec": 0,
                              "codec_name": "pcmu",
                              "packets_sent": 245,
                              "packets_lost": 0,
                              "packets_loss_percentage": 0.0,
                              "jitter": {
                                  "max": 1.03548,
                                  "avg": 0.344092
                              }
                          }
                      }
                  },
                  "client_edge": null,
                  "carrier_edge": null,
                  "tags": null,
                  "attributes": {
                      "conference_participant": false
                  },
                  "properties": {
                      "last_sip_response_num": 200,
                      "pdd_ms": 255,
                      "disconnected_by": "callee",
                      "direction": "outbound_dial"
                  },
                  "trust": null,
                  "url": "https://insights.twilio.com/v1/Voice/Summaries"
              }
          ]
      }
      ]
    ))

    actual = @client.insights.v1.call_summaries.list()

    expect(actual).to_not eq(nil)
  end
end