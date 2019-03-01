module Api
  module Admin
    class CachesController < ApplicationController
      resource_description do
        resource_id 'Admin::Caches'
        short 'Caches Admin'
        formats ['json']
        description "This resource allows for administrative tasks to be performed on the cache via the API."
      end
      include LogsHelper
      before_filter :authenticate_user!
      before_filter :validate_authorization!

      api :GET, "/admin/caches/count", "Return count of caches in the database."
      example '{"query_cache_count":56, "patient_cache_count":100}'
      def count
        log_admin_api_call LogAction::VIEW, "Count of caches"
        json = {}
        json['query_cache_count'] = HealthDataStandards::CQM::QueryCache.count
        json['patient_cache_count'] = QDM::IndividualResult.count
        render :json => json
      end

      api :GET, "/admin/caches/spinner", "Return spinner status"
      def spinner
        #log_admin_api_call LogAction::VIEW, "Count of caches"
        json = {}
        json['spinner_stat'] = Delayed::Job.where(queue: "patient_import").count
         if json['spinner_stat'] > 0
          puts "inside spinner stat"
          end
        render :json => json
      end

      api :GET, "/admin/caches/staticmeasures", "Return static measure"
      def static_measure
        #log_admin_api_call LogAction::VIEW, "Count of caches"
        #json = {}
        #json['spinner_stat'] = Delayed::Job.where(queue: "patient_import").count
         #if json['spinner_stat'] > 0
          #puts "inside spinner stat"
          #end
        puts "im in static measures"
        puts "params id is #{params[:id]}"
        smeasure = StaticMeasure.where({"measure_id" => params[:id]}).first
        #smeasure = StaticMeasure.first
        puts smeasure
        render :json => smeasure
      end

      api :DELETE, "/admin/caches", "Empty all caches in the database."
      def destroy
        log_admin_api_call LogAction::DELETE, "Empty all caches"
        HealthDataStandards::CQM::QueryCache.delete_all
        QDM::IndividualResult.delete_all
        render status: 200, text: 'Server caches have been emptied.'
      end

      private 

      def validate_authorization!
        authorize! :admin, :users
      end
    end
  end
end