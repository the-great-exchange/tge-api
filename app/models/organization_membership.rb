# == Schema Information
#
# Table name: organization_memberships
#
#  id              :integer          not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  organization_id :integer
#  person_id       :integer
#  is_primary      :boolean
#

class OrganizationMembership < ApplicationRecord
end
