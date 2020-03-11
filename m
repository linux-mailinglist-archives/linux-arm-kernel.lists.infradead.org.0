Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80DAA180E5B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 04:15:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=djValDRSxoWHpaJi1j2LJbuMj34xnYGveqUksu3oDLo=; b=cdZhuU55uMCMBM
	P4wPmnID/oOCNaao61S/PJsyweKUo5rxoZYEYiDNFcqYmgcRoliBqDIDN4FyKU0khYcBr0DehCcW/
	skmTh0WHSMGTGvSLYY+nbC/eHj0nVWfmEF+2iJoSXKJhu+Eo9YFtT17SQ0pLcDWTgvz9HdHNs3F8Z
	empPoQ7K6gKAUIbk/ovf4i8RWvgsm0lXAuDi5j5vEu/zdGpF/wLvZC2ZjuvG+2kGxIgQj4mexV4kS
	g9e4Tnapp1kTsAd0eYbdOMip2Z23+iGiZGUHMys1uvbEaLf/zQAoEjmmTCWICX2RiSq3vclrXFVk5
	bOUigMIdMTR2BMxfgH9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBrqK-0002RE-MO; Wed, 11 Mar 2020 03:15:36 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBrqC-0002PL-Cy
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 03:15:30 +0000
Received: by mail-vs1-xe42.google.com with SMTP id t10so417325vsp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 20:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n3E7IMVYJafU8bzBev7zKbYlSHI8Q2B+H0J+BBDbPLU=;
 b=XFSUcK6ZwoEbjhhW2mVb19YUbotpa+mBwLxjkIiM25QBpTNnhsK7ritR0AJet8couX
 1qutVnPgDVrNwoioBGEwNfCLB13agD/ANGkFsMYnR/nNl4lTdahOWIR/PxpO6Qibx54d
 Zsj/FzhXMVvJ4zn9m17n/Iy1hgmEbTqe1qIMY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n3E7IMVYJafU8bzBev7zKbYlSHI8Q2B+H0J+BBDbPLU=;
 b=OTdk6NHooZ1i16KWoK/5oUZBIG4i4rf/EkaoRXs6fO3WMk8thpFpFLs8R+TmbHFCjS
 qVHgTN/0+lUaL3reLtZK7AvV2yd2wnxElCh3s92H/h1g2aYRh/27/RQP3lnuuECBFvZ3
 +0mCau7FkNtWAuQnMBp7w1uEQH2v+1L9RykkweSs3Tg6+qFF8QThMD0acL3cCpAmpMd9
 eFBNVO1LmiSQm2uLaoyr3pDW4XfWmn1empZZmIJCnnhvi8aj6clUDsLwTBIWkMygK3qq
 yfEX0HzF30evFsY1KWjG0W2HBHy6gxuK1kJbTOY8WHDLtYNlPrlPw0GdTjxrSVnKDJh8
 gagg==
X-Gm-Message-State: ANhLgQ3di8gqWegGXU6NWb3+G9MgFR/BqiSxDbtj0nrBmLUOiyoAyOnU
 FY0MM9MigJAzOleWwOwE0gfYL+V3niN90RaD0s5FQg==
X-Google-Smtp-Source: ADFU+vu48VqOjbQtn3i28Uba98xkT6zdCc5VGmAdIOPuUQCYMS9QKVfeoexPmQ97iAMTuZJK/BiqQonLdJkqZ6uUKUI=
X-Received: by 2002:a05:6102:392:: with SMTP id
 m18mr279318vsq.79.1583896526837; 
 Tue, 10 Mar 2020 20:15:26 -0700 (PDT)
MIME-Version: 1.0
References: <1581910527-1636-1-git-send-email-weiyi.lu@mediatek.com>
 <1581910527-1636-9-git-send-email-weiyi.lu@mediatek.com>
