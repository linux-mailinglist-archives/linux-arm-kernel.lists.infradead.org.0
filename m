Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFECF166EEA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 06:18:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TkOnSqjsbY9Ry411bX6r3M3gMFVBcVCS8ahLipXLEKg=; b=MYe41XTQIYbrst
	LcabLOk2cq4JjcQF7NzY5vkCZafPFmG7wVio4jFZQcmWq5MhRU9doUtJTdYSWzmViooCa7I+qnl3k
	4Y59Vgkl0w7HUoUTEp+rOo9c4VJH6Am4EmrjhtdHJCM/RYxoT0Z8r78823i6HrC4f+CNNm3Xtctun
	kJgnfgcGJ5O42dtb25CoCSlApG1Jl1cRYNuLVrn2NFcDSsAewwmOm2TSwwx8anedHiqDuRVMHIZ56
	X5MYYTUAB9Aqml3LZNjgXV7fj3dVWQBl3OqyOMAtnYps/WCSWcmqlCKRf2dw4BqeoPOI6pE4nfOBW
	c0byZsPEqdHZmdOeRDcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j50hu-0001RO-Gu; Fri, 21 Feb 2020 05:18:34 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j50hf-0001Q1-Rk; Fri, 21 Feb 2020 05:18:22 +0000
X-UUID: 05bf233df6cb4d83a6cd2afa9b966d7c-20200220
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=6UV+C10r2CMR0l2KI7VTcwmaRRwTbWfU9UAXiUnQ4b8=; 
 b=Ybqa99C1yIEm5RRSF6o8lbTBlYhulpmPkog+fZxJJytL3esGzaBxNWMDhVxwlEZ+pbcPfVLp6hV3EYx8h9LLgPCZeIi6qL63760D/balCwUlqxYLsRNNkKHMToKh4EYBaanNAyUZs7/r07BHYx4N7KMBXNhaT2Y5V4O9pkiuGJk=;
X-UUID: 05bf233df6cb4d83a6cd2afa9b966d7c-20200220
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1548682735; Thu, 20 Feb 2020 21:18:18 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 20 Feb 2020 21:19:12 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 21 Feb 2020 13:17:28 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 21 Feb 2020 13:17:56 +0800
Message-ID: <1582262295.30425.8.camel@mtksdaap41>
Subject: Re: [PATCH v8 6/6] clk/drm: mediatek: Fix mediatek-drm device probing
From: CK Hu <ck.hu@mediatek.com>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Date: Fri, 21 Feb 2020 13:18:15 +0800
In-Reply-To: <20200220172147.919996-7-enric.balletbo@collabora.com>
References: <20200220172147.919996-1-enric.balletbo@collabora.com>
 <20200220172147.919996-7-enric.balletbo@collabora.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_211819_912185_84CFD379 
