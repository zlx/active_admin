module ActiveAdmin
  module Inputs
    extend ActiveSupport::Autoload

    autoload :Select2Input
    autoload :DatepickerInput

    autoload :FilterBase
    autoload :FilterStringInput
    autoload :FilterDateRangeInput
    autoload :FilterNumericInput
    autoload :FilterSelectInput
    autoload :FilterCheckBoxesInput
    autoload :FilterBooleanInput
  end
end
