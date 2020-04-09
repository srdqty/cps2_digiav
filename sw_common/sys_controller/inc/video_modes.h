//
// Copyright (C) 2020  Markus Hiienkari <mhiienka@niksula.hut.fi>
//
// This file is part of CPS2 Digital AV Interface project.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//

#ifndef VIDEO_MODES_H_
#define VIDEO_MODES_H_

#include <stdint.h>
#include "si5351.h"
#include "sysconfig.h"

typedef enum tagHDMI_Video_Type {
    HDMI_Unknown = 0 ,
    HDMI_640x480p60 = 1 ,
    HDMI_480p60,
    HDMI_480p60_16x9,
    HDMI_720p60,
    HDMI_1080i60,
    HDMI_480i60,
    HDMI_480i60_16x9,
    HDMI_240p60,
    HDMI_1080p60 = 16,
    HDMI_576p50,
    HDMI_576p50_16x9,
    HDMI_720p50 = 19,
    HDMI_1080i50,
    HDMI_576i50,
    HDMI_576i50_16x9,
    HDMI_288p50,
    HDMI_1080p50 = 31,
    /*HDMI_1080p24,
    HDMI_1080p25,
    HDMI_1080p30,
    HDMI_1080i120 = 46,*/
} HDMI_Video_Type ;

typedef enum {
    TX_1X   = 0,
    TX_2X   = 1,
    TX_4X   = 2
} HDMI_pixelrep_t;

typedef enum {
    CRTMODE_240p   = 0,
    STDMODE_240p   = 1,
    CRTMODE_480p   = 2,
    STDMODE_480p   = 3,
    STDMODE_720p   = 5,
    STDMODE_960p   = 6,
    STDMODE_1080p  = 8,
    STDMODE_1200p  = 9,
    STDMODE_1440p  = 10
} mode_idx_t;

typedef enum {
    ADMODE_240p_CRT = 0,
    ADMODE_480p_CRT = 1,
    ADMODE_720p     = 2,
    ADMODE_1080p_4X = 3,
    ADMODE_1080p_5X = 4,
    ADMODE_1200p    = 5,
    ADMODE_1440p    = 6,
    ADMODE_LAST     = 6
} ad_mode_id_t;

typedef struct {
    uint16_t h_active;
    uint16_t v_active;
    uint16_t h_total;
    uint8_t  h_total_adj:5;
    uint16_t v_total:11;
    uint16_t h_backporch:9;
    uint16_t v_backporch:9;
    uint16_t h_synclen:9;
    uint8_t v_synclen:5;
} __attribute__((packed)) sync_timings_t;

typedef struct {
    char name[10];
    HDMI_Video_Type vic:8;
    sync_timings_t timings;
    HDMI_pixelrep_t tx_pixelrep:2;
    HDMI_pixelrep_t hdmitx_pixr_ifr:2;
    // for generated target mode
    uint8_t si_pclk_mult:4;
    si5351_ms_config_t si_ms_conf;
} mode_data_t;

typedef struct {
    ad_mode_id_t id;
    const sync_timings_t *timings_i;
    uint8_t x_rpt;
    uint8_t y_rpt;
    int16_t x_offset_i;
    int16_t y_offset_i;
    si5351_ms_config_t si_ms_conf;
} ad_mode_data_t;

typedef struct {
    uint8_t x_rpt;
    uint8_t y_rpt;
    uint8_t x_skip;
    int16_t x_offset;
    int16_t y_offset;
    uint16_t x_size;
    uint16_t y_size;
    uint16_t framesync_line;
    uint8_t x_start_lb;
    int8_t linebuf_startline;
} vm_mult_config_t;

typedef struct {
    uint16_t h_active;
    uint16_t v_active;
    uint16_t h_total;
    uint16_t v_total;
} input_mode_t;


void set_default_vm_table();

void step_ad_mode(uint8_t next);

uint32_t estimate_dotclk(mode_data_t *vm_in, uint32_t h_hz);

int get_output_mode(input_mode_t *im, ad_mode_id_t ad_mode_id, vm_mult_config_t *vm_conf, mode_data_t *vm_in, mode_data_t *vm_out);

#endif /* VIDEO_MODES_H_ */