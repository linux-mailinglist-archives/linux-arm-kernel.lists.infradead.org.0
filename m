Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7611BFB3F9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 16:43:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BVzlzTFV8nJkR/2wXmOeR3LkZFqDkWOJ7H2BFSwVMx8=; b=FcfTY1XRpyRNHx
	RueHXcajuhYvphZFYDlS9vIHaj6rq227iVn1txks3m5Uk8/g+OBdlJP2dn9dyecCMtRKgdzbD7rOs
	2W2APAafyBNlYboU1ITzmSx2HjEsoGiR8ToWUrSTAfLwECryvu26OIE+Yuc5hZ/mrtoBEFx88LfLN
	JjePW4ew2SyGr5y4MZPgzip6RO749T0sw0IRslL9UULjBBLuNyE1BrRBqhzoCc9eZ+j1svh3sDqsV
	bLktZ9NbyPJW8L+dBhOpow0hUo71yQi2wudBO28JooHaVvAzLBMURbKlohbLL2bn5Bcy7JKxznnnz
	ufyVTV+CRtW6q/TvpxWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUuoA-0000pc-8S; Wed, 13 Nov 2019 15:43:50 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUuo0-0000oQ-1D; Wed, 13 Nov 2019 15:43:41 +0000
Received: by mail-ua1-x944.google.com with SMTP id s25so806065uap.1;
 Wed, 13 Nov 2019 07:43:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/Vi/nAUFrYq+Z81VivMqWJ6fhk9sFE6uoRaEGSyG7LY=;
 b=eaXcyDxzW5Wq4bEa2mTFE+456S59OzhTQYiZPfJETT/aHklwJKeLmekruQ2WAfteKc
 lmJYTJpHyTE5zmZ/adbDYCJg57zdTiwi2vmgSfSoZH5EjqfKfOgCQnf/SrBb0+RTPDTN
 4LgJWW2fe/2Rn+2bpAx6Vz7xHx1S2Xmn98gKFhpEX+7WpXY08hANvj3PL2lHeJW63yCu
 35Ef6Z1hxneuZTwcrd6Jaycuc/DDXkuWiOM5qkcRUBmWjTksUHMS43G5aao+gWCn5LWP
 ooKIrc4c3CzmDKD2K2SFi/ikfdWfhM/wBQjJWui2L/IQqicpiy8LUCxXMhNKcOOqAJPD
 JrMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/Vi/nAUFrYq+Z81VivMqWJ6fhk9sFE6uoRaEGSyG7LY=;
 b=OuIoIJ1cgFDAxcWXHH+ypc6BnYKFCpb1S9nHSfUWDwIq/VNwtTUUtRiGS8lzMkn6B6
 Vp51BXn9BGywuwksoNa0rhS44nPW9T+PVns/yd4lYviHvV7Lm27eoxOtFN4CTdasLErc
 P8D6IVqb5PCVlP5zPSPMbBiAOU6l3o/co6KSVe33yfWOW9G2pQ5wdl4GlzU07y9vhTMW
 4h4cZgkx0doGgIa1Ju/JxrzKWThK4WzcIXuVry+f7G2fVzYrbhvFy8frBDL1+pm6AYxz
 PKSpkL/83/UGQ1ISUYEPxQRSpIAH1B49HhzzR1VBmDDTewj7RviarwwEWkEArcB4i59O
 44Dw==
X-Gm-Message-State: APjAAAV2HZ7VPP5XrovljIH0Eol4ogZmpI/93JLviq/eYRXgUgjbVPJx
 vWTHoa/rjO1dnKiKyven/rag4dso7Fs/aCg/Xih8T9+m
X-Google-Smtp-Source: APXvYqyWd8hfrLRPwCngx48jvavKfYDtnbc3w9HChvejMMB4srKR3Nc94lmckPsm/62oZMiU7s0R6Oi/Qu5dSFVFGGc=
X-Received: by 2002:ab0:14e8:: with SMTP id f37mr2198362uae.64.1573659815058; 
 Wed, 13 Nov 2019 07:43:35 -0800 (PST)
MIME-Version: 1.0
References: <20191106163031.808061-1-adrian.ratiu@collabora.com>
 <20191106163031.808061-4-adrian.ratiu@collabora.com>
In-Reply-To: <20191106163031.808061-4-adrian.ratiu@collabora.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Wed, 13 Nov 2019 15:43:08 +0000
Message-ID: <CACvgo50xc9NKgNn2uzGFbW1TwBDFRPmC3geCSC_63P-OXbm6DA@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] drm: imx: Add i.MX 6 MIPI DSI host driver
To: Adrian Ratiu <adrian.ratiu@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_074340_076174_7B8E2A1F 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (emil.l.velikov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Martyn Welch <martyn.welch@collabora.com>,
 Sjoerd Simons <sjoerd.simons@collabora.com>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 6 Nov 2019 at 16:31, Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
>
> This adds support for the Synopsis DesignWare MIPI DSI v1.01 host
> controller which is embedded in i.MX 6 SoCs.
>
> Based on following patches, but updated/extended to work with existing
> support found in the kernel:
>
> - drm: imx: Support Synopsys DesignWare MIPI DSI host controller
>   Signed-off-by: Liu Ying <Ying.Liu@freescale.com>
>
> - ARM: dtsi: imx6qdl: Add support for MIPI DSI host controller
>   Signed-off-by: Liu Ying <Ying.Liu@freescale.com>
>
> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
> Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>
With the const nitpick below, the patch is:
Reviewed-by: Emil Velikov <emil.velikov@collabora.com>

Aside, for the future consider having a change log in the patch itself.
What I tend to do is:
 - v2: Keep DW version specifics in dw-mipi-dsi.c (Emil)

<snip>

> +static struct dw_mipi_dsi_variant dw_mipi_dsi_v101_layout = {

Nit: make this a const.


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
if we start getting a lot of these, one way to keep things brief is to
reuse the GEN._FEATURES approach in gpu/drm/i915/i915_pci.c

Namely:
#define 100_FEATURES \
 .foo = ... \
 .bar = ...

.... v100_layout = {
100_FEATURES,
};
... v101_layout = {
100_FEATURES,
// extra 101 changes
.foo = ...101, \
.bar = ...101
};

But that for another day.

HTH
-Emil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
