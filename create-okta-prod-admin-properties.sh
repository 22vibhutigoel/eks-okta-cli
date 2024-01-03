cp okta_eks_role.properties okta_prod_admin_role.properties
sed -i -e "s~OktaEKSRole~OktaEKSRole~" okta_prod_admin_role.properties ## this is required if you want to use another role .
