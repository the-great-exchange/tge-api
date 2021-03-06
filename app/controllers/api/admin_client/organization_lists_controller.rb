class Api::AdminClient::OrganizationListsController < ApplicationController

  rapid_actions serializer:    ::AdminClient::OrganizationListSerializer,
                model_adapter: ::AdminClient::OrganizationListModelAdapter

  permit_params :organization_id, :mailchimp_list_id, categories: [ :name, groups: [:name, :selected] ]

  filterable_params :organization_id, :mailchimp_list_id

end