In-Reply-To: <1581910527-1636-9-git-send-email-weiyi.lu@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 11 Mar 2020 11:15:15 +0800
Message-ID: <CANMq1KDZXtPgbnUwEvmax7g66HhWJfPq+q1y199zvjMr07zTEg@mail.gmail.com>
Subject: Re: [PATCH v12 08/10] soc: mediatek: Add MT8183 scpsys support
To: Weiyi Lu <weiyi.lu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_201528_442351_4DD9BBF6 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rob Herring <robh@kernel.org>, srv_heupstream <srv_heupstream@mediatek.com>,
 James Liao <jamesjj.liao@mediatek.com>, lkml <linux-kernel@vger.kernel.org>,
 Fan Chen <fan.chen@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 11:35 AM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
>
> Add scpsys driver for MT8183
> And minor fix to add a comma at the end

Still same comment as v11:
""
I'll leave it up to the maintainer, but those minor fixes outside of
new mt8183 code should probably be done as a separate CL.
""

>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-scpsys.c | 233 +++++++++++++++++++++++++++++++++++++-
>  drivers/soc/mediatek/scpsys.h     |  28 +++++
>  2 files changed, 255 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
> index 98cc5ed..8538408 100644
> --- a/drivers/soc/mediatek/mtk-scpsys.c
> +++ b/drivers/soc/mediatek/mtk-scpsys.c
> @@ -20,6 +20,7 @@
>  #include <dt-bindings/power/mt7622-power.h>
>  #include <dt-bindings/power/mt7623a-power.h>
>  #include <dt-bindings/power/mt8173-power.h>
> +#include <dt-bindings/power/mt8183-power.h>
>
>  #define MTK_POLL_DELAY_US   10
>  #define MTK_POLL_TIMEOUT    USEC_PER_SEC
> @@ -1162,12 +1163,218 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>         {MT8173_POWER_DOMAIN_MFG_2D, MT8173_POWER_DOMAIN_MFG},
>  };
>
> +/*
> + * MT8183 power domain support
> + */
> +
> +static const struct scp_domain_data scp_domain_data_mt8183[] = {
> +       [MT8183_POWER_DOMAIN_AUDIO] = {
> +               .name = "audio",
> +               .sta_mask = PWR_STATUS_AUDIO,
> +               .ctl_offs = 0x0314,
> +               .sram_pdn_bits = GENMASK(11, 8),
> +               .sram_pdn_ack_bits = GENMASK(15, 12),
> +               .basic_clk_name = {"audio", "audio1", "audio2"},
> +       },
> +       [MT8183_POWER_DOMAIN_CONN] = {
> +               .name = "conn",
> +               .sta_mask = PWR_STATUS_CONN,
> +               .ctl_offs = 0x032c,
> +               .sram_pdn_bits = 0,
> +               .sram_pdn_ack_bits = 0,
> +               .bp_table = {
> +                       BUS_PROT(IFR_TYPE, 0x2a0, 0x2a4, 0, 0x228,
> +                               MT8183_TOP_AXI_PROT_EN_CONN),
> +               },
> +       },
> +       [MT8183_POWER_DOMAIN_MFG_ASYNC] = {
> +               .name = "mfg_async",
> +               .sta_mask = PWR_STATUS_MFG_ASYNC,
> +               .ctl_offs = 0x0334,
> +               .sram_pdn_bits = 0,
> +               .sram_pdn_ack_bits = 0,
> +               .basic_clk_name = {"mfg"},
> +       },
> +       [MT8183_POWER_DOMAIN_MFG] = {
> +               .name = "mfg",
> +               .sta_mask = PWR_STATUS_MFG,
> +               .ctl_offs = 0x0338,
> +               .sram_pdn_bits = GENMASK(8, 8),
> +               .sram_pdn_ack_bits = GENMASK(12, 12),
> +       },
> +       [MT8183_POWER_DOMAIN_MFG_CORE0] = {
> +               .name = "mfg_core0",
> +               .sta_mask = BIT(7),
> +               .ctl_offs = 0x034c,
> +               .sram_pdn_bits = GENMASK(8, 8),
> +               .sram_pdn_ack_bits = GENMASK(12, 12),
> +       },
> +       [MT8183_POWER_DOMAIN_MFG_CORE1] = {
> +               .name = "mfg_core1",
> +               .sta_mask = BIT(20),
> +               .ctl_offs = 0x0310,
> +               .sram_pdn_bits = GENMASK(8, 8),
> +               .sram_pdn_ack_bits = GENMASK(12, 12),
> +       },
> +       [MT8183_POWER_DOMAIN_MFG_2D] = {
> +               .name = "mfg_2d",
> +               .sta_mask = PWR_STATUS_MFG_2D,
> +               .ctl_offs = 0x0348,
> +               .sram_pdn_bits = GENMASK(8, 8),
> +               .sram_pdn_ack_bits = GENMASK(12, 12),
> +               .bp_table = {
> +                       BUS_PROT(IFR_TYPE, 0x2a8, 0x2ac, 0, 0x258,
> +                               MT8183_TOP_AXI_PROT_EN_1_MFG),
> +                       BUS_PROT(IFR_TYPE, 0x2a0, 0x2a4, 0, 0x228,
> +                               MT8183_TOP_AXI_PROT_EN_MFG),
> +               },
> +       },
> +       [MT8183_POWER_DOMAIN_DISP] = {
> +               .name = "disp",
> +               .sta_mask = PWR_STATUS_DISP,
> +               .ctl_offs = 0x030c,
> +               .sram_pdn_bits = GENMASK(8, 8),
> +               .sram_pdn_ack_bits = GENMASK(12, 12),
> +               .basic_clk_name = {"mm"},
> +               .subsys_clk_prefix = "mm",
> +               .bp_table = {
> +                       BUS_PROT(IFR_TYPE, 0x2a8, 0x2ac, 0, 0x258,
> +                               MT8183_TOP_AXI_PROT_EN_1_DISP),
> +                       BUS_PROT(IFR_TYPE, 0x2a0, 0x2a4, 0, 0x228,
> +                               MT8183_TOP_AXI_PROT_EN_DISP),
> +                       BUS_PROT(SMI_TYPE, 0x3c4, 0x3c8, 0, 0x3c0,
> +                               MT8183_SMI_COMMON_SMI_CLAMP_DISP),
> +               },
> +       },
> +       [MT8183_POWER_DOMAIN_CAM] = {
> +               .name = "cam",
> +               .sta_mask = BIT(25),
> +               .ctl_offs = 0x0344,
> +               .sram_pdn_bits = GENMASK(9, 8),
> +               .sram_pdn_ack_bits = GENMASK(13, 12),
> +               .basic_clk_name = {"cam"},
> +               .subsys_clk_prefix = "cam",
> +               .bp_table = {
> +                       BUS_PROT(IFR_TYPE, 0x2d4, 0x2d8, 0, 0x2ec,
> +                               MT8183_TOP_AXI_PROT_EN_MM_CAM),
> +                       BUS_PROT(IFR_TYPE, 0x2a0, 0x2a4, 0, 0x228,
> +                               MT8183_TOP_AXI_PROT_EN_CAM),
> +                       BUS_PROT_IGN(IFR_TYPE, 0x2d4, 0x2d8, 0, 0x2ec,
> +                               MT8183_TOP_AXI_PROT_EN_MM_CAM_2ND),
> +                       BUS_PROT(SMI_TYPE, 0x3c4, 0x3c8, 0, 0x3c0,
> +                               MT8183_SMI_COMMON_SMI_CLAMP_CAM),
> +               },
> +       },
> +       [MT8183_POWER_DOMAIN_ISP] = {
> +               .name = "isp",
> +               .sta_mask = PWR_STATUS_ISP,
> +               .ctl_offs = 0x0308,
> +               .sram_pdn_bits = GENMASK(9, 8),
> +               .sram_pdn_ack_bits = GENMASK(13, 12),
> +               .basic_clk_name = {"isp"},
> +               .subsys_clk_prefix = "isp",
> +               .bp_table = {
> +                       BUS_PROT(IFR_TYPE, 0x2d4, 0x2d8, 0, 0x2ec,
> +                               MT8183_TOP_AXI_PROT_EN_MM_ISP),
> +                       BUS_PROT_IGN(IFR_TYPE, 0x2d4, 0x2d8, 0, 0x2ec,
> +                               MT8183_TOP_AXI_PROT_EN_MM_ISP_2ND),
> +                       BUS_PROT(SMI_TYPE, 0x3c4, 0x3c8, 0, 0x3c0,
> +                               MT8183_SMI_COMMON_SMI_CLAMP_ISP),
> +               },
> +       },
> +       [MT8183_POWER_DOMAIN_VDEC] = {
> +               .name = "vdec",
> +               .sta_mask = BIT(31),
> +               .ctl_offs = 0x0300,
> +               .sram_pdn_bits = GENMASK(8, 8),
> +               .sram_pdn_ack_bits = GENMASK(12, 12),
> +               .bp_table = {
> +                       BUS_PROT(SMI_TYPE, 0x3c4, 0x3c8, 0, 0x3c0,
> +                               MT8183_SMI_COMMON_SMI_CLAMP_VDEC),
> +               },
> +       },
> +       [MT8183_POWER_DOMAIN_VENC] = {
> +               .name = "venc",
> +               .sta_mask = PWR_STATUS_VENC,
> +               .ctl_offs = 0x0304,
> +               .sram_pdn_bits = GENMASK(11, 8),
> +               .sram_pdn_ack_bits = GENMASK(15, 12),
> +               .bp_table = {
> +                       BUS_PROT(SMI_TYPE, 0x3c4, 0x3c8, 0, 0x3c0,
> +                               MT8183_SMI_COMMON_SMI_CLAMP_VENC),
> +               },
> +       },
> +       [MT8183_POWER_DOMAIN_VPU_TOP] = {
> +               .name = "vpu_top",
> +               .sta_mask = BIT(26),
> +               .ctl_offs = 0x0324,
> +               .sram_pdn_bits = GENMASK(8, 8),
> +               .sram_pdn_ack_bits = GENMASK(12, 12),
> +               .basic_clk_name = {"vpu", "vpu1"},
> +               .subsys_clk_prefix = "vpu",
> +               .bp_table = {
> +                       BUS_PROT(IFR_TYPE, 0x2d4, 0x2d8, 0, 0x2ec,
> +                               MT8183_TOP_AXI_PROT_EN_MM_VPU_TOP),
> +                       BUS_PROT(IFR_TYPE, 0x2a0, 0x2a4, 0, 0x228,
> +                               MT8183_TOP_AXI_PROT_EN_VPU_TOP),
> +                       BUS_PROT(IFR_TYPE, 0x2d4, 0x2d8, 0, 0x2ec,
> +                               MT8183_TOP_AXI_PROT_EN_MM_VPU_TOP_2ND),
> +                       BUS_PROT(SMI_TYPE, 0x3c4, 0x3c8, 0, 0x3c0,
> +                               MT8183_SMI_COMMON_SMI_CLAMP_VPU_TOP),
> +               },
> +       },
> +       [MT8183_POWER_DOMAIN_VPU_CORE0] = {
> +               .name = "vpu_core0",
> +               .sta_mask = BIT(27),
> +               .ctl_offs = 0x33c,
> +               .sram_pdn_bits = GENMASK(11, 8),
> +               .sram_pdn_ack_bits = GENMASK(13, 12),
> +               .basic_clk_name = {"vpu2"},
> +               .bp_table = {
> +                       BUS_PROT(IFR_TYPE, 0x2c4, 0x2c8, 0, 0x2e4,
> +                               MT8183_TOP_AXI_PROT_EN_MCU_VPU_CORE0),
> +                       BUS_PROT(IFR_TYPE, 0x2c4, 0x2c8, 0, 0x2e4,
> +                               MT8183_TOP_AXI_PROT_EN_MCU_VPU_CORE0_2ND),
> +               },
> +               .caps = MTK_SCPD_SRAM_ISO,
> +       },
> +       [MT8183_POWER_DOMAIN_VPU_CORE1] = {
> +               .name = "vpu_core1",
> +               .sta_mask = BIT(28),
> +               .ctl_offs = 0x0340,
> +               .sram_pdn_bits = GENMASK(11, 8),
> +               .sram_pdn_ack_bits = GENMASK(13, 12),
> +               .basic_clk_name = {"vpu3"},
> +               .bp_table = {
> +                       BUS_PROT(IFR_TYPE, 0x2c4, 0x2c8, 0, 0x2e4,
> +                               MT8183_TOP_AXI_PROT_EN_MCU_VPU_CORE1),
> +                       BUS_PROT(IFR_TYPE, 0x2c4, 0x2c8, 0, 0x2e4,
> +                               MT8183_TOP_AXI_PROT_EN_MCU_VPU_CORE1_2ND),
> +               },
> +               .caps = MTK_SCPD_SRAM_ISO,
> +       },
> +};
> +
> +static const struct scp_subdomain scp_subdomain_mt8183[] = {
> +       {MT8183_POWER_DOMAIN_MFG_ASYNC, MT8183_POWER_DOMAIN_MFG},
> +       {MT8183_POWER_DOMAIN_MFG, MT8183_POWER_DOMAIN_MFG_2D},
> +       {MT8183_POWER_DOMAIN_MFG, MT8183_POWER_DOMAIN_MFG_CORE0},
> +       {MT8183_POWER_DOMAIN_MFG, MT8183_POWER_DOMAIN_MFG_CORE1},
> +       {MT8183_POWER_DOMAIN_DISP, MT8183_POWER_DOMAIN_CAM},
> +       {MT8183_POWER_DOMAIN_DISP, MT8183_POWER_DOMAIN_ISP},
> +       {MT8183_POWER_DOMAIN_DISP, MT8183_POWER_DOMAIN_VDEC},
> +       {MT8183_POWER_DOMAIN_DISP, MT8183_POWER_DOMAIN_VENC},
> +       {MT8183_POWER_DOMAIN_DISP, MT8183_POWER_DOMAIN_VPU_TOP},
> +       {MT8183_POWER_DOMAIN_VPU_TOP, MT8183_POWER_DOMAIN_VPU_CORE0},
> +       {MT8183_POWER_DOMAIN_VPU_TOP, MT8183_POWER_DOMAIN_VPU_CORE1},
> +};
> +
>  static const struct scp_soc_data mt2701_data = {
>         .domains = scp_domain_data_mt2701,
>         .num_domains = ARRAY_SIZE(scp_domain_data_mt2701),
>         .regs = {
>                 .pwr_sta_offs = SPM_PWR_STATUS,
> -               .pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
> +               .pwr_sta2nd_offs = SPM_PWR_STATUS_2ND,
>         },
>  };
>
> @@ -1178,7 +1385,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>         .num_subdomains = ARRAY_SIZE(scp_subdomain_mt2712),
>         .regs = {
>                 .pwr_sta_offs = SPM_PWR_STATUS,
> -               .pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
> +               .pwr_sta2nd_offs = SPM_PWR_STATUS_2ND,
>         },
>  };
>
> @@ -1189,7 +1396,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>         .num_subdomains = ARRAY_SIZE(scp_subdomain_mt6797),
>         .regs = {
>                 .pwr_sta_offs = SPM_PWR_STATUS_MT6797,
> -               .pwr_sta2nd_offs = SPM_PWR_STATUS_2ND_MT6797
> +               .pwr_sta2nd_offs = SPM_PWR_STATUS_2ND_MT6797,
>         },
>  };
>
> @@ -1198,7 +1405,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>         .num_domains = ARRAY_SIZE(scp_domain_data_mt7622),
>         .regs = {
>                 .pwr_sta_offs = SPM_PWR_STATUS,
> -               .pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
> +               .pwr_sta2nd_offs = SPM_PWR_STATUS_2ND,
>         },
>  };
>
> @@ -1207,7 +1414,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>         .num_domains = ARRAY_SIZE(scp_domain_data_mt7623a),
>         .regs = {
>                 .pwr_sta_offs = SPM_PWR_STATUS,
> -               .pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
> +               .pwr_sta2nd_offs = SPM_PWR_STATUS_2ND,
>         },
>  };
>
> @@ -1218,10 +1425,21 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>         .num_subdomains = ARRAY_SIZE(scp_subdomain_mt8173),
>         .regs = {
>                 .pwr_sta_offs = SPM_PWR_STATUS,
> -               .pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
> +               .pwr_sta2nd_offs = SPM_PWR_STATUS_2ND,
>         },
>  };
>
> +static const struct scp_soc_data mt8183_data = {
> +       .domains = scp_domain_data_mt8183,
> +       .num_domains = ARRAY_SIZE(scp_domain_data_mt8183),
> +       .subdomains = scp_subdomain_mt8183,
> +       .num_subdomains = ARRAY_SIZE(scp_subdomain_mt8183),
> +       .regs = {
> +               .pwr_sta_offs = 0x0180,
> +               .pwr_sta2nd_offs = 0x0184,
> +       }
> +};
> +
>  /*
>   * scpsys driver init
>   */
> @@ -1246,6 +1464,9 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>                 .compatible = "mediatek,mt8173-scpsys",
>                 .data = &mt8173_data,
>         }, {
> +               .compatible = "mediatek,mt8183-scpsys",
> +               .data = &mt8183_data,
> +       }, {
>                 /* sentinel */
>         }
>  };
> diff --git a/drivers/soc/mediatek/scpsys.h b/drivers/soc/mediatek/scpsys.h
> index 45bc644..0d387b7 100644
> --- a/drivers/soc/mediatek/scpsys.h
> +++ b/drivers/soc/mediatek/scpsys.h
> @@ -43,6 +43,34 @@
>  #define MT8173_TOP_AXI_PROT_EN_MFG_M1          BIT(22)
>  #define MT8173_TOP_AXI_PROT_EN_MFG_SNOOP_OUT   BIT(23)
>
> +#define MT8183_TOP_AXI_PROT_EN_DISP                    (BIT(10) | BIT(11))
> +#define MT8183_TOP_AXI_PROT_EN_CONN                    (BIT(13) | BIT(14))
> +#define MT8183_TOP_AXI_PROT_EN_MFG                     (BIT(21) | BIT(22))
> +#define MT8183_TOP_AXI_PROT_EN_CAM                     BIT(28)
> +#define MT8183_TOP_AXI_PROT_EN_VPU_TOP                 BIT(27)
> +#define MT8183_TOP_AXI_PROT_EN_1_DISP                  (BIT(16) | BIT(17))
> +#define MT8183_TOP_AXI_PROT_EN_1_MFG                   GENMASK(21, 19)
> +#define MT8183_TOP_AXI_PROT_EN_MM_ISP                  (BIT(3) | BIT(8))
> +#define MT8183_TOP_AXI_PROT_EN_MM_ISP_2ND              BIT(10)
> +#define MT8183_TOP_AXI_PROT_EN_MM_CAM                  (BIT(4) | BIT(5) | \
> +                                                        BIT(9) | BIT(13))
> +#define MT8183_TOP_AXI_PROT_EN_MM_VPU_TOP              (GENMASK(9, 6) | \
> +                                                        BIT(12))
> +#define MT8183_TOP_AXI_PROT_EN_MM_VPU_TOP_2ND          (BIT(10) | BIT(11))
> +#define MT8183_TOP_AXI_PROT_EN_MM_CAM_2ND              BIT(11)
> +#define MT8183_TOP_AXI_PROT_EN_MCU_VPU_CORE0_2ND       (BIT(0) | BIT(2) | \
> +                                                        BIT(4))
> +#define MT8183_TOP_AXI_PROT_EN_MCU_VPU_CORE1_2ND       (BIT(1) | BIT(3) | \
> +                                                        BIT(5))
> +#define MT8183_TOP_AXI_PROT_EN_MCU_VPU_CORE0           BIT(6)
> +#define MT8183_TOP_AXI_PROT_EN_MCU_VPU_CORE1           BIT(7)
> +#define MT8183_SMI_COMMON_SMI_CLAMP_DISP               GENMASK(7, 0)
> +#define MT8183_SMI_COMMON_SMI_CLAMP_VENC               BIT(1)
> +#define MT8183_SMI_COMMON_SMI_CLAMP_ISP                BIT(2)
> +#define MT8183_SMI_COMMON_SMI_CLAMP_CAM                (BIT(3) | BIT(4))
> +#define MT8183_SMI_COMMON_SMI_CLAMP_VPU_TOP            (BIT(5) | BIT(6))
> +#define MT8183_SMI_COMMON_SMI_CLAMP_VDEC               BIT(7)
> +
>  enum regmap_type {
>         INVALID_TYPE = 0,
>         IFR_TYPE,
> --
> 1.8.1.1.dirty

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
