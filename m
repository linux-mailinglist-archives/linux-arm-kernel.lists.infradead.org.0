Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD972173500
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 11:08:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1DVKQ1GgXj20NShIdyZ46+8CtG2KTaPHkuNUHl+JPXc=; b=YMZehbDkJBhw+f
	J6fJ0dquUHOf2WSA10GgMpmzcg/ZYtnULuXno3rOnDcpAgeqGZUx71EfxkkZCytXhYpnLQ9eIrKiG
	+cCvULUqU9dxEiAOVSKi2LajwkfmHBAvBKWDWQ0JpfhNOiBVXZYSrmnjdf71gdbYiXgWwL/RPDrSd
	FRZWhp75Jxq51K26xUlhhIhn8rsWm62CxPiULuh8mX5kmRZuEiWVWIcSV5wBzJ+dRhpRPuXrUw5BD
	2i+hDI1tN04hNUEj64PozTc8NaF9kvEAUnLjSc1p6FG87J5BwMqnmyH7bvTb7OEYB/AlyF6IEkTA+
	yrWQsXxf2qz0S5HwWSlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7cYj-0005x6-OQ; Fri, 28 Feb 2020 10:07:53 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7cYX-0005va-UC; Fri, 28 Feb 2020 10:07:43 +0000
X-UUID: 64c696c1aebf45d9bf070f47a52ecfa8-20200228
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=1DhT26Nw0ev4Fr8ahrt98NxVPN2Jg/ECXsapb7EkmRI=; 
 b=HtrLp0Fn/52njlsl7gP4qX/rtdjoWM3Yx5sAZb02xfx13B6XMjhW2GRxxZ1QEn5fRsNCeJ1dIXrb1LeGxJqkuBUieJpcVZvnWdYZ+nUcqKo/fcC/CfQNoZKj82PlQKj4vPBihy3rEzou/j8HSQupuH3lJdKG9VAOCF+v+jzFRtU=;
X-UUID: 64c696c1aebf45d9bf070f47a52ecfa8-20200228
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 364121120; Fri, 28 Feb 2020 02:07:40 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 28 Feb 2020 02:08:21 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 28 Feb 2020 18:06:43 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 28 Feb 2020 18:07:36 +0800
Message-ID: <1582884456.25698.0.camel@mtksdaap41>
Subject: Re: [PATCH v10 5/5] soc / drm: mediatek: Fix mediatek-drm device
 probing
From: CK Hu <ck.hu@mediatek.com>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Date: Fri, 28 Feb 2020 18:07:36 +0800
In-Reply-To: <20200227180858.1514157-6-enric.balletbo@collabora.com>
References: <20200227180858.1514157-1-enric.balletbo@collabora.com>
 <20200227180858.1514157-6-enric.balletbo@collabora.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_020741_993052_7061AB1A 
