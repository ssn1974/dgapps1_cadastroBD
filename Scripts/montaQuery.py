ar_perfil = {}
sigla = {}

ar_perfil['OperaÃ§Ã£o'] = 2
ar_perfil['Baixa'] = 1
ar_perfil['Alta'] = 2
ar_perfil['Mobile'] = 2
ar_perfil['UX'] = 2

sigla['OBR'] = 1
sigla['AFO'] = 2
sigla['IAT'] = 3
sigla['DEB'] = 4
sigla['SOL'] = 5
sigla['STO'] = 6
sigla['CBR'] = 7
sigla['GAP'] = 8
sigla['ACC'] = 9
sigla['CNL'] = 10
sigla['GRL'] = 11
sigla['GAB'] = 12
sigla['TFA'] = 13
sigla['DSH'] = 14
sigla['CRS'] = 15
sigla['DPO'] = 16
sigla['GCO'] = 17
sigla['CRB'] = 18
sigla['HBK'] = 19
sigla['RCA'] = 20
sigla['DSP'] = 21
sigla['ICC'] = 22
sigla['EFN'] = 23
sigla['ACH'] = 24
sigla['CBO'] = 25
sigla['CMN'] = 26
sigla['MTN'] = 27
sigla['PLG'] = 28
sigla['OnBoarding'] = 28
sigla['HK'] = 29
sigla['TFO'] = 30



def trataSigla(sgl):
    if(sgl == ''):
        return ',null);'
    
    return "," + str(sigla[sgl]) + ");"

def preenche(linha, nr):

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


    rel = ''    
    if(linha[5] != ''):
        rel = "INSERT INTO usuario_x_perfil(fk_usuario, fk_perfil, status, dt_criacao, dt_exclusao) values ("
        rel += str(nr) + ','
        rel += str(ar_perfil[linha[5]]) + ','
        rel += "1,"
        rel += "curdate(), null);"
    
    sig = ''
    if(linha[14] != ''):
        sig = "INSERT INTO usuario_x_sigla(fk_usuario, fk_sigla, status, dt_criacao, dt_exclusao) values ("
        sig += str(nr) + ', '
        sig += str(sigla[linha[14]]) + ', '
        sig += '1,'
        sig += 'curdate(), null);'


    query += '\n' + rel + '\n' + sig
    
    return query

n_linha = 0
while(True):     
   
    try:
        linha = input().split(',')    
    except:
        break
        
    query = ""

    if(n_linha != 0):
        query = preenche(linha, n_linha)  

    print(query)





    n_linha += 1