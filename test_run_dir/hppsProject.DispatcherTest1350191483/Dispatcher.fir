circuit Dispatcher :
  module Dispatcher :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip x_PE : UInt<4>, flip y_PE : UInt<4>, flip x_0 : UInt<4>, flip y_0 : UInt<4>, flip x_dest : UInt<4>, flip y_dest : UInt<4>, left : UInt<1>, right : UInt<1>, up : UInt<1>, bottom : UInt<1>, this_PE : UInt<1>}

    wire out_selector : UInt<4> @[Dispatcher.scala 36:28]
    node _T = eq(out_selector, UInt<1>("h1")) @[Dispatcher.scala 38:29]
    node _T_1 = eq(io.this_PE, UInt<1>("h0")) @[Dispatcher.scala 38:46]
    node _T_2 = and(_T, _T_1) @[Dispatcher.scala 38:43]
    io.left <= _T_2 @[Dispatcher.scala 38:13]
    node _T_3 = eq(out_selector, UInt<2>("h2")) @[Dispatcher.scala 39:30]
    node _T_4 = eq(io.this_PE, UInt<1>("h0")) @[Dispatcher.scala 39:47]
    node _T_5 = and(_T_3, _T_4) @[Dispatcher.scala 39:44]
    io.right <= _T_5 @[Dispatcher.scala 39:14]
    node _T_6 = eq(out_selector, UInt<3>("h4")) @[Dispatcher.scala 40:27]
    node _T_7 = eq(io.this_PE, UInt<1>("h0")) @[Dispatcher.scala 40:44]
    node _T_8 = and(_T_6, _T_7) @[Dispatcher.scala 40:41]
    io.up <= _T_8 @[Dispatcher.scala 40:11]
    node _T_9 = eq(out_selector, UInt<4>("h8")) @[Dispatcher.scala 41:31]
    node _T_10 = eq(io.this_PE, UInt<1>("h0")) @[Dispatcher.scala 41:48]
    node _T_11 = and(_T_9, _T_10) @[Dispatcher.scala 41:45]
    io.bottom <= _T_11 @[Dispatcher.scala 41:15]
    node _T_12 = eq(io.x_dest, io.x_PE) @[Dispatcher.scala 46:20]
    node _T_13 = eq(io.y_dest, io.y_PE) @[Dispatcher.scala 46:45]
    node _T_14 = and(_T_12, _T_13) @[Dispatcher.scala 46:32]
    when _T_14 : @[Dispatcher.scala 46:57]
      io.this_PE <= UInt<1>("h1") @[Dispatcher.scala 47:20]
      out_selector <= UInt<1>("h0") @[Dispatcher.scala 48:22]
    else :
      io.this_PE <= UInt<1>("h0") @[Dispatcher.scala 50:20]
      out_selector <= UInt<1>("h0") @[Dispatcher.scala 51:22]
    node _T_15 = cvt(io.x_PE) @[Dispatcher.scala 54:31]
    node _T_16 = cvt(io.x_0) @[Dispatcher.scala 54:45]
    node _T_17 = sub(_T_15, _T_16) @[Dispatcher.scala 54:36]
    node _T_18 = tail(_T_17, 1) @[Dispatcher.scala 54:36]
    node x_PE_transl = asSInt(_T_18) @[Dispatcher.scala 54:36]
    node _T_19 = cvt(io.y_PE) @[Dispatcher.scala 55:31]
    node _T_20 = cvt(io.y_0) @[Dispatcher.scala 55:45]
    node _T_21 = sub(_T_19, _T_20) @[Dispatcher.scala 55:36]
    node _T_22 = tail(_T_21, 1) @[Dispatcher.scala 55:36]
    node y_PE_transl = asSInt(_T_22) @[Dispatcher.scala 55:36]
    node _T_23 = bits(x_PE_transl, 0, 0) @[Dispatcher.scala 56:38]
    node x_PE_transl_odd = eq(_T_23, UInt<1>("h1")) @[Dispatcher.scala 56:42]
    node _T_24 = bits(y_PE_transl, 0, 0) @[Dispatcher.scala 57:38]
    node y_PE_transl_odd = eq(_T_24, UInt<1>("h1")) @[Dispatcher.scala 57:42]
    node _T_25 = cvt(io.x_dest) @[Dispatcher.scala 58:35]
    node _T_26 = cvt(io.x_0) @[Dispatcher.scala 58:49]
    node _T_27 = sub(_T_25, _T_26) @[Dispatcher.scala 58:40]
    node _T_28 = tail(_T_27, 1) @[Dispatcher.scala 58:40]
    node x_dest_transl = asSInt(_T_28) @[Dispatcher.scala 58:40]
    node _T_29 = cvt(io.y_dest) @[Dispatcher.scala 59:35]
    node _T_30 = cvt(io.y_0) @[Dispatcher.scala 59:49]
    node _T_31 = sub(_T_29, _T_30) @[Dispatcher.scala 59:40]
    node _T_32 = tail(_T_31, 1) @[Dispatcher.scala 59:40]
    node y_dest_transl = asSInt(_T_32) @[Dispatcher.scala 59:40]
    node _T_33 = gt(io.x_PE, io.x_0) @[Dispatcher.scala 62:18]
    node _T_34 = eq(io.y_PE, io.y_0) @[Dispatcher.scala 62:38]
    node _T_35 = and(_T_33, _T_34) @[Dispatcher.scala 62:27]
    when _T_35 : @[Dispatcher.scala 62:49]
      when x_PE_transl_odd : @[Dispatcher.scala 64:30]
        node _T_36 = add(y_dest_transl, x_PE_transl) @[Dispatcher.scala 65:49]
        node _T_37 = tail(_T_36, 1) @[Dispatcher.scala 65:49]
        node _T_38 = asSInt(_T_37) @[Dispatcher.scala 65:49]
        node _T_39 = leq(x_dest_transl, _T_38) @[Dispatcher.scala 65:32]
        when _T_39 : @[Dispatcher.scala 65:63]
          out_selector <= UInt<3>("h4") @[Dispatcher.scala 67:30]
        else :
          out_selector <= UInt<2>("h2") @[Dispatcher.scala 70:30]
      else :
        node _T_40 = sub(asSInt(UInt<1>("h0")), y_dest_transl) @[Dispatcher.scala 73:35]
        node _T_41 = tail(_T_40, 1) @[Dispatcher.scala 73:35]
        node _T_42 = asSInt(_T_41) @[Dispatcher.scala 73:35]
        node _T_43 = add(_T_42, x_PE_transl) @[Dispatcher.scala 73:50]
        node _T_44 = tail(_T_43, 1) @[Dispatcher.scala 73:50]
        node _T_45 = asSInt(_T_44) @[Dispatcher.scala 73:50]
        node _T_46 = leq(x_dest_transl, _T_45) @[Dispatcher.scala 73:32]
        when _T_46 : @[Dispatcher.scala 73:64]
          out_selector <= UInt<4>("h8") @[Dispatcher.scala 75:30]
        else :
          out_selector <= UInt<2>("h2") @[Dispatcher.scala 78:30]
    node _T_47 = eq(io.x_PE, io.x_0) @[Dispatcher.scala 84:18]
    node _T_48 = gt(io.y_PE, io.y_0) @[Dispatcher.scala 84:40]
    node _T_49 = and(_T_47, _T_48) @[Dispatcher.scala 84:29]
    when _T_49 : @[Dispatcher.scala 84:49]
      when y_PE_transl_odd : @[Dispatcher.scala 86:30]
        node _T_50 = sub(asSInt(UInt<1>("h0")), y_dest_transl) @[Dispatcher.scala 87:35]
        node _T_51 = tail(_T_50, 1) @[Dispatcher.scala 87:35]
        node _T_52 = asSInt(_T_51) @[Dispatcher.scala 87:35]
        node _T_53 = add(_T_52, y_PE_transl) @[Dispatcher.scala 87:50]
        node _T_54 = tail(_T_53, 1) @[Dispatcher.scala 87:50]
        node _T_55 = asSInt(_T_54) @[Dispatcher.scala 87:50]
        node _T_56 = leq(x_dest_transl, _T_55) @[Dispatcher.scala 87:32]
        when _T_56 : @[Dispatcher.scala 87:64]
          out_selector <= UInt<1>("h1") @[Dispatcher.scala 89:30]
        else :
          out_selector <= UInt<3>("h4") @[Dispatcher.scala 92:30]
      else :
        node _T_57 = sub(y_dest_transl, y_PE_transl) @[Dispatcher.scala 95:49]
        node _T_58 = tail(_T_57, 1) @[Dispatcher.scala 95:49]
        node _T_59 = asSInt(_T_58) @[Dispatcher.scala 95:49]
        node _T_60 = geq(x_dest_transl, _T_59) @[Dispatcher.scala 95:32]
        when _T_60 : @[Dispatcher.scala 95:63]
          out_selector <= UInt<2>("h2") @[Dispatcher.scala 97:30]
        else :
          out_selector <= UInt<3>("h4") @[Dispatcher.scala 100:30]
    node _T_61 = lt(io.x_PE, io.x_0) @[Dispatcher.scala 106:18]
    node _T_62 = eq(io.y_PE, io.y_0) @[Dispatcher.scala 106:38]
    node _T_63 = and(_T_61, _T_62) @[Dispatcher.scala 106:27]
    when _T_63 : @[Dispatcher.scala 106:49]
      when x_PE_transl_odd : @[Dispatcher.scala 108:30]
        node _T_64 = add(y_dest_transl, x_PE_transl) @[Dispatcher.scala 109:49]
        node _T_65 = tail(_T_64, 1) @[Dispatcher.scala 109:49]
        node _T_66 = asSInt(_T_65) @[Dispatcher.scala 109:49]
        node _T_67 = geq(x_dest_transl, _T_66) @[Dispatcher.scala 109:32]
        when _T_67 : @[Dispatcher.scala 109:63]
          out_selector <= UInt<4>("h8") @[Dispatcher.scala 111:30]
        else :
          out_selector <= UInt<1>("h1") @[Dispatcher.scala 114:30]
      else :
        node _T_68 = sub(asSInt(UInt<1>("h0")), y_dest_transl) @[Dispatcher.scala 117:35]
        node _T_69 = tail(_T_68, 1) @[Dispatcher.scala 117:35]
        node _T_70 = asSInt(_T_69) @[Dispatcher.scala 117:35]
        node _T_71 = add(_T_70, x_PE_transl) @[Dispatcher.scala 117:50]
        node _T_72 = tail(_T_71, 1) @[Dispatcher.scala 117:50]
        node _T_73 = asSInt(_T_72) @[Dispatcher.scala 117:50]
        node _T_74 = geq(x_dest_transl, _T_73) @[Dispatcher.scala 117:32]
        when _T_74 : @[Dispatcher.scala 117:64]
          out_selector <= UInt<3>("h4") @[Dispatcher.scala 119:30]
        else :
          out_selector <= UInt<1>("h1") @[Dispatcher.scala 122:30]
    node _T_75 = eq(io.x_PE, io.x_0) @[Dispatcher.scala 128:18]
    node _T_76 = lt(io.y_PE, io.y_0) @[Dispatcher.scala 128:40]
    node _T_77 = and(_T_75, _T_76) @[Dispatcher.scala 128:29]
    when _T_77 : @[Dispatcher.scala 128:49]
      when y_PE_transl_odd : @[Dispatcher.scala 130:30]
        node _T_78 = sub(asSInt(UInt<1>("h0")), y_dest_transl) @[Dispatcher.scala 131:35]
        node _T_79 = tail(_T_78, 1) @[Dispatcher.scala 131:35]
        node _T_80 = asSInt(_T_79) @[Dispatcher.scala 131:35]
        node _T_81 = add(_T_80, y_PE_transl) @[Dispatcher.scala 131:50]
        node _T_82 = tail(_T_81, 1) @[Dispatcher.scala 131:50]
        node _T_83 = asSInt(_T_82) @[Dispatcher.scala 131:50]
        node _T_84 = geq(x_dest_transl, _T_83) @[Dispatcher.scala 131:32]
        when _T_84 : @[Dispatcher.scala 131:64]
          out_selector <= UInt<2>("h2") @[Dispatcher.scala 133:30]
        else :
          out_selector <= UInt<4>("h8") @[Dispatcher.scala 136:30]
      else :
        node _T_85 = sub(y_dest_transl, y_PE_transl) @[Dispatcher.scala 139:49]
        node _T_86 = tail(_T_85, 1) @[Dispatcher.scala 139:49]
        node _T_87 = asSInt(_T_86) @[Dispatcher.scala 139:49]
        node _T_88 = leq(x_dest_transl, _T_87) @[Dispatcher.scala 139:32]
        when _T_88 : @[Dispatcher.scala 139:63]
          out_selector <= UInt<1>("h1") @[Dispatcher.scala 141:30]
        else :
          out_selector <= UInt<4>("h8") @[Dispatcher.scala 144:30]
    node _T_89 = head(x_PE_transl, 1) @[Dispatcher.scala 160:40]
    node sign_delta_x = bits(_T_89, 0, 0) @[Dispatcher.scala 160:44]
    node _T_90 = head(y_PE_transl, 1) @[Dispatcher.scala 161:40]
    node sign_delta_y = bits(_T_90, 0, 0) @[Dispatcher.scala 161:44]
    node _T_91 = xor(sign_delta_x, sign_delta_y) @[Dispatcher.scala 163:36]
    node uFactor_x = eq(_T_91, UInt<1>("h0")) @[Dispatcher.scala 163:21]
    node _T_92 = xor(x_PE_transl_odd, y_PE_transl_odd) @[Dispatcher.scala 164:39]
    node oddResult_x = xor(_T_92, uFactor_x) @[Dispatcher.scala 164:57]
    node uFactor_y = xor(sign_delta_x, sign_delta_y) @[Dispatcher.scala 166:34]
    node _T_93 = xor(x_PE_transl_odd, y_PE_transl_odd) @[Dispatcher.scala 167:39]
    node oddResult_y = xor(_T_93, uFactor_y) @[Dispatcher.scala 167:57]
    node _T_94 = neq(io.x_PE, io.x_0) @[Dispatcher.scala 170:18]
    node _T_95 = neq(io.y_PE, io.y_0) @[Dispatcher.scala 170:39]
    node _T_96 = and(_T_94, _T_95) @[Dispatcher.scala 170:28]
    when _T_96 : @[Dispatcher.scala 170:49]
      node _T_97 = eq(sign_delta_x, UInt<1>("h0")) @[Dispatcher.scala 172:29]
      node _T_98 = and(oddResult_x, _T_97) @[Dispatcher.scala 172:26]
      when _T_98 : @[Dispatcher.scala 172:43]
        out_selector <= UInt<2>("h2") @[Dispatcher.scala 174:26]
      else :
        node _T_99 = and(oddResult_x, sign_delta_x) @[Dispatcher.scala 176:32]
        when _T_99 : @[Dispatcher.scala 176:48]
          out_selector <= UInt<1>("h1") @[Dispatcher.scala 178:26]
      node _T_100 = eq(sign_delta_y, UInt<1>("h0")) @[Dispatcher.scala 181:29]
      node _T_101 = and(oddResult_y, _T_100) @[Dispatcher.scala 181:26]
      when _T_101 : @[Dispatcher.scala 181:43]
        out_selector <= UInt<3>("h4") @[Dispatcher.scala 183:26]
      else :
        node _T_102 = and(oddResult_y, sign_delta_y) @[Dispatcher.scala 185:32]
        when _T_102 : @[Dispatcher.scala 185:48]
          out_selector <= UInt<4>("h8") @[Dispatcher.scala 187:26]

