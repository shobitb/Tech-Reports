class TechReport < ActiveRecord::Base
	mount_uploader :tech_report, TechReportUploader
end
