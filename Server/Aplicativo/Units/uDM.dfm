object DM: TDM
  OldCreateOrder = False
  OnCreate = ServerMethodDataModuleCreate
  Encoding = esUtf8
  QueuedRequest = False
  Height = 547
  Width = 327
  object Conexao: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      
        'Database=Z:\DESENVOLVIMENTO DE SOFTWARE\SISTECH SOFTWARE E TECNO' +
        'LOGIA\PROJETOS\EmpacserVendasAPI.git\trunk\DB\SAC_NFCE.FDB'
      'DriverID=fB')
    LoginPrompt = False
    Left = 40
    Top = 8
  end
  object DWEvents: TDWServerEvents
    IgnoreInvalidParams = False
    Events = <
      item
        Routes = [crGet]
        NeedAuthorization = True
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'nmprimeiro'
            Alias = 'nmsegundo'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'nmsegundo'
            Alias = 'nmsegundo'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'flnatureza'
            Alias = 'flnatureza'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'dsdocumento'
            Alias = 'dsdocumento'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'dtregistro'
            Alias = 'dtregistro'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'dsCep'
            Alias = 'dsCep'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'dsUf'
            Alias = 'dsUf'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'nmCidade'
            Alias = 'nmCidade'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'nmBairro'
            Alias = 'nmBairro'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'nmLogradouro'
            Alias = 'nmLogradouro'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'NovoCliente'
        EventName = 'NovoCliente'
        OnlyPreDefinedParams = False
        OnReplyEvent = DWEventsEventsNovoClienteReplyEvent
      end>
    Left = 232
    Top = 8
  end
  object RESTDWPoolerDB1: TRESTDWPoolerDB
    RESTDriver = RESTDWDriverFD1
    Compression = True
    Encoding = esUtf8
    StrsTrim = False
    StrsEmpty2Null = False
    StrsTrim2Len = True
    Active = True
    PoolerOffMessage = 'RESTPooler not active.'
    ParamCreate = True
    Left = 48
    Top = 360
  end
  object RESTDWDriverFD1: TRESTDWDriverFD
    CommitRecords = 100
    Connection = Conexao
    Left = 48
    Top = 416
  end
  object Driver: TFDPhysFBDriverLink
    Left = 40
    Top = 64
  end
end
