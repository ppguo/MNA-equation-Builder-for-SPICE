cparse_init;
parser_init;

filename='dbmixer.hb';
fid = fopen(filename,'r');

while ~feof(fid)
    line=fgetl(fid);
    line=lower(strtrim(line));  %��ΪСд��ĸ����ȥͷβ�Ŀո�
    node_list=[];
    if((size(line,2)>0)&&~(line(1)=='*'))   %�����հ׺�ע��
        [line,num] = sentence_parser(line);
        [ELEM,node_list]= sentence_to_elem(line,num,node_list);
        
    end
end

    