# encoding: UTF-8
# frozen_string_literal: true

module API
  module V2
    module Entities
      class Beneficiary < Base
        expose(
          :id,
          documentation: {
            desc: 'Beneficiary Identifier in Database',
            type: Integer
          }
        )

        expose(
          :currency_id,
          as: :currency,
          documentation: {
            desc: 'Beneficiary currency code.',
            type: String
          }
        )

        expose(
          :name,
          documentation: {
            desc: 'Human rememberable name which refer beneficiary.',
            type: String
          }
        )

        expose(
          :description,
          documentation: {
            desc: 'Human rememberable description of beneficiary.',
            type: String
          }
        )

        expose(
          :data,
          documentation: {
            desc: 'Bank Account details for fiat Beneficiary in JSON format.'\
                  'For crypto it\'s blockchain address.',
            type: JSON
          }
        )

        expose(
          :state,
          documentation: {
            desc: 'Defines either beneficiary active - user can use it to withdraw money'\
                  'or pending - requires beneficiary activation with pin.',
            type: String
          }
        )
      end
    end
  end
end
