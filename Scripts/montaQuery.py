


def preenche(linha):
    
    query = "INSERT INTO USUARIO(nome,email,cpf,senha,codigo_re,codigo_bb,empresa,demanda,celular,nascimento,status,fk_contrato,fk_cargo) VALUES("
    query += "'" + linha[2].replace("'", '') + "'" + ', '
    query += "'" + linha[10] + "'" + ', '
    query += "'" + linha[4].replace('.', '').replace('-', '') + "'" + ', '
    query += 'sha2(' + "'" + linha[1] + "'" + ', 256)' + ', '
    query += "'" + linha[1]  + "'" + ', '
    query += "'" + linha[7]  + "'" + ', '
    query += "'" + linha[8]  + "'" + ', '
    query += "'" + linha[9]  + "'" + ', '
    query += "'" + linha[11] + "'" + ', '
    
    if(linha[13] != ''):
        dt = linha[13].split('-')
        query += "'19" + dt[2]+'-'+dt[0]+'-'+dt[1] + "'" + ', '
    else:
        query += "'2222-01-22',"  

    query += "'" + linha[6]  + "'" + ', '  
    query +=  '1, 3);'

    return query

n_linha = 1
while(True):     
   
    try:
        linha = input().split(',')    
    except:
        break
        
    query = ""

    if(n_linha != 1):
        query = preenche(linha)

    print(query)

    n_linha += 1