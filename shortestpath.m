function [path] = shortestpath(G, s, t, varargin)

path = constructPath(pred, targ);
if ~isnumeric(s) && ~isnumeric(t)
    path = G.NodeProperties.Name(path).';
end

function p = constructPath(pred, t) 
p = [];
tnext = c(t);
if ~isnan(tnext)
    while tnext ~= 0
        p(end+1) = t;
        t = tnext;
        tnext = pred(t);
    end
    p(end+1) = t;
    p = flip(p);
end 