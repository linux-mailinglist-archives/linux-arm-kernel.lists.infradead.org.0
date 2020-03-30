Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8E2198084
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 18:09:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVqGQ9zztItvG0yj51qVhFrmA141h+3fjQFOeinwWnw=; b=NMDw/1Velb0mIW
	PtCiXW2NKp/Y8Z8N5F8+OOcmzWKAU7YgXk4t5RsyXXeX0iz0uGTeI/Hy9hUbYDpJpxxqugne7XJHu
	qQPHmM+NCZZXQqj27kCEuRmz4ASTv6t+YRbKLP+QLy0RqIywwx+2g2O5PMSfsfqnc6Wlao7Eu395F
	mT35GfUWtJqSnfcg+j2a7572HPrfe5nAB6q1uQeBVk3QUIOZrt+OQG4XoWIaAYRflMaAGHd6MqxM1
	9hd3GIFov5vbSr2SNNmGhpfLljhE6feGJvZrCqDHk487BiuYCwlFR9GcQO4zqKeeafFxn3BwFwHtb
	iG8hqJl2tb7Q1PX0mAWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIwyN-0002iA-VU; Mon, 30 Mar 2020 16:09:12 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIwyE-0002hd-Qp; Mon, 30 Mar 2020 16:09:04 +0000
Received: by mail-ed1-x541.google.com with SMTP id w26so21328585edu.7;
 Mon, 30 Mar 2020 09:09:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LYA8MGbQRaDF//+MULXJ63oqL5dh/ssnMSFqgrb33VM=;
 b=Bw0A54BW2bD8gL8RS2N7xDi7BnVkb+FieTzIupX0gvwhckxZ4ZsSagqOokQJj756k9
 QkpTOYQ5IBo3N1D/yxYrTIFcejFQB2P3dvY21DnLJ9hp/PUGWIxU3RVz/PqzCmXhYPNF
 SyKrZr+J4gyGsuIh4FQnWFcRIWIL9DuVPGcMAUEjO1Wobh/70bucomrQsNG3KX2pQFlW
 URCDFN21DXUV/4UaskuULcR6PKDWCQeWkGQhKxEIB1PCNsO1ST2Sw5LQ0wtJ21sSpM+9
 mL7Nme05WBieDQAadSS2v4EdRwDMI2ex9zBzEc2qt5ZGYQpO3pVhv5l107IvMUgGInYc
 2hqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LYA8MGbQRaDF//+MULXJ63oqL5dh/ssnMSFqgrb33VM=;
 b=N/52I4n2avEF+BZYFYaUg6UbMb0kRz6s5412Spc0avLDRgUjzkFv2vBew/qjcv88m9
 3ujk3aphbMNa/29rHs4tMSnoCt6MImE0lRwnxNC6irRwtN8WH5ReAlYyTKC6kJ6zRZQP
 /1DBNfWAFZVBHb8sFlzSHLE8O9N80K8vDlp4yMRgCiNO1x06hXwWz1O75PMBACa9SdFP
 DfZrjvX061hTytSHCnmvyy41Gxjxg/21tCWYfI6WVoMM2+Hb+IsXE96SfpBfURngBi9y
 6yQzTH1NGHvQ5GJFa3y5OTK8w2KhSzTEql56e9MbKX+tP4XNubRo7pJm+olZ+DB/lwn1
 uXMA==
X-Gm-Message-State: ANhLgQ2lm/WLMW+v+h+yVyHw5dO8SGQaYYI5sHi2qB8Pg8R/lyA+zj5K
 kNEndVnhTHpGt1EhAOTml3UgJD+BVH5/uslavsw=
X-Google-Smtp-Source: ADFU+vtu9TORd6ctLOxjvTdQqWnnvg71MRk7K3hbBAfc24ohHk/+yziigJcjYIHMidos9JNQxx9+KcgzaZbFhH2QQ9w=
X-Received: by 2002:a50:fa88:: with SMTP id w8mr11452920edr.183.1585584541285; 
 Mon, 30 Mar 2020 09:09:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200330113542.181752-1-adrian.ratiu@collabora.com>
 <20200330113542.181752-4-adrian.ratiu@collabora.com>
