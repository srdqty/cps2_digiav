// megafunction wizard: %FIR II v17.1%
// GENERATION: XML
// fir_2ch_audio.v

// Generated using ACDS version 17.1 590

`timescale 1 ps / 1 ps
module fir_2ch_audio (
		input  wire        clk,                //                     clk.clk
		input  wire        reset_n,            //                     rst.reset_n
		input  wire [15:0] ast_sink_data,      //   avalon_streaming_sink.data
		input  wire        ast_sink_valid,     //                        .valid
		input  wire [1:0]  ast_sink_error,     //                        .error
		input  wire        ast_sink_sop,       //                        .startofpacket
		input  wire        ast_sink_eop,       //                        .endofpacket
		output wire [19:0] ast_source_data,    // avalon_streaming_source.data
		output wire        ast_source_valid,   //                        .valid
		output wire [1:0]  ast_source_error,   //                        .error
		output wire        ast_source_sop,     //                        .startofpacket
		output wire        ast_source_eop,     //                        .endofpacket
		output wire [0:0]  ast_source_channel  //                        .channel
	);

	fir_2ch_audio_0002 fir_2ch_audio_inst (
		.clk                (clk),                //                     clk.clk
		.reset_n            (reset_n),            //                     rst.reset_n
		.ast_sink_data      (ast_sink_data),      //   avalon_streaming_sink.data
		.ast_sink_valid     (ast_sink_valid),     //                        .valid
		.ast_sink_error     (ast_sink_error),     //                        .error
		.ast_sink_sop       (ast_sink_sop),       //                        .startofpacket
		.ast_sink_eop       (ast_sink_eop),       //                        .endofpacket
		.ast_source_data    (ast_source_data),    // avalon_streaming_source.data
		.ast_source_valid   (ast_source_valid),   //                        .valid
		.ast_source_error   (ast_source_error),   //                        .error
		.ast_source_sop     (ast_source_sop),     //                        .startofpacket
		.ast_source_eop     (ast_source_eop),     //                        .endofpacket
		.ast_source_channel (ast_source_channel)  //                        .channel
	);

endmodule
// Retrieval info: <?xml version="1.0"?>
//<!--
//	Generated by Altera MegaWizard Launcher Utility version 1.0
//	************************************************************
//	THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//	************************************************************
//	Copyright (C) 1991-2019 Altera Corporation
//	Any megafunction design, and related net list (encrypted or decrypted),
//	support information, device programming or simulation file, and any other
//	associated documentation or information provided by Altera or a partner
//	under Altera's Megafunction Partnership Program may be used only to
//	program PLD devices (but not masked PLD devices) from Altera.  Any other
//	use of such megafunction design, net list, support information, device
//	programming or simulation file, or any other related documentation or
//	information is prohibited for any other purpose, including, but not
//	limited to modification, reverse engineering, de-compiling, or use with
//	any other silicon devices, unless such use is explicitly licensed under
//	a separate agreement with Altera or a megafunction partner.  Title to
//	the intellectual property, including patents, copyrights, trademarks,
//	trade secrets, or maskworks, embodied in any such megafunction design,
//	net list, support information, device programming or simulation file, or
//	any other related documentation or information provided by Altera or a
//	megafunction partner, remains with Altera, the megafunction partner, or
//	their respective licensors.  No other licenses, including any licenses
//	needed under any third party's intellectual property, are provided herein.
//-->
// Retrieval info: <instance entity-name="altera_fir_compiler_ii" version="17.1" >
// Retrieval info: 	<generic name="filterType" value="decim" />
// Retrieval info: 	<generic name="interpFactor" value="1" />
// Retrieval info: 	<generic name="decimFactor" value="16" />
// Retrieval info: 	<generic name="symmetryMode" value="sym" />
// Retrieval info: 	<generic name="L_bandsFilter" value="1" />
// Retrieval info: 	<generic name="inputChannelNum" value="2" />
// Retrieval info: 	<generic name="clockRate" value="24.576" />
// Retrieval info: 	<generic name="clockSlack" value="0" />
// Retrieval info: 	<generic name="inputRate" value="1.536" />
// Retrieval info: 	<generic name="coeffReload" value="false" />
// Retrieval info: 	<generic name="baseAddress" value="0" />
// Retrieval info: 	<generic name="readWriteMode" value="read_write" />
// Retrieval info: 	<generic name="backPressure" value="false" />
// Retrieval info: 	<generic name="deviceFamily" value="Cyclone 10 LP" />
// Retrieval info: 	<generic name="speedGrade" value="fast" />
// Retrieval info: 	<generic name="delayRAMBlockThreshold" value="20" />
// Retrieval info: 	<generic name="dualMemDistRAMThreshold" value="1280" />
// Retrieval info: 	<generic name="mRAMThreshold" value="1000000" />
// Retrieval info: 	<generic name="hardMultiplierThreshold" value="-1" />
// Retrieval info: 	<generic name="reconfigurable" value="false" />
// Retrieval info: 	<generic name="num_modes" value="2" />
// Retrieval info: 	<generic name="reconfigurable_list" value="0" />
// Retrieval info: 	<generic name="MODE_STRING" value="None Set" />
// Retrieval info: 	<generic name="channelModes" value="0,1,2,3" />
// Retrieval info: 	<generic name="inputType" value="int" />
// Retrieval info: 	<generic name="inputBitWidth" value="16" />
// Retrieval info: 	<generic name="inputFracBitWidth" value="0" />
// Retrieval info: 	<generic name="coeffSetRealValue" value="0.0087890625,0.021484375,0.0078125,-0.0390625,-0.0625,0.017578125,0.19921875,0.357421875,0.357421875,0.19921875,0.017578125,-0.0625,-0.0390625,0.0078125,0.021484375,0.0087890625" />
// Retrieval info: 	<generic name="coeffSetRealValueImag" value="0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, -0.0530093, -0.04498, 0.0, 0.0749693, 0.159034, 0.224907, 0.249809, 0.224907, 0.159034, 0.0749693, 0.0, -0.04498, -0.0530093, -0.0321283, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0" />
// Retrieval info: 	<generic name="coeffScaling" value="auto" />
// Retrieval info: 	<generic name="coeffType" value="int" />
// Retrieval info: 	<generic name="coeffBitWidth" value="10" />
// Retrieval info: 	<generic name="coeffFracBitWidth" value="0" />
// Retrieval info: 	<generic name="coeffComplex" value="false" />
// Retrieval info: 	<generic name="karatsuba" value="false" />
// Retrieval info: 	<generic name="outType" value="int" />
// Retrieval info: 	<generic name="outMSBRound" value="sat" />
// Retrieval info: 	<generic name="outMsbBitRem" value="10" />
// Retrieval info: 	<generic name="outLSBRound" value="trunc" />
// Retrieval info: 	<generic name="outLsbBitRem" value="0" />
// Retrieval info: 	<generic name="bankCount" value="1" />
// Retrieval info: 	<generic name="bankDisplay" value="0" />
// Retrieval info: </instance>
// IPFS_FILES : fir_2ch_audio.vo
// RELATED_FILES: fir_2ch_audio.v, dspba_library_package.vhd, dspba_library.vhd, auk_dspip_math_pkg_hpfir.vhd, auk_dspip_lib_pkg_hpfir.vhd, auk_dspip_avalon_streaming_controller_hpfir.vhd, auk_dspip_avalon_streaming_sink_hpfir.vhd, auk_dspip_avalon_streaming_source_hpfir.vhd, auk_dspip_roundsat_hpfir.vhd, altera_avalon_sc_fifo.v, fir_2ch_audio_0002_rtl_core.vhd, fir_2ch_audio_0002_ast.vhd, fir_2ch_audio_0002.vhd
