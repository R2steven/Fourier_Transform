function [signalArray] = signal(func,sRate,xI,xF)
%SIGNAL generates a signal array for use in testing discrete fourier
%transforms
%   inputs: func is any function, usually trig
%           sRate is the sampling rate
%           xI and xF are the beginning and end points
%   HINT: DFTs can only accurately find trig polys with 
%   max frequencies < 1/2 the frequency of the sample rate.

n = sRate*abs(xI-xF); %size of signal array
signalArray = zeros(1,n);

for i=0:n
    signalArray(i) = func(xI+i*sRate);
end

end