In-Reply-To: <20200330113542.181752-4-adrian.ratiu@collabora.com>
From: adrian61 <pop.adrian61@gmail.com>
Date: Mon, 30 Mar 2020 19:08:49 +0300
Message-ID: <CAP-HsdSXPBMG5vJwtpXBuZy9zp8HA+UvYPR5hyvdyjZfz-1dww@mail.gmail.com>
Subject: Re: [PATCH v5 3/5] drm: bridge: synopsis: add dsi v1.01 support
To: Adrian Ratiu <adrian.ratiu@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_090902_892978_BB3DBC38 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pop.adrian61[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [pop.adrian61[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 linux-imx@nxp.com, linux-rockchip@lists.infradead.org, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Adrian,

Here i get a compile error:

On Mon, Mar 30, 2020 at 2:36 PM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
>
> The Synopsis MIPI DSI v1.01 host controller is quite widely used
> on platforms like i.mx6 and is not very different from the other
> versions like the 1.31/1.30 used on rockchip/stm. The protocols
> appear to be the same, only the register layout is different and
> the newer versions have new features symbolized by new registers
> so adding support for it is just a matter of defining the new
> layout and adding a couple of dsi version checks.
>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> ---
> New in v5.
> ---
>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 125 +++++++++++++++++-
>  1 file changed, 119 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> index 5b78ff925af0..fb9dbc4fd0f5 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> @@ -32,6 +32,7 @@
>
>  #define HWVER_131                      0x31333100      /* IP version 1.31 */
>  #define HWVER_130                      0x31333000      /* IP version 1.30 */
> +#define HWVER_101                      0x31303000      /* IP version 1.01 */
>
>  #define DSI_VERSION                    0x00
>  #define VERSION                                GENMASK(31, 8)
> @@ -100,6 +101,25 @@
>  #define DSI_EDPI_CMD_SIZE              0x64
>
>  #define DSI_CMD_MODE_CFG               0x68
> +
> +#define DSI_DPI_CFG                    0x0c
> +#define DSI_TMR_LINE_CFG               0x28
> +#define DSI_VTIMING_CFG                        0x2c
> +#define DSI_PHY_TMR_CFG_V101           0x30
> +#define DSI_PHY_IF_CFG_V101            0x58
> +#define DSI_PHY_IF_CTRL                        0x5c
> +#define DSI_PHY_RSTZ_V101              0x54
> +#define DSI_PHY_STATUS_V101            0x60
> +#define DSI_PHY_TST_CTRL0_V101         0x64
> +#define DSI_GEN_HDR_V101               0x34
> +#define DSI_GEN_PLD_DATA_V101          0x38
> +#define DSI_CMD_MODE_CFG_V101          0x24
> +#define DSI_CMD_PKT_STATUS_V101                0x3c
> +#define DSI_VID_PKT_CFG                        0x20
> +#define DSI_VID_MODE_CFG_V101          0x1c
> +#define DSI_TO_CNT_CFG_V101            0x40
> +#define DSI_PCKHDL_CFG_V101            0x18
> +
>  #define MAX_RD_PKT_SIZE_LP             BIT(24)
>  #define DCS_LW_TX_LP                   BIT(19)
>  #define DCS_SR_0P_TX_LP                        BIT(18)
> @@ -127,6 +147,33 @@
>                                          GEN_SW_1P_TX_LP | \
>                                          GEN_SW_0P_TX_LP)
>
> +#define EN_TEAR_FX_V101                        BIT(14)
> +#define DCS_LW_TX_LP_V101              BIT(12)
> +#define GEN_LW_TX_LP_V101              BIT(11)
> +#define MAX_RD_PKT_SIZE_LP_V101                BIT(10)
> +#define DCS_SW_2P_TX_LP_V101           BIT(9)
> +#define DCS_SW_1P_TX_LP_V101           BIT(8)
> +#define DCS_SW_0P_TX_LP_V101           BIT(7)
> +#define GEN_SR_2P_TX_LP_V101           BIT(6)
> +#define GEN_SR_1P_TX_LP_V101           BIT(5)
> +#define GEN_SR_0P_TX_LP_V101           BIT(4)
> +#define GEN_SW_2P_TX_LP_V101           BIT(3)
> +#define GEN_SW_1P_TX_LP_V101           BIT(2)
> +#define GEN_SW_0P_TX_LP_V101           BIT(1)
> +
> +#define CMD_MODE_ALL_LP_V101           (DCS_LW_TX_LP_V101 | \
> +                                        GEN_LW_TX_LP_V101 | \
> +                                        MAX_RD_PKT_SIZE_LP_V101 | \
> +                                        DCS_SW_2P_TX_LP_V101 | \
> +                                        DCS_SW_1P_TX_LP_V101 | \
> +                                        DCS_SW_0P_TX_LP_V101 | \
> +                                        GEN_SR_2P_TX_LP_V101 | \
> +                                        GEN_SR_1P_TX_LP_V101 | \
> +                                        GEN_SR_0P_TX_LP_V101 | \
> +                                        GEN_SW_2P_TX_LP_V101 | \
> +                                        GEN_SW_1P_TX_LP_V101 | \
> +                                        GEN_SW_0P_TX_LP_V101)
> +
>  #define DSI_GEN_HDR                    0x6c
>  #define DSI_GEN_PLD_DATA               0x70
>
> @@ -165,6 +212,11 @@
>  #define DSI_INT_MSK0                   0xc4
>  #define DSI_INT_MSK1                   0xc8
>
> +#define DSI_ERROR_ST0_V101             0x44
> +#define DSI_ERROR_ST1_V101             0x48
> +#define DSI_ERROR_MSK0_V101            0x4c
> +#define DSI_ERROR_MSK1_V101            0x50
> +
>  #define DSI_PHY_TMR_RD_CFG             0xf4
>
>  #define PHY_STATUS_TIMEOUT_US          10000
> @@ -359,6 +411,49 @@ static const struct dw_mipi_dsi_variant dw_mipi_dsi_v130_v131_layout = {
>         .cfg_gen_payload =              REG_FIELD(DSI_GEN_PLD_DATA, 0, 31),
>  };
>
> +static const struct dw_mipi_dsi_variant dw_mipi_dsi_v101_layout = {
> +       .cfg_dpi_vid =                  REG_FIELD(DSI_DPI_CFG, 0, 1),
> +       .cfg_dpi_color_coding =         REG_FIELD(DSI_DPI_CFG, 2, 4),
> +       .cfg_dpi_18loosely_en =         REG_FIELD(DSI_DPI_CFG, 10, 10),
> +       .cfg_dpi_vsync_active_low =     REG_FIELD(DSI_DPI_CFG, 6, 6),
> +       .cfg_dpi_hsync_active_low =     REG_FIELD(DSI_DPI_CFG, 7, 7),
> +       .cfg_cmd_mode_en =              REG_FIELD(DSI_CMD_MODE_CFG_V101, 0, 0),
> +       .cfg_cmd_mode_all_lp_en =       REG_FIELD(DSI_CMD_MODE_CFG_V101, 1, 12),
> +       .cfg_cmd_mode_ack_rqst_en =     REG_FIELD(DSI_CMD_MODE_CFG_V101, 13, 13),
> +       .cfg_cmd_pkt_status =           REG_FIELD(DSI_CMD_PKT_STATUS_V101, 0, 14),
> +       .cfg_vid_mode_en =              REG_FIELD(DSI_VID_MODE_CFG_V101, 0, 0),
> +       .cfg_vid_mode_type =            REG_FIELD(DSI_VID_MODE_CFG_V101, 1, 2),
> +       .cfg_vid_mode_low_power =       REG_FIELD(DSI_VID_MODE_CFG_V101, 3, 8),
> +       .cfg_vid_pkt_size =             REG_FIELD(DSI_VID_PKT_CFG, 0, 10),
> +       .cfg_vid_hsa_time =             REG_FIELD(DSI_TMR_LINE_CFG, 0, 8),
> +       .cfg_vid_hbp_time =             REG_FIELD(DSI_TMR_LINE_CFG, 9, 17),
> +       .cfg_vid_hline_time =           REG_FIELD(DSI_TMR_LINE_CFG, 18, 31),
> +       .cfg_vid_vsa_time =             REG_FIELD(DSI_VTIMING_CFG, 0, 3),
> +       .cfg_vid_vbp_time =             REG_FIELD(DSI_VTIMING_CFG, 4, 9),
> +       .cfg_vid_vfp_time =             REG_FIELD(DSI_VTIMING_CFG, 10, 15),
> +       .cfg_vid_vactive_time =         REG_FIELD(DSI_VTIMING_CFG, 16, 26),
> +       .cfg_phy_txrequestclkhs =       REG_FIELD(DSI_PHY_IF_CTRL, 0, 0),
> +       .cfg_phy_bta_time =             REG_FIELD(DSI_PHY_TMR_CFG_V101, 0, 11),
> +       .cfg_phy_lp2hs_time =           REG_FIELD(DSI_PHY_TMR_CFG_V101, 12, 19),
> +       .cfg_phy_hs2lp_time =           REG_FIELD(DSI_PHY_TMR_CFG_V101, 20, 27),
> +       .cfg_phy_testclr =              REG_FIELD(DSI_PHY_TST_CTRL0_V101, 0, 0),
> +       .cfg_phy_unshutdownz =          REG_FIELD(DSI_PHY_RSTZ_V101, 0, 0),
> +       .cfg_phy_unrstz =               REG_FIELD(DSI_PHY_RSTZ_V101, 1, 1),
> +       .cfg_phy_enableclk =            REG_FIELD(DSI_PHY_RSTZ_V101, 2, 2),
> +       .cfg_phy_nlanes =               REG_FIELD(DSI_PHY_IF_CFG_V101, 0, 1),
> +       .cfg_phy_stop_wait_time =       REG_FIELD(DSI_PHY_IF_CFG_V101, 2, 9),
> +       .cfg_phy_status =               REG_FIELD(DSI_PHY_STATUS_V101, 0, 0),
> +       .cfg_pckhdl_cfg =               REG_FIELD(DSI_PCKHDL_CFG_V101, 0, 4),
> +       .cfg_hstx_timeout_counter =     REG_FIELD(DSI_TO_CNT_CFG_V101, 0, 15),
> +       .cfg_lprx_timeout_counter =     REG_FIELD(DSI_TO_CNT_CFG_V101, 16, 31),
> +       .cfg_int_stat0 =                REG_FIELD(DSI_ERROR_ST0_V101, 0, 20),
> +       .cfg_int_stat1 =                REG_FIELD(DSI_ERROR_ST1_V101, 0, 17),
> +       .cfg_int_mask0 =                REG_FIELD(DSI_ERROR_MSK0_V101, 0, 20),
> +       .cfg_int_mask1 =                REG_FIELD(DSI_ERROR_MSK1_V101, 0, 17),
> +       .cfg_gen_hdr =                  REG_FIELD(DSI_GEN_HDR_V101, 0, 31),
> +       .cfg_gen_payload =              REG_FIELD(DSI_GEN_PLD_DATA_V101, 0, 31),
> +};
> +
>  /*
>   * Check if either a link to a master or slave is present
>   */
> @@ -466,6 +561,9 @@ static void dw_mipi_message_config(struct dw_mipi_dsi *dsi,
>         case HWVER_131:
>                 cmd_mode_lp = CMD_MODE_ALL_LP;
>                 break;
> +       case HWVER_101:
> +               cmd_mode_lp = CMD_MODE_ALL_LP_V101;
> +               break;
>         }
>
>         if (msg->flags & MIPI_DSI_MSG_REQ_ACK)
> @@ -644,7 +742,7 @@ static void dw_mipi_dsi_video_mode_config(struct dw_mipi_dsi *dsi)
>                                    VID_MODE_TYPE_NON_BURST_SYNC_EVENTS);
>
>  #ifdef CONFIG_DEBUG_FS
> -       if (dsi->vpg) {
> +       if (dsi->hw_version > HWVER_101 && dsi->vpg) {
>                 regmap_field_write(dsi->regs, dsi->field_vid_mode_vpg_en, 1);
>                 regmap_field_write(dsi->regs, dsi->field_vid_mode_vpg_horiz,
>                                    dsi->vpg_horizontal ? 1 : 0);

"regmap_field_write" passed 3 arguments, but takes just 2.


> @@ -662,9 +760,15 @@ static void dw_mipi_dsi_set_mode(struct dw_mipi_dsi *dsi,
>
>                 dw_mipi_dsi_video_mode_config(dsi);
>
> +               if (dsi->hw_version == HWVER_101)
> +                       regmap_field_write(dsi->field_vid_mode_en, 1);
> +
>                 regmap_field_write(dsi->field_phy_txrequestclkhs, 1);
>         } else {
>                 regmap_field_write(dsi->field_cmd_mode_en, 1);
> +
> +               if (dsi->hw_version == HWVER_101)
> +                       regmap_field_write(dsi->field_vid_mode_en, 0);
>         }
>
>         regmap_write(dsi->regs, DSI_PWR_UP, POWERUP);
> @@ -857,9 +961,13 @@ static void dw_mipi_dsi_dphy_timing_config(struct dw_mipi_dsi *dsi)
>         regmap_field_write(dsi->field_phy_lp2hs_time, timing.data_lp2hs);
>         regmap_field_write(dsi->field_phy_hs2lp_time, timing.data_hs2lp);
>
> -       regmap_field_write(dsi->field_phy_max_rd_time, 10000);
> -       regmap_field_write(dsi->field_phy_clkhs2lp_time, timing.clk_hs2lp);
> -       regmap_field_write(dsi->field_phy_clklp2hs_time, timing.clk_lp2hs);
> +       if (dsi->hw_version > HWVER_101) {
> +               regmap_field_write(dsi->field_phy_max_rd_time, 10000);
> +               regmap_field_write(dsi->field_phy_clkhs2lp_time,
> +                                  timing.clk_hs2lp);
> +               regmap_field_write(dsi->field_phy_clklp2hs_time,
> +                                  timing.clk_lp2hs);
> +       }
>  }
>
>  static void dw_mipi_dsi_dphy_interface_config(struct dw_mipi_dsi *dsi)
> @@ -880,7 +988,8 @@ static void dw_mipi_dsi_dphy_init(struct dw_mipi_dsi *dsi)
>         regmap_field_write(dsi->field_phy_unrstz, 0);
>         regmap_field_write(dsi->field_phy_unshutdownz, 0);
>
> -       regmap_field_write(dsi->field_phy_forcepll, 0);
> +       if (dsi->hw_version > HWVER_101)
> +               regmap_field_write(dsi->field_phy_forcepll, 0);
>
>         regmap_field_write(dsi->field_phy_testclr, 0);
>         regmap_field_write(dsi->field_phy_testclr, 1);
> @@ -896,7 +1005,8 @@ static void dw_mipi_dsi_dphy_enable(struct dw_mipi_dsi *dsi)
>         regmap_field_write(dsi->field_phy_unrstz, 1);
>         regmap_field_write(dsi->field_phy_unshutdownz, 1);
>
> -       regmap_field_write(dsi->field_phy_forcepll, 1);
> +       if (dsi->hw_version > HWVER_101)
> +               regmap_field_write(dsi->field_phy_forcepll, 1);
>
>         ret = regmap_field_read_poll_timeout(dsi->field_phy_status,
>                                              val, val & PHY_LOCK,
> @@ -1131,6 +1241,9 @@ static int dw_mipi_dsi_regmap_fields_init(struct dw_mipi_dsi *dsi)
>         case HWVER_131:
>                 variant = &dw_mipi_dsi_v130_v131_layout;
>                 break;
> +       case HWVER_101:
> +               variant = &dw_mipi_dsi_v101_layout;
> +               break;
>         default:
>                 DRM_ERROR("Unrecognized DSI host controller HW revision\n");
>                 return -ENODEV;
> --
> 2.26.0
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Regards,
Adrian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
