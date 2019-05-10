Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB881A4A7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 23:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c41Y7AfhFnTIyNe5rdf9Sldq6kD69TWABUd/xWzd7aU=; b=TXvCsMeBNwVnxX
	JLeln2UaulB3XrnB/4xTdnyezrb73q8NHYKj3wZChF+mzXHAld+GIpDvQBL1Yw68Q+uw0Fo4Zvkbw
	f9B4BoAZKahqjjKLyWvdfQktUAWMuacz/16FBV1mVNG33Z7QEad1CCFQgZIfAs55Z3yw+qs0wWbkZ
	r2p8Jc/r/5BpbRecFcemePN8K/3eo8NISD//3u3LHzHfA1hCYGJ7Al+ANyqBmLOIjS9OKMwT8mrxD
	G5jLFSIn6G8rwFJHx3YyetgTyR44zPhbnbIvw6P0KanDjlMnsmg/EWJLvvkfHu1v8pBT9yPpDZwhp
	gys37Bv6MNHW5B4X+DLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPDHf-0003Vi-BE; Fri, 10 May 2019 21:42:27 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPDHX-0003VJ-47
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 21:42:20 +0000
Received: from localhost (lfbn-1-3034-80.w90-66.abo.wanadoo.fr [90.66.53.80])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id AF7EC240002;
 Fri, 10 May 2019 21:42:07 +0000 (UTC)
Date: Fri, 10 May 2019 23:42:07 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH v3 4/4] clk: at91: sckc: add support for SAM9X60
Message-ID: <20190510214207.GG7622@piout.net>
References: <1557487388-32098-1-git-send-email-claudiu.beznea@microchip.com>
 <1557487388-32098-5-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557487388-32098-5-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_144219_466041_5CE28C04 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/05/2019 11:23:40+0000, Claudiu.Beznea@microchip.com wrote:
> From: Claudiu Beznea <claudiu.beznea@microchip.com>
> 
> Add support for SAM9X60's slow clock.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  drivers/clk/at91/sckc.c | 74 +++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 74 insertions(+)
> 
> diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
> index 2a4ac548de80..2c410f41b413 100644
> --- a/drivers/clk/at91/sckc.c
> +++ b/drivers/clk/at91/sckc.c
> @@ -415,6 +415,80 @@ static void __init of_sama5d3_sckc_setup(struct device_node *np)
>  CLK_OF_DECLARE(sama5d3_clk_sckc, "atmel,sama5d3-sckc",
>  	       of_sama5d3_sckc_setup);
>  
> +static const struct clk_slow_bits at91sam9x60_bits = {
> +	.cr_osc32en = BIT(1),
> +	.cr_osc32byp = BIT(2),
> +	.cr_oscsel = BIT(24),
> +};
> +
> +static void __init of_sam9x60_sckc_setup(struct device_node *np)
> +{
> +	void __iomem *regbase = of_iomap(np, 0);
> +	struct clk_hw_onecell_data *clk_data;
> +	struct clk_hw *slow_rc, *slow_osc;
> +	const char *xtal_name;
> +	const char *parent_names[2] = { "slow_rc_osc", "slow_osc" };
> +	bool bypass;
> +	int ret;
> +
> +	if (!regbase)
> +		return;
> +
> +	slow_rc = clk_hw_register_fixed_rate(NULL, parent_names[0], NULL, 0,
> +					     32768);
> +	if (IS_ERR(slow_rc))
> +		return;
> +
> +	xtal_name = of_clk_get_parent_name(np, 0);
> +	if (!xtal_name)
> +		goto unregister_slow_rc;
> +
> +	bypass = of_property_read_bool(np, "atmel,osc-bypass");
> +	slow_osc = at91_clk_register_slow_osc(regbase, parent_names[1],
> +					      xtal_name, 5000000, bypass,
> +					      &at91sam9x60_bits);
> +	if (IS_ERR(slow_osc))
> +		goto unregister_slow_rc;
> +
> +	clk_data = kzalloc(sizeof(*clk_data) + (2 * sizeof(struct clk_hw *)),
> +			   GFP_KERNEL);
> +	if (!clk_data)
> +		goto unregister_slow_osc;
> +
> +	/* MD_SLCK and TD_SLCK. */
> +	clk_data->num = 2;
> +	clk_data->hws[0] = clk_hw_register_fixed_rate(NULL, "md_slck",
> +						      parent_names[0],
> +						      0, 32768);
> +	if (IS_ERR(clk_data->hws[0]))
> +		goto clk_data_free;
> +
> +	clk_data->hws[1] = at91_clk_register_sam9x5_slow(regbase, "td_slck",
> +							 parent_names, 2,
> +							 &at91sam9x60_bits);
> +	if (IS_ERR(clk_data->hws[1]))
> +		goto unregister_md_slck;
> +
> +	ret = of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_data);
> +	if (WARN_ON(ret))
> +		goto unregister_td_slck;
> +
> +	return;
> +
> +unregister_td_slck:
> +	clk_hw_unregister(clk_data->hws[1]);
> +unregister_md_slck:
> +	clk_hw_unregister(clk_data->hws[0]);
> +clk_data_free:
> +	kfree(clk_data);
> +unregister_slow_osc:
> +	clk_hw_unregister(slow_osc);
> +unregister_slow_rc:
> +	clk_hw_unregister(slow_rc);
> +}
> +CLK_OF_DECLARE(sam9x60_clk_sckc, "microchip,sam9x60-sckc",
> +	       of_sam9x60_sckc_setup);
> +
>  static int clk_sama5d4_slow_osc_prepare(struct clk_hw *hw)
>  {
>  	struct clk_sama5d4_slow_osc *osc = to_clk_sama5d4_slow_osc(hw);
> -- 
> 2.7.4
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
