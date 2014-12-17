module InventoryCode
  class Code
    attr_accessor :code, :types

    JAN_REGEX       = /^[0-9]{8}$|^[0-9]{13}$/
    UPC_A_REGEX     = /^[0-9]{12}$/
    UPC_E_REGEX     = /^[0-9]{6}$/
    UPC_ADDON_REGEX = /^[0-9]{14}$|^[0-9]{17}$|^[0-9]{8}$|^[0-9]{11}$/
    ISBN_REGEX      = /^[0-9]{10}$|^(978|979)[0-9]{10}$/
    ASIN_REGEX      = /^[0-9A-Z]{10}$/

    def initialize(code)
      @code  = code
      @types = select_types
    end

    def jan?
      code_match? JAN_REGEX
    end
    alias :ean? :jan?

    def upc?
      upc_a? || upc_e? || upc_addon?
    end

    def upc_a?
      code_match? UPC_A_REGEX
    end

    def upc_e?
      code_match? UPC_E_REGEX
    end

    def upc_addon?
      code_match? UPC_ADDON_REGEX
    end

    def isbn?
      code_match? ISBN_REGEX
    end

    def asin?
      code_match? ASIN_REGEX
    end

    private
    def select_types
      types = []
      types << "jan"  if jan?
      types << "ean"  if jan?
      types << "upc"  if upc?
      types << "isbn" if isbn?
      types << "asin" if asin?
    end

    def code_match? regex
      !!(code =~ regex)
    end
  end
end
