function output = TambahData(input1,a,b,c,d,e,f,g)

datamesin = getappdata(0,'evalue');
start = getappdata(0,'evalue1');
start = start+1;
xtambah = [a b c d e f g];
cellxtambah = num2cell(xtambah);
namaMesintambah = {input1};

datatambah = {namaMesintambah; cellxtambah};
datatambah = horzcat(datatambah{:});

output = {datamesin; datatambah};
output = vertcat(output{:});
datamesin = output;
xbaru = datamesin(:,2:8);
xnama = datamesin(:,1);

xbaru = cell2mat(xbaru);

setappdata(0,'evalue3',xbaru);
setappdata(0,'evalue2',output);
setappdata(0,'evalue',datamesin);
setappdata(0,'evalue1',start);
setappdata(0,'evalue4',xnama);

