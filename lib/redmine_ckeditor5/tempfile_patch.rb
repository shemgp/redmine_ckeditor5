module RedmineCkeditor5
  module TempfilePatch
    def initialize(basename = '', tmpdir = nil, mode: 0, **options)
      super(basename, tmpdir, mode: mode, **options).tap do |f|
        f.binmode if basename == "raw-upload."
      end
    end
  end
end

Tempfile.prepend RedmineCkeditor5::TempfilePatch
