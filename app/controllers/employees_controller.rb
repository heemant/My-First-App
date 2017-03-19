class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all
	
	#----> C
	#@employees = Employee.order(:age)
	#@employees = Employee.order(age: :desc)
	
	#---->D
	#@employees = Employee.order(:department_id)
	
	#---->E
	#@employees = Employee.order(:salary)
	#@employees = Employee.order(salary: :desc)
	
	#---->F
	#@employees = Employee.where("age > ?", 65)

	#---->G
	#@employees = Employee.order(salary: :desc).limit(1)
	
	#---->H
	#@employees = Employee.order(salary: :desc).limit(5)
	
	#---->I----?
	##############################@employees = Employee.order('salary DESC, department_id')#.offset(2)
	
	#---->J
	#@employees = Employee.order(age: :desc).limit(5)
	
	#---->K----?
	#@employees = Employee.last(salary: :desc)
	#p @employees.first
	#p @employees.last
	
	#---->L
	#@employees = Employee.order(:salary, age: :desc).limit(1)
	
  end
  
  
  # GET /employees/1
  # GET /employees/1.json
  def show
  end

  # GET /employees/new
  def new
    @employee = Employee.new
  end

  # GET /employees/1/edit
  def edit
  end

  # POST /employees
  # POST /employees.json
  def create
    @employee = Employee.new(employee_params)

    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: 'Employee was successfully created.' }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to employees_url, notice: 'Employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:name, :email, :age, :salary, :department_id)
    end
end
