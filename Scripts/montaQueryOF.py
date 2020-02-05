labels = []
arr = {}
sigla = {}
sit = {}

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

sit['Conformidade Pagamento'] = 1
sit['Cancelada'] = 2
sit['Aceita'] = 3
sit['Entregue'] = 4
sit['Devolvida pela FÃ¡brica'] = 5
sit['Em ExecuÃ§Ã£o'] = 6
sit['Entrega Validada'] = 7
sit['ConcluÃ\xadda'] = 8

def montaArray(linha):
    for i in range(0, len(labels)):
        arr[labels[i]] = linha[i]

def montaLabels(linha):
    for i in linha:
        if(i != ''):
            labels.append(i)

def trataData(dt):
   
    if(dt == ''):
        return 'null'
    dt = dt.split()[0].split('/')
    dt[2] = '20'+dt[2]
    return "'" + dt[2] + '-' + dt[0] + '-' + dt[1] + "'"

def trataSit(situ):        
    if(situ == 'Aceita'):
        return '4,4,'
    else:        
        return str(sit[situ]) + ',' + 'null,'

def trataSigla(sig):         
    return str(sigla[sig]) + ', null,'

def trataAgil(agil):
    if(agil == 'Sim'):
        return "0,"
    else:
        return "1,"




def montaQuery():
    query = 'insert into ordem_forn (numero_OF,numero_OF_genti,fabrica,tema,agil,usti_bb,uor,demanda,acao,tipo,cd_ti,dt_abertura,dt_previsao,dt_entrega,dt_devolvida,dt_recusa,dt_aceite,fk_situacao,fk_situacao_alm,fk_sigla,fk_usuario,responsavel_t,gerente_t) values('
   
    query += "'" + arr['NOF'] + "',"
    query += "'" + arr['OF'] + "',"
    query +="'" + arr['FABRICA'] + "',"
    query += "'" + arr['TEMA'] + "',"
    query += trataAgil(arr['AGIL'])
    query += "'" + arr['USTIBB'] + "',"
    query += "'" + arr['UOR'] + "',"
    query += "'" + arr['DEMANDA'] + "',"
    query += "'" + arr['ACAO'] + "',"
    query += "'" + arr['TIPO'] + "',"
    query += "'" + arr['CD_TI'] + "',"
    query += trataData(arr['DT_ABERTURA']) + ","      
    query += trataData(arr['DT_PREVISAO'])  + ","
    query += trataData(arr['DT_ENTREGA']) + ","
    query += trataData(arr['DT_DEVOLVIDA']) + ","
    query += trataData(arr['DT_RECUSA']) + ","
    query += trataData(arr['DT_ACEITE']) + ","
    query += trataSit(arr['SITUACAO'])
    query += trataSigla(arr['Sistema'])
    query += "'" + arr['RT'] + "',"
    query += "'" + arr['GT'] + "');"
    
    print(query)


primeira = True
while(True):

    try:
        linha = input().split(',')
    except:
        break
    
    if(primeira):
        primeira = False
        montaLabels(linha)
        continue
    
    montaArray(linha)
    montaQuery()
    

   



    