X-CRM114-Status: GOOD (  22.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, Kate Stewart <kstewart@linuxfoundation.org>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>, airlied@linux.ie,
 mturquette@baylibre.com, dri-devel@lists.freedesktop.org,
 Richard Fontana <rfontana@redhat.com>, laurent.pinchart@ideasonboard.com,
 ulrich.hecht+renesas@gmail.com, Collabora
 Kernel ML <kernel@collabora.com>, linux-clk@vger.kernel.org,
 Weiyi Lu <weiyi.lu@mediatek.com>, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, mtk01761 <wendell.lin@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, frank-w@public-files.de, Seiya
 Wang <seiya.wang@mediatek.com>, sean.wang@mediatek.com,
 Houlong Wei <houlong.wei@mediatek.com>, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Mauro
 Carvalho Chehab <mchehab@kernel.org>, Allison Randal <allison@lohutok.net>,
 Matthias Brugger <mbrugger@suse.com>, sboyd@kernel.org, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, p.zabel@pengutronix.de, matthias.bgg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Enric:

On Thu, 2020-02-20 at 18:21 +0100, Enric Balletbo i Serra wrote:
> In the actual implementation the same compatible string
> "mediatek,<chip>-mmsys" is used to bind the clock drivers
> (drivers/clk/mediatek) as well as to the gpu driver
> (drivers/gpu/drm/mediatek/mtk_drm_drv.c). This ends with the problem
> that the only probed driver is the clock driver and there is no display
> at all.
> 
> In any case having the same compatible string for two drivers is not
> correct and should be fixed. To fix this, and maintain backward
> compatibility, we can consider that the clk-<chip>-mm driver is the
> top-level entry point for the MMSYS subsystem, so is not a pure clock
> controller but a system controller, and the drm driver is instantiated
> by that MMSYS driver.
> 
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---
> 
> Changes in v8:
> - New patch introduced in this series.
> 
> Changes in v7: None
> 
>  drivers/clk/mediatek/clk-mt2701-mm.c   |  30 ++++++++
>  drivers/clk/mediatek/clk-mt2712-mm.c   |  44 +++++++++++
>  drivers/clk/mediatek/clk-mt8173-mm.c   |  35 +++++++++
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c | 102 ++-----------------------
>  4 files changed, 115 insertions(+), 96 deletions(-)
> 
> diff --git a/drivers/clk/mediatek/clk-mt2701-mm.c b/drivers/clk/mediatek/clk-mt2701-mm.c
> index 054b597d4a73..b1281680d5bf 100644
> --- a/drivers/clk/mediatek/clk-mt2701-mm.c
> +++ b/drivers/clk/mediatek/clk-mt2701-mm.c
> @@ -5,6 +5,7 @@
>   */

[snip]

>  
>  
> diff --git a/drivers/clk/mediatek/clk-mt2712-mm.c b/drivers/clk/mediatek/clk-mt2712-mm.c
> index 1c5948be35f3..0ae971783997 100644
> --- a/drivers/clk/mediatek/clk-mt2712-mm.c
> +++ b/drivers/clk/mediatek/clk-mt2712-mm.c
> @@ -5,6 +5,7 @@
>   */
>  
>  #include <linux/clk-provider.h>
> +#include <linux/platform_data/mtk_mmsys.h>
>  #include <linux/platform_device.h>
>  
>  #include "clk-mtk.h"
> @@ -126,9 +127,45 @@ static const struct mtk_gate mm_clks[] = {
>  	GATE_MM2(CLK_MM_DSI3_DIGITAL, "mm_dsi3_digital", "dsi1_lntc", 6),
>  };
>  
> +static const enum mtk_ddp_comp_id mt2712_mtk_ddp_main[] = {
> +	DDP_COMPONENT_OVL0,
> +	DDP_COMPONENT_COLOR0,
> +	DDP_COMPONENT_AAL0,
> +	DDP_COMPONENT_OD0,
> +	DDP_COMPONENT_RDMA0,
> +	DDP_COMPONENT_DPI0,
> +	DDP_COMPONENT_PWM0,
> +};
> +
> +static const enum mtk_ddp_comp_id mt2712_mtk_ddp_ext[] = {
> +	DDP_COMPONENT_OVL1,
> +	DDP_COMPONENT_COLOR1,
> +	DDP_COMPONENT_AAL1,
> +	DDP_COMPONENT_OD1,
> +	DDP_COMPONENT_RDMA1,
> +	DDP_COMPONENT_DPI1,
> +	DDP_COMPONENT_PWM1,
> +};
> +
> +static const enum mtk_ddp_comp_id mt2712_mtk_ddp_third[] = {
> +	DDP_COMPONENT_RDMA2,
> +	DDP_COMPONENT_DSI3,
> +	DDP_COMPONENT_PWM2,
> +};
> +
> +static struct mtk_mmsys_driver_data mt2712_mmsys_driver_data = {
> +	.main_path = mt2712_mtk_ddp_main,
> +	.main_len = ARRAY_SIZE(mt2712_mtk_ddp_main),
> +	.ext_path = mt2712_mtk_ddp_ext,
> +	.ext_len = ARRAY_SIZE(mt2712_mtk_ddp_ext),
> +	.third_path = mt2712_mtk_ddp_third,
> +	.third_len = ARRAY_SIZE(mt2712_mtk_ddp_third),
> +};
> +

[snip]

>  
> diff --git a/drivers/clk/mediatek/clk-mt8173-mm.c b/drivers/clk/mediatek/clk-mt8173-mm.c
> index 83884fd5a750..9136c7f543f1 100644
> --- a/drivers/clk/mediatek/clk-mt8173-mm.c
> +++ b/drivers/clk/mediatek/clk-mt8173-mm.c
> @@ -5,6 +5,7 @@
>   */
>  
>  #include <linux/clk-provider.h>
> +#include <linux/platform_data/mtk_mmsys.h>
>  #include <linux/platform_device.h>
>  
>  #include "clk-mtk.h"
> @@ -99,10 +100,37 @@ static const struct mtk_gate mm_clks[] = {
>  	GATE_MM1(CLK_MM_HDMI_HDCP24M, "mm_hdmi_hdcp24m", "hdcp_24m_sel", 20),
>  };
>  
> +static const enum mtk_ddp_comp_id mt8173_mtk_ddp_main[] = {
> +	DDP_COMPONENT_OVL0,
> +	DDP_COMPONENT_COLOR0,
> +	DDP_COMPONENT_AAL0,
> +	DDP_COMPONENT_OD0,
> +	DDP_COMPONENT_RDMA0,
> +	DDP_COMPONENT_UFOE,
> +	DDP_COMPONENT_DSI0,
> +	DDP_COMPONENT_PWM0,
> +};
> +
> +static const enum mtk_ddp_comp_id mt8173_mtk_ddp_ext[] = {
> +	DDP_COMPONENT_OVL1,
> +	DDP_COMPONENT_COLOR1,
> +	DDP_COMPONENT_GAMMA,
> +	DDP_COMPONENT_RDMA1,
> +	DDP_COMPONENT_DPI0,
> +};
> +
> +static struct mtk_mmsys_driver_data mt8173_mmsys_driver_data = {
> +	.main_path = mt8173_mtk_ddp_main,
> +	.main_len = ARRAY_SIZE(mt8173_mtk_ddp_main),
> +	.ext_path = mt8173_mtk_ddp_ext,
> +	.ext_len = ARRAY_SIZE(mt8173_mtk_ddp_ext),
> +};
> +
>  static int clk_mt8173_mm_probe(struct platform_device *pdev)
>  {
>  	struct device_node *node = pdev->dev.of_node;
>  	struct clk_onecell_data *clk_data;
> +	struct platform_device *drm;
>  	int ret;
>  
>  	clk_data = mtk_alloc_clk_data(CLK_MM_NR_CLK);
> @@ -118,6 +146,13 @@ static int clk_mt8173_mm_probe(struct platform_device *pdev)
>  	if (ret)
>  		return ret;
>  
> +	platform_set_drvdata(pdev, &mt8173_mmsys_driver_data);
> +
> +	drm = platform_device_register_data(&pdev->dev, "mediatek-drm",
> +					    PLATFORM_DEVID_NONE, NULL, 0);
> +	if (IS_ERR(drm))
> +		return PTR_ERR(drm);
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index b68837ea02b3..5b60f6b7d710 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -61,88 +61,6 @@ static const struct drm_mode_config_funcs mtk_drm_mode_config_funcs = {
>  	.atomic_commit = drm_atomic_helper_commit,
>  };
>  
> -static const enum mtk_ddp_comp_id mt2701_mtk_ddp_main[] = {
> -	DDP_COMPONENT_OVL0,
> -	DDP_COMPONENT_RDMA0,
> -	DDP_COMPONENT_COLOR0,
> -	DDP_COMPONENT_BLS,
> -	DDP_COMPONENT_DSI0,
> -};
> -
> -static const enum mtk_ddp_comp_id mt2701_mtk_ddp_ext[] = {
> -	DDP_COMPONENT_RDMA1,
> -	DDP_COMPONENT_DPI0,
> -};
> -
> -static const enum mtk_ddp_comp_id mt2712_mtk_ddp_main[] = {
> -	DDP_COMPONENT_OVL0,
> -	DDP_COMPONENT_COLOR0,
> -	DDP_COMPONENT_AAL0,
> -	DDP_COMPONENT_OD0,
> -	DDP_COMPONENT_RDMA0,
> -	DDP_COMPONENT_DPI0,
> -	DDP_COMPONENT_PWM0,
> -};
> -
> -static const enum mtk_ddp_comp_id mt2712_mtk_ddp_ext[] = {
> -	DDP_COMPONENT_OVL1,
> -	DDP_COMPONENT_COLOR1,
> -	DDP_COMPONENT_AAL1,
> -	DDP_COMPONENT_OD1,
> -	DDP_COMPONENT_RDMA1,
> -	DDP_COMPONENT_DPI1,
> -	DDP_COMPONENT_PWM1,
> -};
> -
> -static const enum mtk_ddp_comp_id mt2712_mtk_ddp_third[] = {
> -	DDP_COMPONENT_RDMA2,
> -	DDP_COMPONENT_DSI3,
> -	DDP_COMPONENT_PWM2,
> -};
> -
> -static const enum mtk_ddp_comp_id mt8173_mtk_ddp_main[] = {
> -	DDP_COMPONENT_OVL0,
> -	DDP_COMPONENT_COLOR0,
> -	DDP_COMPONENT_AAL0,
> -	DDP_COMPONENT_OD0,
> -	DDP_COMPONENT_RDMA0,
> -	DDP_COMPONENT_UFOE,
> -	DDP_COMPONENT_DSI0,
> -	DDP_COMPONENT_PWM0,
> -};
> -
> -static const enum mtk_ddp_comp_id mt8173_mtk_ddp_ext[] = {
> -	DDP_COMPONENT_OVL1,
> -	DDP_COMPONENT_COLOR1,
> -	DDP_COMPONENT_GAMMA,
> -	DDP_COMPONENT_RDMA1,
> -	DDP_COMPONENT_DPI0,
> -};

I prefer that display routing is placed in drm driver. If you want to
move display routing into mmsys driver, I think you should move
mtk_ddp_add_comp_to_path() and mtk_ddp_remove_comp_from_path() into
mmsys driver because that is the register configuration part. This array
could be changed by display driver according to its application. For
example, the another routing could be:

static const enum mtk_ddp_comp_id mt8173_mtk_ddp_main[] = {
	DDP_COMPONENT_OVL0,
	DDP_COMPONENT_COLOR0,
	DDP_COMPONENT_AAL0,
	DDP_COMPONENT_OD0,
	DDP_COMPONENT_RDMA0,
	DDP_COMPONENT_UFOE,
	DDP_COMPONENT_DPI0,
};

static const enum mtk_ddp_comp_id mt8173_mtk_ddp_ext[] = {
	DDP_COMPONENT_OVL1,
	DDP_COMPONENT_COLOR1,
	DDP_COMPONENT_GAMMA,
	DDP_COMPONENT_RDMA1,
	DDP_COMPONENT_DSI0,
	DDP_COMPONENT_PWM0,
};

I exchange the dsi and dpi component for the two display output. This
array is how display driver want to route, so I think this should be
kept in display driver.

Regards,
CK

> -
> -static const struct mtk_mmsys_driver_data mt2701_mmsys_driver_data = {
> -	.main_path = mt2701_mtk_ddp_main,
> -	.main_len = ARRAY_SIZE(mt2701_mtk_ddp_main),
> -	.ext_path = mt2701_mtk_ddp_ext,
> -	.ext_len = ARRAY_SIZE(mt2701_mtk_ddp_ext),
> -	.shadow_register = true,
> -};
> -
> -static const struct mtk_mmsys_driver_data mt2712_mmsys_driver_data = {
> -	.main_path = mt2712_mtk_ddp_main,
> -	.main_len = ARRAY_SIZE(mt2712_mtk_ddp_main),
> -	.ext_path = mt2712_mtk_ddp_ext,
> -	.ext_len = ARRAY_SIZE(mt2712_mtk_ddp_ext),
> -	.third_path = mt2712_mtk_ddp_third,
> -	.third_len = ARRAY_SIZE(mt2712_mtk_ddp_third),
> -};
> -
> -static const struct mtk_mmsys_driver_data mt8173_mmsys_driver_data = {
> -	.main_path = mt8173_mtk_ddp_main,
> -	.main_len = ARRAY_SIZE(mt8173_mtk_ddp_main),
> -	.ext_path = mt8173_mtk_ddp_ext,
> -	.ext_len = ARRAY_SIZE(mt8173_mtk_ddp_ext),
> -};
> -


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
