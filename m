Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C191BF634
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 13:11:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I4L9d4oR5RBydoZn5uk0Sma/5G/Qm+qlFbAuuD3+1NU=; b=m2mtcfNMmaSGV3
	QPHf0AKjoSXA157QBf1VmBDmhCb6zKyszDcHwC+kfAzz0oaW1VTThxoBZen52jsb9Jaiim3Yjw2CB
	KeGEx5E8FlYK3/0XgFS4Jxa0fh7RV1o7Sw6AYZJShu7pbPS/e644OjnnXO4pw200FkyGlLmFkpWZm
	vvThVWo/Wtn0IV+z4ah8M3zJTHIy9FfJjVdVShAP4su980dHlj9nZqqK3ZaJJN9NfikrbHiO14qgf
	LAT71Qhqnw95woP7tQXwmCLmJ6/QfN5lremyEn/EJWXo89t7jkTO7Bj52pfqP9Q55UkM17krMjPLp
	COKzb/9V76OF/BZH1OGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU76U-0006Ff-UZ; Thu, 30 Apr 2020 11:11:42 +0000
Received: from plaes.org ([188.166.43.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU75y-0005wj-MI
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 11:11:12 +0000
Received: from plaes.org (localhost [127.0.0.1])
 by plaes.org (Postfix) with ESMTPSA id E3AAB40020;
 Thu, 30 Apr 2020 11:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=plaes.org; s=mail;
 t=1588245037; bh=wGwTZHV5v8qKni061zMNTsjG2rEXMiZAla90C3apllk=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=H25phI8N7ycVJKywAOIeqjmSrnuFDp4mPDmCjwY7WXtyFgcZWLOYxR4dIt8Pbj+oh
 Nscjifko/voYP2DVEfa314VVn53IBysTYElbzpqYYrJlXUJJrl3WEfsMr1syB87sqv
 vdysgYyw9e2GKyZ2NgQ09dbJGN2b2B/ghF8wqbC5/6GdxRNuUx+7OGEw+oT0vYfy62
 T/G99P6ZevIvy0nYR/gH/VLmTATGsoR/MPgGl1O476EjMyOIvjFqWwBQEsASz51vEw
 llk3ipdBIw4yYYMHjVpZIg40Tq9VRKEC7/nI1PNGofwDkRNmLQwuQqdXFv6qqYhUeN
 0wAQIe2+w1LbQ==
Date: Thu, 30 Apr 2020 11:10:36 +0000
From: Priit Laes <plaes@plaes.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 2/6] clk: sunxi-ng: a31: Register regmap for sun6i CCU
Message-ID: <20200430111036.GB32281@plaes.org>
References: <20200429204612.31883-1-plaes@plaes.org>
 <20200429204612.31883-3-plaes@plaes.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429204612.31883-3-plaes@plaes.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_041110_884706_A99631DC 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 11:46:08PM +0300, Priit Laes wrote:

I somehow messed up this patch when preparing the patchset,
so I'll resend the fixed patch with v3.

> On sun6i, the gmac clock is handled by the dwmac-sunxi driver, but
> its configuration register is located in the CCU register range,
> requiring proper regmap setup.
> 
> In order to do that, we use CLK_OF_DECLARE_DRIVER to initialize
> sun7i ccu, which clears the OF_POPULATED flag, allowing the
> platform device to probe the same resource with device node.
> 
> Signed-off-by: Priit Laes <plaes@plaes.org>
> ---
>  drivers/clk/sunxi-ng/ccu-sun6i-a31.c | 60 +++++++++++++++++++++++++++-
>  1 file changed, 58 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/sunxi-ng/ccu-sun6i-a31.c b/drivers/clk/sunxi-ng/ccu-sun6i-a31.c
> index 9b40d53266a3..086eb93a4efd 100644
> --- a/drivers/clk/sunxi-ng/ccu-sun6i-a31.c
> +++ b/drivers/clk/sunxi-ng/ccu-sun6i-a31.c
> @@ -1262,5 +1262,61 @@ static void __init sun6i_a31_ccu_setup(struct device_node *node)
>  	ccu_mux_notifier_register(pll_cpu_clk.common.hw.clk,
>  				  &sun6i_a31_cpu_nb);
>  }
> -CLK_OF_DECLARE(sun6i_a31_ccu, "allwinner,sun6i-a31-ccu",
> -	       sun6i_a31_ccu_setup);
> +CLK_OF_DECLARE_DRIVER(sun6i_a31_ccu, "allwinner,sun6i-a31-ccu",
> +		      sun6i_a31_ccu_setup);
> +
> +/*
> + * Regmap for the GMAC driver (dwmac-sunxi) to allow access to
> + * GMAC configuration register.
> + */
> +#define SUN6I_A31_GMAC_CFG_REG 0xD0
> +static bool sun6i_a31_ccu_regmap_accessible_reg(struct device *dev,
> +						unsigned int reg)
> +{
> +	if (reg == SUN6I_A31_GMAC_CFG_REG)
> +		return true;
> +	return false;
> +}
> +
> +static struct regmap_config sun6i_a31_ccu_regmap_config = {
> +	.reg_bits	= 32,
> +	.val_bits	= 32,
> +	.reg_stride	= 4,
> +	.max_register	= 0x308, /* clk_out_b */
> +
> +	.readable_reg	= sun6i_a31_ccu_regmap_accessible_reg,
> +	.writeable_reg	= sun6i_a31_ccu_regmap_accessible_reg,
> +};
> +
> +static int sun6i_a31_ccu_probe_regmap(struct platform_device *pdev)
> +{
> +	void __iomem *reg;
> +	struct resource *res;
> +	struct regmap *regmap;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	reg = devm_ioremap(&pdev->dev, res->start, resource_size(res));
> +	if (IS_ERR(reg))
> +		return PTR_ERR(reg);
> +
> +	regmap = devm_regmap_init_mmio(&pdev->dev, reg,
> +				       &sun6i_a31_ccu_regmap_accessible_reg);
> +	if (IS_ERR(regmap))
> +		return PTR_ERR(regmap);
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id sun6i_a31_ccu_ids[] = {
> +	{ .compatible = "allwinner,sun6i-a31-ccu"},
> +	{ }
> +};
> +
> +static struct platform_driver sun6i_a31_ccu_driver = {
> +	.probe = sun6i_a31_ccu_probe_regmap,
> +	.driver = {
> +		.name = "sun6i-a31-ccu",
> +		.of_match_table = sun6i_a31_ccu_ids,
> +	},
> +};
> +builtin_platform_driver(sun6i_a31_ccu_driver);
> -- 
> 2.26.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