X-CRM114-Status: GOOD (  21.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Thu, 2020-02-27 at 19:08 +0100, Enric Balletbo i Serra wrote:
> In the actual implementation the same compatible string
> "mediatek,<chip>-mmsys" is used to bind the clock drivers
> (drivers/soc/mediatek) as well as to the gpu driver
> (drivers/gpu/drm/mediatek/mtk_drm_drv.c). This ends with the problem
> that the only probed driver is the clock driver and there is no display
> at all.
> 
> In any case having the same compatible string for two drivers is not
> correct and should be fixed. To fix this, and maintain backward
> compatibility, we can consider that the mmsys driver is the top-level
> entry point for the multimedia subsystem, so is not a pure clock
> controller but a system controller, and the drm driver is instantiated
> by that MMSYS driver.

Reviewed-by: CK Hu <ck.hu@mediatek.com>
> 
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---
> 
> Changes in v10:
> - Match driver data to get display routing.
> 
> Changes in v9:
> - Do not move the display routing from the drm driver (CK)
> 
> Changes in v8:
> - New patch introduced in this series.
> 
> Changes in v7: None
> 
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c | 31 ++++++++++++++++----------
>  drivers/soc/mediatek/mtk-mmsys.c       |  6 +++++
>  2 files changed, 25 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index 02011d3168df..29252fc0aab7 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -422,9 +422,21 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
>  	{ }
>  };
>  
> +static const struct of_device_id mtk_drm_of_ids[] = {
> +	{ .compatible = "mediatek,mt2701-mmsys",
> +	  .data = &mt2701_mmsys_driver_data},
> +	{ .compatible = "mediatek,mt2712-mmsys",
> +	  .data = &mt2712_mmsys_driver_data},
> +	{ .compatible = "mediatek,mt8173-mmsys",
> +	  .data = &mt8173_mmsys_driver_data},
> +	{ }
> +};
> +
>  static int mtk_drm_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> +	struct device_node *phandle = dev->parent->of_node;
> +	const struct of_device_id *of_id;
>  	struct mtk_drm_private *private;
>  	struct device_node *node;
>  	struct component_match *match = NULL;
> @@ -443,8 +455,14 @@ static int mtk_drm_probe(struct platform_device *pdev)
>  		return -ENODEV;
>  	}
>  
> +	of_id = of_match_node(mtk_drm_of_ids, phandle);
> +	if (!of_id)
> +		return -ENODEV;
> +
> +	private->data = of_id->data;
> +
>  	/* Iterate over sibling DISP function blocks */
> -	for_each_child_of_node(dev->of_node->parent, node) {
> +	for_each_child_of_node(phandle->parent, node) {
>  		const struct of_device_id *of_id;
>  		enum mtk_ddp_comp_type comp_type;
>  		int comp_id;
> @@ -576,22 +594,11 @@ static int mtk_drm_sys_resume(struct device *dev)
>  static SIMPLE_DEV_PM_OPS(mtk_drm_pm_ops, mtk_drm_sys_suspend,
>  			 mtk_drm_sys_resume);
>  
> -static const struct of_device_id mtk_drm_of_ids[] = {
> -	{ .compatible = "mediatek,mt2701-mmsys",
> -	  .data = &mt2701_mmsys_driver_data},
> -	{ .compatible = "mediatek,mt2712-mmsys",
> -	  .data = &mt2712_mmsys_driver_data},
> -	{ .compatible = "mediatek,mt8173-mmsys",
> -	  .data = &mt8173_mmsys_driver_data},
> -	{ }
> -};
> -
>  static struct platform_driver mtk_drm_platform_driver = {
>  	.probe	= mtk_drm_probe,
>  	.remove	= mtk_drm_remove,
>  	.driver	= {
>  		.name	= "mediatek-drm",
> -		.of_match_table = mtk_drm_of_ids,
>  		.pm     = &mtk_drm_pm_ops,
>  	},
>  };
> diff --git a/drivers/soc/mediatek/mtk-mmsys.c b/drivers/soc/mediatek/mtk-mmsys.c
> index a8a98777064e..d99c8beb2ed2 100644
> --- a/drivers/soc/mediatek/mtk-mmsys.c
> +++ b/drivers/soc/mediatek/mtk-mmsys.c
> @@ -377,6 +377,7 @@ static int mtk_mmsys_probe(struct platform_device *pdev)
>  	const struct mtk_mmsys_driver_data *data;
>  	struct clk_onecell_data *clk_data;
>  	struct device *dev = &pdev->dev;
> +	struct platform_device *drm;
>  	void __iomem *config_regs;
>  	struct resource *mem;
>  	int ret;
> @@ -407,6 +408,11 @@ static int mtk_mmsys_probe(struct platform_device *pdev)
>  	if (ret)
>  		return ret;
>  
> +	drm = platform_device_register_data(&pdev->dev, "mediatek-drm",
> +					    PLATFORM_DEVID_NONE, NULL, 0);
> +	if (IS_ERR(drm))
> +		return PTR_ERR(drm);
> +
>  	return 0;
>  }
>  

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
