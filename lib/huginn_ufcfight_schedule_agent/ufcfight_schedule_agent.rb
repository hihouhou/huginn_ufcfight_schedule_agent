module Agents
  class UfcfightScheduleAgent < Agent
    include FormConfigurable

    can_dry_run!
    no_bulk_receive!
    default_schedule 'every_1h'

    description do
      <<-MD
      The Ufcfight Schedule Agent checks available events and creates event.

      `debug` is used to verbose mode.

      `token` is needed for auth.

      `client_id` is needed for auth.

      `refresh_token` is needed for auth (first launch).

      `api_key` is needed for auth.

      `changes_only` is only used to emit event about an event's change.

      `expected_receive_period_in_days` is used to determine if the Agent is working. Set it to the maximum number of days
      that you anticipate passing without this Agent receiving an incoming Event.
      MD
    end

    event_description <<-MD
      Events look like this:

          {
            "type": "LIVE",
            "name": "2022-01-23",
            "exid": "2022-01-23",
            "paging": {
              "moreDataAvailable": false,
              "lastSeen": "210349"
            },
            "contentList": [
              {
                "type": "LIVE",
                "accessLevel": "GRANTED",
                "licenceIds": [
          
                ],
                "title": "UFC 270: Fight Pass Prelims",
                "id": 210340,
                "thumbnailUrl": "https://img.dge-prod.dicelaboratory.com/original/2021/12/08123810-de2ivkdr3epngew8.jpg",
                "startDate": 1642892400000,
                "endDate": 1642899600000,
                "live": false,
                "subEvents": [
          
                ],
                "localBroadcasters": [
          
                ],
                "audioOnly": false,
                "audioTracks": [
          
                ]
              },
              {
                "type": "LIVE",
                "accessLevel": "GRANTED",
                "licenceIds": [
          
                ],
                "title": "UFC 270: Prelims",
                "id": 210341,
                "thumbnailUrl": "https://img.dge-prod.dicelaboratory.com/original/2021/12/08124109-klmq1dizvscxg8p5.jpg",
                "startDate": 1642899600000,
                "endDate": 1642906800000,
                "live": false,
                "subEvents": [
                  {
                    "id": 3293,
                    "title": "Welterweight Bout",
                    "description": "",
                    "startDate": 1640044800000,
                    "endDate": 1640131199000,
                    "location": "",
                    "externalId": "1067",
                    "details": {
                      "type": "PARTICIPANTS",
                      "participants": [
                        {
                          "name": "Michael Morales",
                          "description": "",
                          "thumbnailUrl": "https://img.dge-prod.dicelaboratory.com/original/2021/12/21175556-htrsrgd61ivo5isv.png",
                          "fighterId": "fm3700",
                          "externalId": "fm3700"
                        },
                        {
                          "name": "Trevin Giles",
                          "description": "",
                          "thumbnailUrl": "https://img.dge-prod.dicelaboratory.com/original/2021/12/21175602-zkhgf56dfxmtadun.png",
                          "fighterId": "fm2932",
                          "externalId": "fm2932"
                        }
                      ]
                    }
                  },
                  {
                    "id": 3289,
                    "title": "Bantamweight Bout",
                    "description": "",
                    "startDate": 1640044800000,
                    "endDate": 1640131199000,
                    "location": "",
                    "externalId": "1067",
                    "details": {
                      "type": "PARTICIPANTS",
                      "participants": [
                        {
                          "name": "Cody Stamman",
                          "description": "",
                          "thumbnailUrl": "https://img.dge-prod.dicelaboratory.com/original/2021/12/21175825-joyr9vugyprqg680.png",
                          "fighterId": "fm2930",
                          "externalId": "fm2930"
                        },
                        {
                          "name": "Said Nurmagomedov",
                          "description": "",
                          "thumbnailUrl": "https://img.dge-prod.dicelaboratory.com/original/2021/12/21175834-3w6cwioqsryycqum.png",
                          "fighterId": "fm3066",
                          "externalId": "fm3066"
                        }
                      ]
                    }
                  },
                  {
                    "id": 3287,
                    "title": "Bantamweight Bout",
                    "description": "",
                    "startDate": 1640044800000,
                    "endDate": 1640131199000,
                    "location": "",
                    "externalId": "1067",
                    "details": {
                      "type": "PARTICIPANTS",
                      "participants": [
                        {
                          "name": "Tony Gravely",
                          "description": "",
                          "thumbnailUrl": "https://img.dge-prod.dicelaboratory.com/original/2021/12/21180350-yrwcm2tyvajogode.png",
                          "fighterId": "fm3393",
                          "externalId": "fm3393"
                        },
                        {
                          "name": "Saimon Oliveira",
                          "description": "",
                          "thumbnailUrl": "https://img.dge-prod.dicelaboratory.com/original/2021/12/21180357-drz0i4bugoepshgb.png",
                          "fighterId": "fm3693",
                          "externalId": "fm3693"
                        }
                      ]
                    }
                  },
                  {
                    "id": 3291,
                    "title": "Women's Flyweight Bout",
                    "description": "",
                    "startDate": 1640044800000,
                    "endDate": 1640131199000,
                    "location": "",
                    "externalId": "1067",
                    "details": {
                      "type": "PARTICIPANTS",
                      "participants": [
                        {
                          "name": "Poliana Botelho",
                          "description": "",
                          "thumbnailUrl": "https://img.dge-prod.dicelaboratory.com/original/2021/12/21180500-irfhk9thruhddqia.png",
                          "fighterId": "fm2830",
                          "externalId": "fm2830"
                        },
                        {
                          "name": "Ji Yeon Kim",
                          "description": "",
                          "thumbnailUrl": "https://img.dge-prod.dicelaboratory.com/original/2021/12/21180503-6suvesqpc0ukpi8m.png",
                          "fighterId": "fm2889",
                          "externalId": "fm2889"
                        }
                      ]
                    }
                  },
                  {
                    "id": 3290,
                    "title": "Welterweight Bout",
                    "description": "",
                    "startDate": 1640044800000,
                    "endDate": 1640131199000,
                    "location": "",
                    "externalId": "1067",
                    "details": {
                      "type": "PARTICIPANTS",
                      "participants": [
                        {
                          "name": "Warlley Alves",
                          "description": "",
                          "thumbnailUrl": "https://img.dge-prod.dicelaboratory.com/original/2021/12/21180608-trt7fgm6omazndab.png",
                          "fighterId": "fm2247",
                          "externalId": "fm2247"
                        },
                        {
                          "name": "Jack Della Maddalena",
                          "description": "",
                          "thumbnailUrl": "https://img.dge-prod.dicelaboratory.com/original/2021/12/21180613-l44lxf1imhrrfy4d.png",
                          "fighterId": "fm3753",
                          "externalId": "fm3753"
                        }
                      ]
                    }
                  },
                  {
                    "id": 3288,
                    "title": "Women's Flyweight Bout",
                    "description": "",
                    "startDate": 1640044800000,
                    "endDate": 1640131199000,
                    "location": "",
                    "externalId": "1067",
                    "details": {
                      "type": "PARTICIPANTS",
                      "participants": [
                        {
                          "name": "Viviane Araujo",
                          "description": "",
                          "thumbnailUrl": "https://img.dge-prod.dicelaboratory.com/original/2021/12/21180657-po19dbiourtngssj.png",
                          "fighterId": "fm",
                          "externalId": "fm"
                        },
                        {
                          "name": "Alexa Grasso",
                          "description": "",
                          "thumbnailUrl": "https://img.dge-prod.dicelaboratory.com/original/2021/12/21180708-o1pownxeb6kve7ah.png",
                          "fighterId": "fm",
                          "externalId": "fm"
                        }
                      ]
                    }
                  },
                  {
                    "id": 3294,
                    "title": "Women's Flyweight Bout",
                    "description": "",
                    "startDate": 1640044800000,
                    "endDate": 1640131199000,
                    "location": "",
                    "externalId": "1067",
                    "details": {
                      "type": "PARTICIPANTS",
                      "participants": [
                        {
                          "name": "Kay Hansen",
                          "description": "",
                          "fighterId": "fm3471",
                          "externalId": "fm3471"
                        },
                        {
                          "name": "Jasmine Jasudavicius",
                          "description": "",
                          "fighterId": "fm3663",
                          "externalId": "fm3663"
                        }
                      ]
                    }
                  },
                  {
                    "id": 3292,
                    "title": "Lightweight Bout",
                    "description": "",
                    "startDate": 1640044800000,
                    "endDate": 1640131199000,
                    "location": "",
                    "externalId": "1067",
                    "details": {
                      "type": "PARTICIPANTS",
                      "participants": [
                        {
                          "name": "Matt Frevola",
                          "description": "",
                          "thumbnailUrl": "https://img.dge-prod.dicelaboratory.com/original/2021/12/21180848-er83rt1udlln3hzf.png",
                          "fighterId": "fm2994",
                          "externalId": "fm2994"
                        },
                        {
                          "name": "Genaro Valdez",
                          "description": "",
                          "thumbnailUrl": "https://img.dge-prod.dicelaboratory.com/original/2021/12/21180851-tenzyinvrahgrasm.png",
                          "fighterId": "fm3720",
                          "externalId": "fm3720"
                        }
                      ]
                    }
                  }
                ],
                "localBroadcasters": [
          
                ],
                "audioOnly": false,
                "audioTracks": [
          
                ]
              },
              {
                "type": "LIVE",
                "accessLevel": "GRANTED",
                "licenceIds": [
          
                ],
                "title": "UFC 270: Post-Fight Press Conference",
                "id": 210349,
                "thumbnailUrl": "https://img.dge-prod.dicelaboratory.com/original/2021/12/08130510-esuuogiacgjpmfq0.jpg",
                "startDate": 1642918500000,
                "endDate": 1642925700000,
                "live": false,
                "subEvents": [
          
                ],
                "localBroadcasters": [
          
                ],
                "audioOnly": false,
                "audioTracks": [
          
                ]
              }
            ],
            "placeholderData": {
            }
          }
    MD

    def default_options
      {
        'token' => '',
        'api_key' => '',
        'expected_receive_period_in_days' => '7',
        'changes_only' => 'true',
        'refresh_token' => '',
        'debug' => 'false'
      }
    end

    form_configurable :expected_receive_period_in_days, type: :string
    form_configurable :token, type: :string
    form_configurable :api_key, type: :string
    form_configurable :refresh_token, type: :string
    form_configurable :changes_only, type: :boolean
    form_configurable :debug, type: :boolean

    def validate_options
      unless options['token'].present?
        errors.add(:base, "token is a required field")
      end

      unless options['api_key'].present?
        errors.add(:base, "api_key is a required field")
      end

      unless options['refresh_token'].present?
        errors.add(:base, "refresh_token is a required field")
      end

      if options.has_key?('changes_only') && boolify(options['changes_only']).nil?
        errors.add(:base, "if provided, changes_only must be true or false")
      end

      if options.has_key?('debug') && boolify(options['debug']).nil?
        errors.add(:base, "if provided, debug must be true or false")
      end

      unless options['expected_receive_period_in_days'].present? && options['expected_receive_period_in_days'].to_i > 0
        errors.add(:base, "Please provide 'expected_receive_period_in_days' to indicate how many days can pass before this Agent is considered to be not working")
      end
    end

    def working?
      event_created_within?(options['expected_receive_period_in_days']) && !recent_error_logs?
    end

    def check
      fetch
    end

    private

    def refresh(token)
      uri = URI.parse("https://dce-frontoffice.imggaming.com/api/v2/token/refresh")
      request = Net::HTTP::Post.new(uri)
      request.content_type = "application/json"
      request["User-Agent"] = "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0"
      request["Accept"] = "application/json, text/plain, */*"
      request["Accept-Language"] = "fr"
      request["Referer"] = "https://ufcfightpass.com/"
      request["X-Api-Key"] = "#{interpolated['api_key']}"
      request["App"] = "dice"
      request["Realm"] = "dce.ufc"
      request["X-App-Var"] = "6.0.0"
      request["Authorization"] = "Bearer #{interpolated['token']}"
      request["Origin"] = "https://ufcfightpass.com"
      request["Connection"] = "keep-alive"
      request["Sec-Fetch-Dest"] = "empty"
      request["Sec-Fetch-Mode"] = "cors"
      request["Sec-Fetch-Site"] = "cross-site"
      request["Te"] = "trailers"
      request.body = "{\"refreshToken\": \"#{token}\"}"
      
      req_options = {
        use_ssl: uri.scheme == "https",
      }
      
      response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
        http.request(request)
      end

      log "request status : #{response.code}"

      if interpolated['debug'] == 'true'
        log "response.body"
        log response.body
      end

      if response.is_a?(Net::HTTPSuccess)
        memory['last_refresh_token'] = response.body.to_s
      else
        log "refresh failed"
      end

    end

    def fetch

      if "#{memory['last_refresh_token']}" == ''
        used_token = interpolated['refresh_token']
        bearer = interpolated['bearer_token']
        refresh(used_token)
        bearer = JSON.parse(memory['last_refresh_token'])['authorisationToken']
      else
        used_token = interpolated['refresh_token']
