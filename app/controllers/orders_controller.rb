
class OrdersController < ApplicationController
  
  def highsalary
    @employees = Employee.order(salary: :desc).limit(1)
  end
  
  def order_by_age_asc
	@employees = Employee.order(:age)
  end
  
  def order_by_age_desc
	@employees = Employee.order(age: :desc)
  end

  def order_by_dept
    @employees = Employee.order(:department_id)
  end
  
  def order_by_salary_asc
    @employees = Employee.order(:salary)
  end
  
  def order_by_salary_desc
	@employees = Employee.order(salary: :desc)
  end
  
  def retired_list
	@employees = Employee.where("age > ?", 65)
  end
  
  def top5emp
	@employees = Employee.order(salary: :desc).limit(5)
  end
  
  def top5sremp_by_age
	@employees = Employee.order(age: :desc).limit(5)
  end
  
  def lowsalaryandsenior
	@employees = Employee.order(:salary, age: :desc).limit(1)
  end
  
end