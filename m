Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B58D116A55
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 10:58:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KbJM6fymPQbZ2lGenXbTQiCp/CjrZ46WAoMpNwEjjJY=; b=ctNThla7A+nM9Z
	pmx4WgE5/D/EK4kz4l20hKzvuTgAhc6QydXoav/KFI3eYLQLZQd6ZDAc+iC4eMsH2ogNd3nQve0RU
	Ht03a0TxPthvZdyC6PAj0JM7+jcPj1b3d6nq1VzN2TGDu8qpw5sOogYLzN7S9n7VMhaCjy0PFUypM
	JeYEj+4DOfN8L/uoInLtcws0i/x6cvxKyMSRIFrH69Yi32Nho/5iREWx/ZhpXN+xRf/ZwGTHyZ5NJ
	oerRO6+kVRHhk6wP5mf75g0w3ouqKMDk9T0AyqPvXcv4ASpvRkRcjYqmoIPRlC8qGP7SMoBSXm+YX
	UcCJv5+WjGOJtGrHGsqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieFoW-0005ai-7H; Mon, 09 Dec 2019 09:58:48 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFoO-0005aH-54; Mon, 09 Dec 2019 09:58:41 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 16FCF28BB97
Subject: Re: [resend PATCH v6 06/12] clk: mediatek: mt2701: switch mmsys to
 platform device probing
To: matthias.bgg@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 ck.hu@mediatek.com, p.zabel@pengutronix.de, airlied@linux.ie,
 mturquette@baylibre.com, sboyd@kernel.org, ulrich.hecht+renesas@gmail.com,
 laurent.pinchart@ideasonboard.com
References: <20191207224740.24536-1-matthias.bgg@kernel.org>
 <20191207224740.24536-7-matthias.bgg@kernel.org>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <c08e8d32-6126-7be3-4f5a-1b94a175a339@collabora.com>
Date: Mon, 9 Dec 2019 10:58:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191207224740.24536-7-matthias.bgg@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_015840_456684_E644E940 
X-CRM114-Status: GOOD (  18.35  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, rdunlap@infradead.org, frank-w@public-files.de,
 sean.wang@mediatek.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, sean.wang@kernel.org, wens@csie.org,
 drinkcat@chromium.org, linux-mediatek@lists.infradead.org, mbrugger@suse.com,
 hsinyi@chromium.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Matthias,

On 7/12/19 23:47, matthias.bgg@kernel.org wrote:
> From: Matthias Brugger <mbrugger@suse.com>
> 
> Switch probing for the MMSYS to support invocation to a plain
> paltform device. The driver will be probed by the DRM subsystem.
> 
> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
> ---
>  drivers/clk/mediatek/clk-mt2701-mm.c | 41 ++++++++++++++++++++--------
>  1 file changed, 29 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/clk/mediatek/clk-mt2701-mm.c b/drivers/clk/mediatek/clk-mt2701-mm.c
> index 054b597d4a73..4a9433c2b2b8 100644
> --- a/drivers/clk/mediatek/clk-mt2701-mm.c
> +++ b/drivers/clk/mediatek/clk-mt2701-mm.c
> @@ -4,14 +4,20 @@
>   * Author: Shunli Wang <shunli.wang@mediatek.com>
>   */
>  
> +#include <linux/module.h>
>  #include <linux/clk-provider.h>
>  #include <linux/platform_device.h>
> +#include <linux/slab.h>
>  
>  #include "clk-mtk.h"
>  #include "clk-gate.h"
>  
>  #include <dt-bindings/clock/mt2701-clk.h>
>  
> +struct clk_mt2701_mm_priv {
> +	struct clk_onecell_data *clk_data;
> +};
> +
>  static const struct mtk_gate_regs disp0_cg_regs = {
>  	.set_ofs = 0x0104,
>  	.clr_ofs = 0x0108,
> @@ -79,23 +85,25 @@ static const struct mtk_gate mm_clks[] = {
>  	GATE_DISP1(CLK_MM_TVE_FMM, "mm_tve_fmm", "mm_sel", 14),
>  };
>  
> -static const struct of_device_id of_match_clk_mt2701_mm[] = {
> -	{ .compatible = "mediatek,mt2701-mmsys", },
> -	{}
> -};
> -
>  static int clk_mt2701_mm_probe(struct platform_device *pdev)
>  {
> -	struct clk_onecell_data *clk_data;
>  	int r;
> -	struct device_node *node = pdev->dev.of_node;
> +	struct device_node *node = pdev->dev.parent->of_node;
> +	struct clk_mt2701_mm_priv *private;
> +
> +	private = devm_kzalloc(&pdev->dev, sizeof(*private), GFP_KERNEL);
> +	if (!private)
> +		return -ENOMEM;
>  
> -	clk_data = mtk_alloc_clk_data(CLK_MM_NR);
> +	private->clk_data = mtk_alloc_clk_data(CLK_MM_NR);
> +
> +	platform_set_drvdata(pdev, private);
>  
>  	mtk_clk_register_gates(node, mm_clks, ARRAY_SIZE(mm_clks),
> -						clk_data);
> +					private->clk_data);
>  
> -	r = of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
> +	r = of_clk_add_provider(node, of_clk_src_onecell_get,
> +					private->clk_data);
>  	if (r)
>  		dev_err(&pdev->dev,
>  			"could not register clock provider: %s: %d\n",
> @@ -104,12 +112,21 @@ static int clk_mt2701_mm_probe(struct platform_device *pdev)
>  	return r;
>  }
>  
> +static int clk_mt2701_mm_remove(struct platform_device *pdev)
> +{
> +	struct clk_mt2701_mm_priv *private = platform_get_drvdata(pdev);
> +

I think that private->clk_data->clks is also kallocated and need to be freed?

But I think that the best approach now is to switch to use devm allocations in
clk-mt2701-mm.c and this remove function will not be needed.

> +	kfree(private->clk_data);
> +
> +	return 0;
> +}
> +
>  static struct platform_driver clk_mt2701_mm_drv = {
>  	.probe = clk_mt2701_mm_probe,
> +	.remove = clk_mt2701_mm_remove,
>  	.driver = {
>  		.name = "clk-mt2701-mm",
> -		.of_match_table = of_match_clk_mt2701_mm,
>  	},
>  };
>  
> -builtin_platform_driver(clk_mt2701_mm_drv);
> +module_platform_driver(clk_mt2701_mm_drv);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
