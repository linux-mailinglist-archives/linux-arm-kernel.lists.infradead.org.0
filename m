Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD35F37132
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 12:03:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q9v3BjiydB/P8HR/PWifDcQzq3K2iEaE4KnesW8yh5w=; b=IkhoJE4HyFD5oY
	qfKJzuDiZgWVxjbZnPJaYPQkS8OlesZ36kiAVUPxsIUNLhNXzBUggPAgyV2WYIp0G1Ma7jr3p04b7
	L1eOXO1ZS95oj7tAgw+LFcmfxKjV+o3EenIBlc4VIdrU1UaRF6vxbamxvT3YqgHqgsb2rPn23umT2
	yXH8b4iAFg4jVxhQbrZheq6TTTeu5zEuZ0EwWS8L5wcWSFZJnnulwkYx4h1griZfNnm/ADcLm10s8
	mNV8wtDJt/cC0wxXF6q5G/lx+TZ2diCgWbk7cDcTpjamw1chvRwSLIxp4XJ1mPyPnF48fXW7tmwwR
	EocqNQlPCx7Tx9+Hs1fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYpEh-0006RH-ON; Thu, 06 Jun 2019 10:03:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYpEZ-0006Qc-FX; Thu, 06 Jun 2019 10:03:01 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hYpEW-0003Vv-Kz; Thu, 06 Jun 2019 12:02:56 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: "Leonidas P. Papadakos" <papadakospan@gmail.com>
Subject: Re: [PATCH 1/2] clk: rockchip: add clock for the watchdog pclk on
 rk3328
Date: Thu, 06 Jun 2019 12:02:56 +0200
Message-ID: <3485393.4UdOu2YNQE@phil>
In-Reply-To: <20190605235714.22432-1-papadakospan@gmail.com>
References: <20190605235714.22432-1-papadakospan@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_030259_662113_3B2ECFED 
X-CRM114-Status: GOOD (  20.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Am Donnerstag, 6. Juni 2019, 01:57:13 CEST schrieb Leonidas P. Papadakos:
> From: <itdaniher@gmail.com>

Why is the From different from the Signed-off-by? Would also need a full name.
If the patch is from you, please just use the same From as for the Signed-off-by.

> 
> Following the discussion here:
> https://github.com/rockchip-linux/kernel/issues/123
> 
> it can be seen that these are the changes needed to enable the use of the hardware watchdog in the rk3328 SoC.
> 
> This is in line with past changes for the rk3288:
> http://lists.infradead.org/pipermail/linux-rockchip/2015-January/002314.html
> 
> Signed-off-by: Leonidas P. Papadakos <papadakospan@gmail.com>
> ---
>  drivers/clk/rockchip/clk-rk3328.c      | 9 +++++++++
>  include/dt-bindings/clock/rk3328-cru.h | 1 +
>  2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3328.c b/drivers/clk/rockchip/clk-rk3328.c
> index 076b9777a..546ee0ab7 100644
> --- a/drivers/clk/rockchip/clk-rk3328.c
> +++ b/drivers/clk/rockchip/clk-rk3328.c
> @@ -876,6 +876,8 @@ static const char *const rk3328_critical_clocks[] __initconst = {
>  
>  static void __init rk3328_clk_init(struct device_node *np)
>  {
> +	struct clk *clk;
> +
>  	struct rockchip_clk_provider *ctx;
>  	void __iomem *reg_base;
>  
> @@ -892,6 +894,13 @@ static void __init rk3328_clk_init(struct device_node *np)
>  		return;
>  	}
>  
> +	clk = clk_register_fixed_factor(NULL, "pclk_wdt", "pclk_bus", 0, 1, 1);
> +	if (IS_ERR(clk))
> +		pr_warn("%s: could not register clock pclk_wdt: %ld\n",
> +			__func__, PTR_ERR(clk));
> +	else
> +		rockchip_clk_add_lookup(ctx, clk, PCLK_WDT);
> +

I've just Cc'ed you on 2 patches adding a SGRF_GATE clock-type. Please
use that as base for you rk3328-wdt-clock, so that we don't introduce more
boilderplate code.


>  	rockchip_clk_register_plls(ctx, rk3328_pll_clks,
>  				   ARRAY_SIZE(rk3328_pll_clks),
>  				   RK3328_GRF_SOC_STATUS0);

> diff --git a/include/dt-bindings/clock/rk3328-cru.h b/include/dt-bindings/clock/rk3328-cru.h
> index afb811340..555b4ff66 100644
> --- a/include/dt-bindings/clock/rk3328-cru.h
> +++ b/include/dt-bindings/clock/rk3328-cru.h
> @@ -164,6 +164,7 @@
>  #define PCLK_DCF		233
>  #define PCLK_SARADC		234
>  #define PCLK_ACODECPHY		235
> +#define PCLK_WDT		236
>  
>  /* hclk gates */
>  #define HCLK_PERI		308

please split the addition of the clock-id into a separate patch only adding
said id.


Thanks
Heiko




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
