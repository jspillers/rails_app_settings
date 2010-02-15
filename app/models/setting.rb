class Setting < ActiveRecord::Base

  serialize :value

  def self.method_missing(meth, *args)
    begin
      # active record makes use of method_missing heavily so
      # let it do its thing
      super(meth, *args) 

    # if activerecord doesn't know what to do with our method 
    # then we will try to handle it here
    rescue NoMethodError
      meth = meth.to_s

      # if the method that was called ends in "=" then 
      # we are trying to create or update a setting
      if meth[-1,1] == "="
        meth.gsub!("=","")
        setting = self.find_or_initialize_by_key(meth)
        setting.update_attribute(:value, args.first)
        Rails.cache.write(meth, setting.value)
      else
        setting = Rails.cache.read(meth)
        if setting.nil? 
          setting = self.find_by_key(meth).try(:value)
          Rails.cache.write(meth, setting) if setting
        end
        setting
      end
    end

  end
end