#        used_token = JSON.parse(memory['last_refresh_token']['refresh_token'])
        refresh(used_token)
        bearer = JSON.parse(memory['last_refresh_token'])['authorisationToken']
      end
      if interpolated['debug'] == 'true'
        log "used_token #{used_token}"
        log "bearer #{bearer}"
      end

      uri = URI.parse("https://dce-frontoffice.imggaming.com/api/v4/content/schedule?bpp=10&rpp=12&bspp=20&displaySectionLinkBuckets=SHOW&displayEpgBuckets=HIDE&displayEmptyBucketShortcuts=SHOW&zo=Europe%2FParis")
      request = Net::HTTP::Get.new(uri)
      request.content_type = "application/json"
      request["User-Agent"] = "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0"
      request["Accept"] = "application/json, text/plain, */*"
      request["Accept-Language"] = "fr-FR"
      request["Referer"] = "https://ufcfightpass.com/"
      request["X-Api-Key"] = "#{interpolated['api_key']}"
      request["App"] = "dice"
      request["Realm"] = "dce.ufc"
      request["X-App-Var"] = "6.0.0"
      request["Authorization"] = "Bearer #{bearer}}"
      request["Origin"] = "https://ufcfightpass.com"
      request["Connection"] = "keep-alive"
      request["Sec-Fetch-Dest"] = "empty"
      request["Sec-Fetch-Mode"] = "cors"
      request["Sec-Fetch-Site"] = "cross-site"
      
      req_options = {
        use_ssl: uri.scheme == "https",
      }
  
      response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
        http.request(request)
      end
      
      log "request  status : #{response.code}"

      payload = JSON.parse(response.body)

      if interpolated['debug'] == 'true'
        log payload
      end

      if interpolated['changes_only'] == 'true'
        if payload.to_s != memory['last_status']
          if !memory['last_status'].nil?
            last_status = memory['last_status']
#            last_status = memory['last_status'].gsub("=>", ": ").gsub(": nil", ": null")
            log "before parse"
            last_status = JSON.parse(last_status)
          end
          payload['buckets'].each do |event|
            found = false
            if interpolated['debug'] == 'true'
              log "event"
              log event
            end
            if !memory['last_status'].nil?
              last_status['buckets']['contentList'].each do |eventbis|
                if event['paymentDate'] == eventbis['paymentDate']
                  found = true
                end
                if interpolated['debug'] == 'true'
                  log "eventbis"
                  log eventbis
                  log "found is #{found}!"
                end
              end
            end
            if found == false
              if interpolated['debug'] == 'true'
                log "found is #{found}! so event created"
                log event
              end
              create_event payload: event
            end
          end
          memory['last_status'] = payload.to_s
        end
      else
        create_event payload: payload
        if payload.to_s != memory['last_status']
          memory['last_status'] = payload.to_s
        end
      end
    end
  end
end
