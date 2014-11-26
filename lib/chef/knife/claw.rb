require 'chef/knife'

class Chef
  class Knife
    class Claw < Chef::Knife
      banner "knife claw COOKBOOK"

      deps do
        require 'chef-dk/policyfile_compiler'
      end

      def run
        compiler = ChefDK::PolicyfileCompiler.new
        compiler.dsl.default_source :community
        compiler.dsl.run_list *name_args
        compiler.graph_solution.each do |name, version|
          compiler.create_spec_for_cookbook(name, version).inspect
        end
      end
    end
  end
end
