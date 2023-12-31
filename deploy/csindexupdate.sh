kp_ip=$1
curl -X PUT \
  "http://${kp_ip}:9200/compositesearch?pretty=" \
  -H 'Content-Type: application/json' \
  -H 'Postman-Token: 68ce3805-bdea-43db-b64d-e6353098d690' \
  -H 'cache-control: no-cache' \
  -d '{
  "aliases": {},
  "mappings": {
    "cs": {
      "dynamic_templates": [
        {
          "longs": {
            "mapping": {
              "type": "long",
              "fields": {
                "raw": {
                  "type": "long"
                }
              }
            },
            "match_mapping_type": "long"
          }
        },
        {
          "booleans": {
            "mapping": {
              "type": "boolean",
              "fields": {
                "raw": {
                  "type": "boolean"
                }
              }
            },
            "match_mapping_type": "boolean"
          }
        },
        {
          "doubles": {
            "mapping": {
              "type": "double",
              "fields": {
                "raw": {
                  "type": "double"
                }
              }
            },
            "match_mapping_type": "double"
          }
        },
        {
          "dates": {
            "mapping": {
              "type": "date",
              "fields": {
                "raw": {
                  "type": "date"
                }
              }
            },
            "match_mapping_type": "date"
          }
        },
        {
          "strings": {
            "mapping": {
              "type": "text",
              "copy_to": "all_fields",
              "analyzer": "cs_index_analyzer",
              "search_analyzer": "cs_search_analyzer",
              "fields": {
                "raw": {
                  "type": "text",
                  "fielddata": true,
                  "analyzer": "keylower"
                }
              }
            },
            "match_mapping_type": "string"
          }
        },
        {
          "nested": {
            "mapping": {
              "type": "nested",
              "fields": {
                "type": "nested"
              }
            },
            "match_mapping_type": "object"
          }
        }
      ],
      "properties": {
        "Audio": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "IL_FUNC_OBJECT_TYPE": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "IL_INDEXABLE_METADATA_KEY": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "IL_IN_RELATIONS_KEY": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "IL_NON_INDEXABLE_METADATA_KEY": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "IL_OUT_RELATIONS_KEY": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "IL_REQUIRED_PROPERTIES": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "IL_SYSTEM_TAGS_KEY": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "IL_SYS_NODE_TYPE": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "IL_UNIQUE_ID": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "Link": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "RhymingSound": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "SET_OBJECT_TYPE_KEY": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "SET_TYPE": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "SYS_INTERNAL_LAST_UPDATED_ON": {
          "type": "date",
          "fields": {
            "raw": {
              "type": "date",
              "format": "strict_date_optional_time||epoch_millis"
            }
          },
          "format": "strict_date_optional_time||epoch_millis"
        },
        "TemplateType": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "actions": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "activityType": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "activity_class": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "ageGroup": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "all_fields": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "allowupdate_status": {
          "type": "boolean",
          "fields": {
            "raw": {
              "type": "boolean"
            }
          }
        },
        "altIsoSymbol": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "answer": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "antonyms": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "apiId": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "appIcon": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "appIconLabel": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "appId": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "applicability": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "artifactUrl": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "attribution": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "attributions": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "audience": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "author": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "authoringScore": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "averageComplexity": {
          "type": "double",
          "fields": {
            "raw": {
              "type": "double"
            }
          }
        },
        "avgGamingTime": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "badgeAssertions": {
          "properties": {
            "assertionId": {
              "type": "text",
              "fields": {
                "raw": {
                  "type": "text",
                  "analyzer": "keylower"
                }
              },
              "copy_to": [
                "all_fields"
              ],
              "analyzer": "cs_index_analyzer",
              "search_analyzer": "cs_search_analyzer"
            },
            "badgeClassId": {
              "type": "text",
              "fields": {
                "raw": {
                  "type": "text",
                  "analyzer": "keylower"
                }
              },
              "copy_to": [
                "all_fields"
              ],
              "analyzer": "cs_index_analyzer",
              "search_analyzer": "cs_search_analyzer"
            },
            "badgeClassName": {
              "type": "text",
              "fields": {
                "raw": {
                  "type": "text",
                  "analyzer": "keylower"
                }
              },
              "copy_to": [
                "all_fields"
              ],
              "analyzer": "cs_index_analyzer",
              "search_analyzer": "cs_search_analyzer"
            },
            "createdTS": {
              "type": "long",
              "fields": {
                "raw": {
                  "type": "long"
                }
              }
            },
            "issuerId": {
              "type": "text",
              "fields": {
                "raw": {
                  "type": "text",
                  "analyzer": "keylower"
                }
              },
              "copy_to": [
                "all_fields"
              ],
              "analyzer": "cs_index_analyzer",
              "search_analyzer": "cs_search_analyzer"
            }
          }
        },
        "consumeAs": {
          "type":"nested",
          "properties": {
            "channel": {
              "type": "text",
              "fields": {
                "raw": {
                  "type": "text",
                  "analyzer": "keylower"
                }
              },
              "copy_to": [
                "all_fields"
              ],
              "analyzer": "cs_index_analyzer",
              "search_analyzer": "cs_search_analyzer"
            },
            "board": {
              "type": "text",
              "fields": {
                "raw": {
                  "type": "text",
                  "analyzer": "keylower"
                }
              },
              "copy_to": [
                "all_fields"
              ],
              "analyzer": "cs_index_analyzer",
              "search_analyzer": "cs_search_analyzer"
            },
            "medium": {
              "type": "text",
              "fields": {
                "raw": {
                  "type": "text",
                  "analyzer": "keylower"
                }
              },
              "copy_to": [
                "all_fields"
              ],
              "analyzer": "cs_index_analyzer",
              "search_analyzer": "cs_search_analyzer"
            },
            "subject": {
              "type": "text",
              "fields": {
                "raw": {
                  "type": "text",
                  "analyzer": "keylower"
                }
              },
              "copy_to": [
                "all_fields"
              ],
              "analyzer": "cs_index_analyzer",
              "search_analyzer": "cs_search_analyzer"
            },
            "gradeLevel": {
            "type": "text",
            "fields": {
              "raw": {
                "type": "text",
                "analyzer": "keylower",
                "fielddata": true
              }
            },
            "copy_to": [
              "all_fields"
            ],
            "analyzer": "cs_index_analyzer",
            "search_analyzer": "cs_search_analyzer"
          }
          }
        },
        "baseUrl": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "bloomsTaxonomyLevel": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "board": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "body": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "c_null_open_batch_count": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "c_null_private_batch_count": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "c_test_name_open_batch_count": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "cases": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "categories": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "category": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "categoryinstances": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "channel": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "channels": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "chapterName": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "chapterNumber": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "childNodes": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "children": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "class": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "code": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "collaborators": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "collections": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "communication_scheme": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "compatibilityLevel": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "conceptData": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "conceptIds": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "concepts": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "consumerGroups": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "consumerId": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "contentDisposition": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "contentEncoding": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "contentFilter": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "contentMeta": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "contentType": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "contentTypesCount": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "contents": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "converse": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "copyType": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "copyright": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "cost": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "count_grade_1": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "count_grade_2": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "count_grade_3": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "count_pos_CC": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "count_pos_DEM": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "count_pos_ECH": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "count_pos_INJ": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "count_pos_INTF": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "count_pos_JJ": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "count_pos_NEG": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "count_pos_NN": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "count_pos_NST": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "count_pos_PRP": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "count_pos_PSP": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "count_pos_QC": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "count_pos_QF": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "count_pos_QO": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }          }
        },
        "count_pos_RB": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "count_pos_RDP": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "count_pos_RP": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "count_pos_VAUX": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "count_pos_VM": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "count_pos_WQ": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "count_source_Karnataka_Govt_Textbooks": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "count_source_Rajasthan_Textbooks": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "count_textbooks": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "createdBy": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "createdFor": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "createdOn": {
          "type": "date",
          "fields": {
            "raw": {
              "type": "date",
              "format": "strict_date_optional_time||epoch_millis"
            }
          },
          "format": "strict_date_optional_time||epoch_millis"
        },
        "creator": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "curriculum": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "defaultFramework": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "defaultRes": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "description": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "developer": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "dialcodes": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "dimensions": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "domain": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "downloadUrl": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "duration": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "edition": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "editorState": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "ekstepWordnet": {
          "type": "boolean",
          "fields": {
            "raw": {
              "type": "boolean"
            }
          }
        },
        "endPoint": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "endsWithAkshara": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "example": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "exampleSentences": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "externalValidation": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "faculty": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "failPopup": {
          "type": "boolean",
          "fields": {
            "raw": {
              "type": "boolean"
            }
          }
        },
        "feedback": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "fields": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "filter": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "flagReasons": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "flaggedBy": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "flags": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "follows": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "format": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "foundation": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "framework": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "frameworkId": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "frameworks": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "fw_hierarchy": {
          "type": "text",
          "index": false
        },
        "gender": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "genders": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "genieScore": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "genre": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "gloss": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "grade": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "gradeLevel": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "graph_id": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "grayScaleAppIcon": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "hasAntonyms": {
          "type": "boolean",
          "fields": {
            "raw": {
              "type": "boolean"
            }
          }
        },
        "hasConnotative": {
          "type": "boolean",
          "fields": {
            "raw": {
              "type": "boolean"
            }
          }
        },
        "hasSynonyms": {
          "type": "boolean",
          "fields": {
            "raw": {
              "type": "boolean"
            }
          }
        },
        "hints": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "holonyms": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "hypernyms": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "hyponyms": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "i18n": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "idealScreenDensity": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "idealScreenSize": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "identifier": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "illustrator": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "illustrators": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "image": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "imageCredits": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "index": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "indowordnetId": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "inflections": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "instruction": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "instructions": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "interactivityLevel": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "internalValidation": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "ipaSymbol": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "isConnotative": {
          "type": "boolean",
          "fields": {
            "raw": {
              "type": "boolean"
            }
          }
        },
        "isLoanWord": {
          "type": "boolean",
          "fields": {
            "raw": {
              "type": "boolean"
            }
          }
        },
        "isPhrase": {
          "type": "boolean",
          "fields": {
            "raw": {
              "type": "boolean"
            }
          }
        },
        "isoCode": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "isoSymbol": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "itemType": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "item_sets": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "items": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "keywords": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "keywords_bkp": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "label": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "langid": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "language": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "languageCode": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "languageId": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "languageLevel": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "lastFlaggedOn": {
          "type": "date",
          "fields": {
            "raw": {
              "type": "date",
              "format": "strict_date_optional_time||epoch_millis"
            }
          },
          "format": "strict_date_optional_time||epoch_millis"
        },
        "lastPublishDate": {
          "type": "date",
          "fields": {
            "raw": {
              "type": "date",
              "format": "strict_date_optional_time||epoch_millis"
            }
          },
          "format": "strict_date_optional_time||epoch_millis"
        },
        "lastPublishedBy": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "lastPublishedOn": {
          "type": "date",
          "fields": {
            "raw": {
              "type": "date",
              "format": "strict_date_optional_time||epoch_millis"
            }
          },
          "format": "strict_date_optional_time||epoch_millis"
        },
        "lastSubmittedOn": {
          "type": "date",
          "fields": {
            "raw": {
              "type": "date",
              "format": "strict_date_optional_time||epoch_millis"
            }
          },
          "format": "strict_date_optional_time||epoch_millis"
        },
        "lastUpdatedBy": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "lastUpdatedOn": {
          "type": "date",
          "fields": {
            "raw": {
              "type": "date",
              "format": "strict_date_optional_time||epoch_millis"
            }
          },
          "format": "strict_date_optional_time||epoch_millis"
        },
        "launchUrl": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "leafNodesCount": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "learnerLevel": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "learningObjective": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "lemma": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "level": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "lhs_options": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "license": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "limit": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "liveWords": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "material": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "maxChainLength": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "maxWords": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "max_score": {
          "type": "double",
          "fields": {
            "raw": {
              "type": "double"
            }
          }
        },
        "me_audiosCount": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "me_averageInteractionsPerMin": {
          "type": "double",
          "fields": {
            "raw": {
              "type": "double"
            }
          }
        },
        "me_averageRating": {
          "type": "double",
          "fields": {
            "raw": {
              "type": "double"
            }
          }
        },
        "me_averageSessionsPerDevice": {
          "type": "double",
          "fields": {
            "raw": {
              "type": "double"
            }
          }
        },
        "me_averageTimespentPerSession": {
          "type": "double",
          "fields": {
            "raw": {
              "type": "double"
            }
          }
        },
        "me_avgCreationTsPerSession": {
          "type": "double",
          "fields": {
            "raw": {
              "type": "double"
            }
          }
        },
        "me_creationSessions": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "me_creationTimespent": {
          "type": "double",
          "fields": {
            "raw": {
              "type": "double"
            }
          }
        },
        "me_imagesCount": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "me_timespentDraft": {
          "type": "double",
          "fields": {
            "raw": {
              "type": "double"
            }
          }
        },
        "me_timespentReview": {
          "type": "double",
          "fields": {
            "raw": {
              "type": "double"
            }
          }
        },
        "me_totalComments": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "me_totalDevices": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "me_totalDownloads": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "me_totalInteractions": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "me_totalRatings": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "me_totalSessionsCount": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "me_totalSideloads": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "me_totalTimespent": {
          "type": "double",
          "fields": {
            "raw": {
              "type": "double"
            }
          }
        },
        "me_videosCount": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "meaning": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "media": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "mediaType": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "mediatype": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "medium": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "meronyms": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "method": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "methods": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "mimeType": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "mimeTypesCount": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "minChainLength": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "model": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "model_sample": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "morphology": {
          "type": "boolean",
          "fields": {
            "raw": {
              "type": "boolean"
            }
          }
        },
        "name": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "nodeType": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "node_id": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "notes": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "num_answers": {
          "type": "double",
          "fields": {
            "raw": {
              "type": "double"
            }
          }
        },
        "objectType": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "objects": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "objectsUsed": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "occurrenceCount": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "oldContentBody": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "optStatus": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "options": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "organization": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "origin": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "orthographic_complexity": {
          "type": "double",
          "fields": {
            "raw": {
              "type": "double"
            }
          }
        },
        "os": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "osId": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "owner": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "pageNumber": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "parent": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "partial_scoring": {
          "type": "boolean",
          "fields": {
            "raw": {
              "type": "boolean"
            }
          }
        },
        "person": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "phonologic_complexity": {
          "type": "double",
          "fields": {
            "raw": {
              "type": "double"
            }
          }
        },
        "pictures": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "pkgVersion": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "plurality": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "popularity": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "portalOwner": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "pos": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "posTags": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "pos_categories": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "posterImage": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "pragma": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "prevState": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "previewUrl": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "primaryMeaning": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "primaryMeaningId": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "product": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "pronunciations": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "publication": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "publishError": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "publish_type": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "publisher": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "purpose": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "qid": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "qlevel": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "qtype": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "question": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "questionImage": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "question_audio": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "question_count": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "question_image": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "references": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "renderingHints": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "resourceType": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "resources": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "responses": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "rhs_options": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "rownum": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "ruleId": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "ruleObjectType": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "ruleScript": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "s3Key": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "sYS_INTERNAL_LAST_UPDATED_ON": {
          "type": "date",
          "fields": {
            "raw": {
              "type": "date",
              "format": "strict_date_optional_time||epoch_millis"
            }
          },
          "format": "strict_date_optional_time||epoch_millis"
        },
        "sampleUsages": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "savingPopup": {
          "type": "boolean",
          "fields": {
            "raw": {
              "type": "boolean"
            }
          }
        },
        "screenshots": {
          "type": "text",
          "index": false
        },
        "semanticVersion": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "showNotification": {
          "type": "boolean",
          "fields": {
            "raw": {
              "type": "boolean"
            }
          }
        },
        "shuffle": {
          "type": "boolean",
          "fields": {
            "raw": {
              "type": "boolean"
            }
          }
        },
        "size": {
          "type": "double",
          "fields": {
            "raw": {
              "type": "double"
            }
          }
        },
        "skills": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "softConstraints": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "soundCredits": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "source": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "sourceTypes": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "sources": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "startWordsSize": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "startsWithAkshara": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "state": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "status": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "strict_sequencing": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "subject": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "sublevel": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "successPopup": {
          "type": "boolean",
          "fields": {
            "raw": {
              "type": "boolean"
            }
          }
        },
        "syllableCount": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "syllableNotation": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "syllables": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "synonyms": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "synsetCount": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "synsets": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "tags": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "tempData": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "template": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "templateName": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "templateType": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "template_id": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "terms": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "text": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "textbookName": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "theme": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "themes": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "thumbnail": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "title": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "toc_url": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "tools": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "totalGamingTime": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "total_items": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "translations": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "ttl": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "tutor": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "type": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "unicode": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "unicodeNotation": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "usedByContent": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "used_for": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "usesContent": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "variants": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "varna": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "version": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "versionCheckMode": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "versionKey": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "visibility": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "voiceCredits": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "vowel": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "weightages": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "wordImages": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "wordListIds": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "wordLists": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "word_complexity": {
          "type": "double",
          "fields": {
            "raw": {
              "type": "double"
            }
          }
        },
        "words": {
          "type": "long",
          "fields": {
            "raw": {
              "type": "long"
            }
          }
        },
        "wordsets": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "workers": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        },
        "year": {
          "type": "text",
          "fields": {
            "raw": {
              "type": "text",
              "fielddata": true,
              "analyzer": "keylower"
            }
          },
          "copy_to": [
            "all_fields"
          ],
          "analyzer": "cs_index_analyzer",
          "search_analyzer": "cs_search_analyzer"
        }
      }
    }
  },
  "settings": {
    "index": {
     "max_ngram_diff" : "19",
      "analysis": {
        "filter": {
          "mynGram": {
            "token_chars": [
              "letter",
              "digit",
              "whitespace",
              "punctuation",
              "symbol"
            ],
            "min_gram": "1",
            "type": "nGram",
            "max_gram": "20"
          }
        },
        "analyzer": {
          "cs_index_analyzer": {
            "filter": [
              "lowercase",
              "mynGram"
            ],
            "type": "custom",
            "tokenizer": "standard"
          },
          "keylower": {
            "filter": "lowercase",
            "tokenizer": "keyword"
          },
          "cs_search_analyzer": {
            "filter": [
              "standard",
              "lowercase"
            ],
            "type": "custom",
            "tokenizer": "standard"
          }
        }
      }
    }
  }
}'
