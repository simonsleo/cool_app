a= 0.4;
lambda = 0.4;
eta=0.075;
r_0 = a;
k=0.50*eta^2/lambda^2

%fun = @(x,a,lambda,k) a*(exp(a*x)-exp(-lambda*x))+k/lambda*(1.0-exp(-lambda*x))+k*exp(-lambda*x)*(exp(-lambda*x)-1.0);

fun = @(x,a,lambda,k) a*(exp(a*x)-exp(-lambda*x))+k/lambda*(1.0-exp(-lambda*x))+k*exp(-lambda*x).*(exp(-lambda*x)-1.0)

t = 0:1:10.0;

q_mrkt = zeros(size(t));
q_model =zeros(size(t));
for i=1:length(t)
tt=t(i)
q_mrkt(i)  = exp(1.0-exp(a*tt))
q_model(i) = exp(r_0*(exp(-lambda*tt)-1.0)/lambda-lambda*integral(@(x)fun(x,a,lambda,k),0,tt))
end
