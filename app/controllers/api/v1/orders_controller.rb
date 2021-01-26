module Api::V1
  class OrdersController < ApiController
    
    before_action orders_params: [:create]

    def create
      @order = Order.new(orders_params)
      if @order.save
        render json: { order: @order }, status: 201 
      else
        render json: { errors: @order.errors.full_messages }, status: 422
      end
    end

    private

      def orders_params
        params.require(:order).permit(:device_model, :device_imei, :yearly_price, :installments, :user_id) 
      end

  end
end
