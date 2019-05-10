Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB9F1A3C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 22:12:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oUbcMht3hhu27Xu0dEzHnEstDOl7cntpexUKgi8QLd0=; b=h0BNZyEJ0NOWVy
	ZwLR+Hf9So/q5+ZuL4Z9aJJ0s8XWWrmlmbK3w4hQ8vUaw+zR/wM7azut3p1nRgzemUR+gOQmSOlEZ
	wnjn/iWLi9iT0iLHa4Bkp15zBDMIY12x0QSkE9WaTXibtvna0EglmYFLaRP/omL+/WiWbkIgUK1V4
	z90dfFcfbJKu78wNrnZryFiFLEkH73SD3Mt4oIYyjHqRM/feQCUKCbdsxoFpGYPtb6dQ4qrLYTZnp
	xwEJul36HnM5KIP+XU8AKPCULxEHt6f0ITvphKrSCYBXHR5yH/cxdK+uBv7DIaSNGMpp+vfqRjQjp
	J0l82jPoHqyq95ti+JtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPBsC-0006Zg-2v; Fri, 10 May 2019 20:12:04 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPBs5-0006Yj-Gu
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 20:11:59 +0000
X-Originating-IP: 90.66.53.80
Received: from localhost (lfbn-1-3034-80.w90-66.abo.wanadoo.fr [90.66.53.80])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id F2EA7C0002;
 Fri, 10 May 2019 20:11:43 +0000 (UTC)
Date: Fri, 10 May 2019 22:11:43 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH v3 1/4] clk: at91: sckc: sama5d4 has no bypass support
Message-ID: <20190510201143.GC7622@piout.net>
References: <1557487388-32098-1-git-send-email-claudiu.beznea@microchip.com>
 <1557487388-32098-2-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557487388-32098-2-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_131157_714848_CAA71276 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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

On 10/05/2019 11:23:27+0000, Claudiu.Beznea@microchip.com wrote:
> From: Claudiu Beznea <claudiu.beznea@microchip.com>
> 
> The slow clock of SAMA5D4 has no bypass support thus remove it.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  drivers/clk/at91/sckc.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
> index e76b1d64e905..6c55a7a86f79 100644
> --- a/drivers/clk/at91/sckc.c
> +++ b/drivers/clk/at91/sckc.c
> @@ -429,7 +429,6 @@ static void __init of_sama5d4_sckc_setup(struct device_node *np)
>  	struct clk_init_data init;
>  	const char *xtal_name;
>  	const char *parent_names[2] = { "slow_rc_osc", "slow_osc" };
> -	bool bypass;
>  	int ret;
>  
>  	if (!regbase)
> @@ -443,8 +442,6 @@ static void __init of_sama5d4_sckc_setup(struct device_node *np)
>  
>  	xtal_name = of_clk_get_parent_name(np, 0);
>  
> -	bypass = of_property_read_bool(np, "atmel,osc-bypass");
> -
>  	osc = kzalloc(sizeof(*osc), GFP_KERNEL);
>  	if (!osc)
>  		return;
> @@ -459,9 +456,6 @@ static void __init of_sama5d4_sckc_setup(struct device_node *np)
>  	osc->sckcr = regbase;
>  	osc->startup_usec = 1200000;
>  
> -	if (bypass)
> -		writel((readl(regbase) | AT91_SCKC_OSC32BYP), regbase);
> -
>  	hw = &osc->hw;
>  	ret = clk_hw_register(NULL, &osc->hw);
>  	if (ret) {
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
