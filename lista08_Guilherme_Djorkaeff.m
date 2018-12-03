% s = [1 1 2 3 3 4 4 6 6 7 8 7 5]; %para conferir com os pesos
% t = [2 3 4 4 5 5 6 1 8 1 3 2 8]; %para conferir com os pesos
rng('shuffle')
s = randi([1,15],1,15);
rng('shuffle')
t = randi([1,15],1,15);
weights = randi([1,10],1,15); %Arestas
G = digraph(s,t, weights);
p = plot(G,'EdgeLabel',G.Edges.Weight);
partida = input('Digite o nó de partida: ');
destino = input('Digite o nó de destino: ');
P = shortestpath(G,partida,destino);
if isempty(P)
    text(0.5,0.5,'Impossível chegar ao nó destino','Color','r','FontSize',14,'FontWeight','bold');
    error('Impossível chegar ao nó destino')
else
    highlight(p,P,'EdgeColor','r')
end
