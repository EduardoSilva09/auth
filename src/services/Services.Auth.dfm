inherited ServiceAuth: TServiceAuth
  OldCreateOrder = True
  inherited FDConnection: TFDConnection
    Connected = True
  end
  object vQryLogin: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT '
      'U.id,'
      'U.senha'
      'FROM usuario u '
      'WHERE u.login = :login'
      'AND u.status = 1')
    Left = 104
    Top = 184
    ParamData = <
      item
        Name = 'LOGIN'
        ParamType = ptInput
      end>
    object vQryLoginid: TLargeintField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object vQryLoginsenha: TWideStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 256
    end
  end
end
