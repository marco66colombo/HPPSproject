circuit MyPriorityMux :
  module MyPriorityMux :
    input clock : Clock
    input reset : UInt<1>
    input io_valid_0 : UInt<1>
    input io_valid_1 : UInt<1>
    input io_valid_2 : UInt<1>
    input io_valid_3 : UInt<1>
    input io_in_bits_0_data : UInt<64>
    input io_in_bits_0_x_0 : UInt<3>
    input io_in_bits_0_y_0 : UInt<3>
    input io_in_bits_0_x_dest : UInt<3>
    input io_in_bits_0_y_dest : UInt<3>
    input io_in_bits_0_pos : UInt<16>
    input io_in_bits_1_data : UInt<64>
    input io_in_bits_1_x_0 : UInt<3>
    input io_in_bits_1_y_0 : UInt<3>
    input io_in_bits_1_x_dest : UInt<3>
    input io_in_bits_1_y_dest : UInt<3>
    input io_in_bits_1_pos : UInt<16>
    input io_in_bits_2_data : UInt<64>
    input io_in_bits_2_x_0 : UInt<3>
    input io_in_bits_2_y_0 : UInt<3>
    input io_in_bits_2_x_dest : UInt<3>
    input io_in_bits_2_y_dest : UInt<3>
    input io_in_bits_2_pos : UInt<16>
    input io_in_bits_3_data : UInt<64>
    input io_in_bits_3_x_0 : UInt<3>
    input io_in_bits_3_y_0 : UInt<3>
    input io_in_bits_3_x_dest : UInt<3>
    input io_in_bits_3_y_dest : UInt<3>
    input io_in_bits_3_pos : UInt<16>
    output io_out_valid : UInt<1>
    output io_out_val_bits_data : UInt<64>
    output io_out_val_bits_x_0 : UInt<3>
    output io_out_val_bits_y_0 : UInt<3>
    output io_out_val_bits_x_dest : UInt<3>
    output io_out_val_bits_y_dest : UInt<3>
    output io_out_val_bits_pos : UInt<16>
    output io_out_val_selected : UInt<4>

    node fourth_bits_data = io_in_bits_3_data @[Utility.scala 47:20 Utility.scala 53:15]
    node myseq2_4_bits_data = pad(UInt<1>("h0"), 64) @[Utility.scala 48:28 Utility.scala 55:28]
    node _T_bits_data = mux(io_valid_3, fourth_bits_data, myseq2_4_bits_data) @[Mux.scala 47:69]
    node fourth_bits_x_0 = io_in_bits_3_x_0 @[Utility.scala 47:20 Utility.scala 53:15]
    node myseq2_4_bits_x_0 = pad(UInt<1>("h0"), 3) @[Utility.scala 48:28 Utility.scala 56:27]
    node _T_bits_x_0 = mux(io_valid_3, fourth_bits_x_0, myseq2_4_bits_x_0) @[Mux.scala 47:69]
    node fourth_bits_y_0 = io_in_bits_3_y_0 @[Utility.scala 47:20 Utility.scala 53:15]
    node myseq2_4_bits_y_0 = pad(UInt<1>("h0"), 3) @[Utility.scala 48:28 Utility.scala 57:27]
    node _T_bits_y_0 = mux(io_valid_3, fourth_bits_y_0, myseq2_4_bits_y_0) @[Mux.scala 47:69]
    node fourth_bits_x_dest = io_in_bits_3_x_dest @[Utility.scala 47:20 Utility.scala 53:15]
    node myseq2_4_bits_x_dest = pad(UInt<1>("h0"), 3) @[Utility.scala 48:28 Utility.scala 58:30]
    node _T_bits_x_dest = mux(io_valid_3, fourth_bits_x_dest, myseq2_4_bits_x_dest) @[Mux.scala 47:69]
    node fourth_bits_y_dest = io_in_bits_3_y_dest @[Utility.scala 47:20 Utility.scala 53:15]
    node myseq2_4_bits_y_dest = pad(UInt<1>("h0"), 3) @[Utility.scala 48:28 Utility.scala 59:30]
    node _T_bits_y_dest = mux(io_valid_3, fourth_bits_y_dest, myseq2_4_bits_y_dest) @[Mux.scala 47:69]
    node fourth_bits_pos = io_in_bits_3_pos @[Utility.scala 47:20 Utility.scala 53:15]
    node myseq2_4_bits_pos = pad(UInt<1>("h0"), 16) @[Utility.scala 48:28 Utility.scala 60:27]
    node _T_bits_pos = mux(io_valid_3, fourth_bits_pos, myseq2_4_bits_pos) @[Mux.scala 47:69]
    node fourth_selected = UInt<4>("h8") @[Utility.scala 47:20 Utility.scala 66:19]
    node myseq2_4_selected = pad(UInt<1>("h0"), 4) @[Utility.scala 48:28 Utility.scala 67:27]
    node _T_selected = mux(io_valid_3, fourth_selected, myseq2_4_selected) @[Mux.scala 47:69]
    node myseq2_2_bits_data = io_in_bits_2_data @[Utility.scala 46:19 Utility.scala 52:14]
    node _T_1_bits_data = mux(io_valid_2, myseq2_2_bits_data, _T_bits_data) @[Mux.scala 47:69]
    node myseq2_2_bits_x_0 = io_in_bits_2_x_0 @[Utility.scala 46:19 Utility.scala 52:14]
    node _T_1_bits_x_0 = mux(io_valid_2, myseq2_2_bits_x_0, _T_bits_x_0) @[Mux.scala 47:69]
    node myseq2_2_bits_y_0 = io_in_bits_2_y_0 @[Utility.scala 46:19 Utility.scala 52:14]
    node _T_1_bits_y_0 = mux(io_valid_2, myseq2_2_bits_y_0, _T_bits_y_0) @[Mux.scala 47:69]
    node myseq2_2_bits_x_dest = io_in_bits_2_x_dest @[Utility.scala 46:19 Utility.scala 52:14]
    node _T_1_bits_x_dest = mux(io_valid_2, myseq2_2_bits_x_dest, _T_bits_x_dest) @[Mux.scala 47:69]
    node myseq2_2_bits_y_dest = io_in_bits_2_y_dest @[Utility.scala 46:19 Utility.scala 52:14]
    node _T_1_bits_y_dest = mux(io_valid_2, myseq2_2_bits_y_dest, _T_bits_y_dest) @[Mux.scala 47:69]
    node myseq2_2_bits_pos = io_in_bits_2_pos @[Utility.scala 46:19 Utility.scala 52:14]
    node _T_1_bits_pos = mux(io_valid_2, myseq2_2_bits_pos, _T_bits_pos) @[Mux.scala 47:69]
    node myseq2_2_selected = pad(UInt<3>("h4"), 4) @[Utility.scala 46:19 Utility.scala 65:18]
    node _T_1_selected = mux(io_valid_2, myseq2_2_selected, _T_selected) @[Mux.scala 47:69]
    node myseq2_1_bits_data = io_in_bits_1_data @[Utility.scala 45:20 Utility.scala 51:15]
    node _T_2_bits_data = mux(io_valid_1, myseq2_1_bits_data, _T_1_bits_data) @[Mux.scala 47:69]
    node myseq2_1_bits_x_0 = io_in_bits_1_x_0 @[Utility.scala 45:20 Utility.scala 51:15]
    node _T_2_bits_x_0 = mux(io_valid_1, myseq2_1_bits_x_0, _T_1_bits_x_0) @[Mux.scala 47:69]
    node myseq2_1_bits_y_0 = io_in_bits_1_y_0 @[Utility.scala 45:20 Utility.scala 51:15]
    node _T_2_bits_y_0 = mux(io_valid_1, myseq2_1_bits_y_0, _T_1_bits_y_0) @[Mux.scala 47:69]
    node myseq2_1_bits_x_dest = io_in_bits_1_x_dest @[Utility.scala 45:20 Utility.scala 51:15]
    node _T_2_bits_x_dest = mux(io_valid_1, myseq2_1_bits_x_dest, _T_1_bits_x_dest) @[Mux.scala 47:69]
    node myseq2_1_bits_y_dest = io_in_bits_1_y_dest @[Utility.scala 45:20 Utility.scala 51:15]
    node _T_2_bits_y_dest = mux(io_valid_1, myseq2_1_bits_y_dest, _T_1_bits_y_dest) @[Mux.scala 47:69]
    node myseq2_1_bits_pos = io_in_bits_1_pos @[Utility.scala 45:20 Utility.scala 51:15]
    node _T_2_bits_pos = mux(io_valid_1, myseq2_1_bits_pos, _T_1_bits_pos) @[Mux.scala 47:69]
    node myseq2_1_selected = pad(UInt<2>("h2"), 4) @[Utility.scala 45:20 Utility.scala 64:19]
    node _T_2_selected = mux(io_valid_1, myseq2_1_selected, _T_1_selected) @[Mux.scala 47:69]
    node first_bits_data = io_in_bits_0_data @[Utility.scala 44:19 Utility.scala 50:14]
    node mux1_bits_data = mux(io_valid_0, first_bits_data, _T_2_bits_data) @[Mux.scala 47:69]
    node first_bits_x_0 = io_in_bits_0_x_0 @[Utility.scala 44:19 Utility.scala 50:14]
    node mux1_bits_x_0 = mux(io_valid_0, first_bits_x_0, _T_2_bits_x_0) @[Mux.scala 47:69]
    node first_bits_y_0 = io_in_bits_0_y_0 @[Utility.scala 44:19 Utility.scala 50:14]
    node mux1_bits_y_0 = mux(io_valid_0, first_bits_y_0, _T_2_bits_y_0) @[Mux.scala 47:69]
    node first_bits_x_dest = io_in_bits_0_x_dest @[Utility.scala 44:19 Utility.scala 50:14]
    node mux1_bits_x_dest = mux(io_valid_0, first_bits_x_dest, _T_2_bits_x_dest) @[Mux.scala 47:69]
    node first_bits_y_dest = io_in_bits_0_y_dest @[Utility.scala 44:19 Utility.scala 50:14]
    node mux1_bits_y_dest = mux(io_valid_0, first_bits_y_dest, _T_2_bits_y_dest) @[Mux.scala 47:69]
    node first_bits_pos = io_in_bits_0_pos @[Utility.scala 44:19 Utility.scala 50:14]
    node mux1_bits_pos = mux(io_valid_0, first_bits_pos, _T_2_bits_pos) @[Mux.scala 47:69]
    node first_selected = pad(UInt<1>("h1"), 4) @[Utility.scala 44:19 Utility.scala 63:18]
    node mux1_selected = mux(io_valid_0, first_selected, _T_2_selected) @[Mux.scala 47:69]
    node _T_3 = eq(io_valid_0, UInt<1>("h0")) @[Utility.scala 79:18]
    node _T_4 = eq(io_valid_1, UInt<1>("h0")) @[Utility.scala 79:34]
    node _T_5 = and(_T_3, _T_4) @[Utility.scala 79:31]
    node _T_6 = eq(io_valid_2, UInt<1>("h0")) @[Utility.scala 79:50]
    node _T_7 = and(_T_5, _T_6) @[Utility.scala 79:47]
    node _T_8 = eq(io_valid_3, UInt<1>("h0")) @[Utility.scala 79:66]
    node no_valid = and(_T_7, _T_8) @[Utility.scala 79:63]
    node _T_9 = mux(no_valid, UInt<1>("h0"), UInt<1>("h1")) @[Utility.scala 80:22]
    io_out_valid <= _T_9 @[Utility.scala 80:16]
    io_out_val_bits_data <= mux1_bits_data @[Utility.scala 77:14]
    io_out_val_bits_x_0 <= mux1_bits_x_0 @[Utility.scala 77:14]
    io_out_val_bits_y_0 <= mux1_bits_y_0 @[Utility.scala 77:14]
    io_out_val_bits_x_dest <= mux1_bits_x_dest @[Utility.scala 77:14]
    io_out_val_bits_y_dest <= mux1_bits_y_dest @[Utility.scala 77:14]
    io_out_val_bits_pos <= mux1_bits_pos @[Utility.scala 77:14]
    io_out_val_selected <= mux1_selected @[Utility.scala 77:14]
