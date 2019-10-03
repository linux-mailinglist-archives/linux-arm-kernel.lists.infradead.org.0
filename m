Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 865A3CADC6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 20:10:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZMZEZwVAD257LS52JKaD5JQfgk7/ulWUpe+vyCVxeJ0=; b=sR3y6aA08tJGGI
	ZFZ7pH3gN3tAhYJQ8sPt6Sl6H3+l0Uyj2pujWipjXCG+DBfDVyKU5MkNdt/nKB0wXAgTIDHdiZZZw
	wHGcGZruysXepDeRrko06LIM97MEeMLkotIZuMUHZYSqlMn/JY/ThkBn5EyuoSHrBz7nliQWfdHp7
	eZhrCOmIs47l2k4WVl2jk/h31n4Y/zWaY41KOtw+Shuw9xXpEVClpCj/Q5ypp+ZCeYcxYdYk83WfI
	nKs5ALAfCTipor6xamVqGzYhS+UWu4H0WPBv4o7DEsbn9Tlvuko+0BCIXAw3R7GocCeF+8WVluy/F
	Dos/xXa+L/nxsyhoHceg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG5YQ-0001c7-Ga; Thu, 03 Oct 2019 18:10:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG5YH-0001CA-1k; Thu, 03 Oct 2019 18:10:10 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4D6D620679;
 Thu,  3 Oct 2019 18:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570126207;
 bh=sB5Ps8gXl1Clpj94aGeMy9RyrsHpbQ1qiqUJfZHEo/o=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=Ee2eg6M52ngE6uPWZT6vmU/q/8MON8SHGMolIrjrhaXt99aTxP7MORkqW72JwHLWX
 GFovIgyUsk60pKR2azvezkOvf7B41KGqZjUnLOS519CJyMh4TG5KR5jR7+oAvMN6Bz
 kkI9KGZWbT0OngnPIz3kDuiyq3nk4kBfNwSfjApg=
MIME-Version: 1.0
In-Reply-To: <1569553244-3165-2-git-send-email-zhangqing@rock-chips.com>
References: <1569553244-3165-1-git-send-email-zhangqing@rock-chips.com>
 <1569553244-3165-2-git-send-email-zhangqing@rock-chips.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Elaine Zhang <zhangqing@rock-chips.com>, heiko@sntech.de
Subject: Re: [PATCH v3 1/5] clk: rockchip: Add supprot to limit input rate for
 fractional divider
User-Agent: alot/0.8.1
Date: Thu, 03 Oct 2019 11:10:06 -0700
Message-Id: <20191003181007.4D6D620679@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_111009_142478_A3021E81 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: huangtao@rock-chips.com, xf@rock-chips.com, mturquette@baylibre.com,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Finley Xiao <finley.xiao@rock-chips.com>, xxx@rock-chips.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Elaine Zhang (2019-09-26 20:00:40)
> diff --git a/drivers/clk/rockchip/clk-px30.c b/drivers/clk/rockchip/clk-px30.c
> index 3a501896b280..6c2f53dc73b6 100644
> --- a/drivers/clk/rockchip/clk-px30.c
> +++ b/drivers/clk/rockchip/clk-px30.c
> @@ -13,6 +13,7 @@
>  #include "clk.h"
>  
>  #define PX30_GRF_SOC_STATUS0           0x480
> +#define PX30_FRAC_MAX_PRATE            600000000
>  
>  enum px30_plls {
>         apll, dpll, cpll, npll, apll_b_h, apll_b_l,
> @@ -420,7 +421,7 @@ enum px30_pmu_plls {
>         COMPOSITE_FRACMUX(0, "dclk_vopb_frac", "dclk_vopb_src", CLK_SET_RATE_PARENT,
>                         PX30_CLKSEL_CON(6), 0,
>                         PX30_CLKGATE_CON(2), 3, GFLAGS,
> -                       &px30_dclk_vopb_fracmux),
> +                       &px30_dclk_vopb_fracmux, 0),
>         GATE(DCLK_VOPB, "dclk_vopb", "dclk_vopb_mux", CLK_SET_RATE_PARENT,
>                         PX30_CLKGATE_CON(2), 4, GFLAGS),
>         COMPOSITE(0, "dclk_vopl_src", mux_npll_cpll_p, 0,
> @@ -429,7 +430,7 @@ enum px30_pmu_plls {
>         COMPOSITE_FRACMUX(0, "dclk_vopl_frac", "dclk_vopl_src", CLK_SET_RATE_PARENT,
>                         PX30_CLKSEL_CON(9), 0,
>                         PX30_CLKGATE_CON(2), 7, GFLAGS,
> -                       &px30_dclk_vopl_fracmux),
> +                       &px30_dclk_vopl_fracmux, 0),
>         GATE(DCLK_VOPL, "dclk_vopl", "dclk_vopl_mux", CLK_SET_RATE_PARENT,
>                         PX30_CLKGATE_CON(2), 8, GFLAGS),
>  
> @@ -555,7 +556,7 @@ enum px30_pmu_plls {
>         COMPOSITE_FRACMUX(0, "clk_pdm_frac", "clk_pdm_src", CLK_SET_RATE_PARENT,

Can you make a new macro COMPOSITE_FRACMUX_PRATE or something that
passes in another argument so that we don't have to change the users
of this macro when they don't care?

>                         PX30_CLKSEL_CON(27), 0,
>                         PX30_CLKGATE_CON(9), 10, GFLAGS,
> -                       &px30_pdm_fracmux),
> +                       &px30_pdm_fracmux, PX30_FRAC_MAX_PRATE),
>         GATE(SCLK_PDM, "clk_pdm", "clk_pdm_mux", CLK_SET_RATE_PARENT,
>                         PX30_CLKGATE_CON(9), 11, GFLAGS),
>  
> diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
> index ce1d2446f142..bda5d50c5319 100644
> --- a/drivers/clk/rockchip/clk-rk3399.c
> +++ b/drivers/clk/rockchip/clk-rk3399.c
> @@ -13,6 +13,12 @@
>  #include <dt-bindings/clock/rk3399-cru.h>
>  #include "clk.h"
>  
> +#define RK3399_I2S_FRAC_MAX_PRATE       800000000
> +#define RK3399_UART_FRAC_MAX_PRATE     800000000
> +#define RK3399_SPDIF_FRAC_MAX_PRATE    600000000
> +#define RK3399_VOP_FRAC_MAX_PRATE      600000000
> +#define RK3399_WIFI_FRAC_MAX_PRATE     600000000

Is the "max rate" really just the frequency of the parent? If so, why
can't round_rate() on the parent figure out what that value is and only
provide that frequency?

> +
>  enum rk3399_plls {
>         lpll, bpll, dpll, cpll, gpll, npll, vpll,
>  };
> diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
> index 546e810c3560..fac5a4a3f5c3 100644
> --- a/drivers/clk/rockchip/clk.c
> +++ b/drivers/clk/rockchip/clk.c
> @@ -184,12 +184,26 @@ static void rockchip_fractional_approximation(struct clk_hw *hw,
>         unsigned long p_rate, p_parent_rate;
>         struct clk_hw *p_parent;
>         unsigned long scale;
> +       u32 div;

Why u32 instead of unsigned long?

>  
>         p_rate = clk_hw_get_rate(clk_hw_get_parent(hw));
> -       if ((rate * 20 > p_rate) && (p_rate % rate != 0)) {
> +       if (((rate * 20 > p_rate) && (p_rate % rate != 0)) ||
> +           (fd->max_prate && fd->max_prate < p_rate)) {
>                 p_parent = clk_hw_get_parent(clk_hw_get_parent(hw));
>                 p_parent_rate = clk_hw_get_rate(p_parent);
>                 *parent_rate = p_parent_rate;
> +               if (fd->max_prate && p_parent_rate > fd->max_prate) {
> +                       div = DIV_ROUND_UP(p_parent_rate, fd->max_prate);
> +                       *parent_rate = p_parent_rate / div;
> +               }
> +
> +               if (*parent_rate < rate * 20) {

20 seems very magical.

> +                       pr_err("%s parent_rate(%ld) is low than rate(%ld)*20, fractional div is not allowed\n",

s/low/lower/?

> +                              clk_hw_get_name(hw), *parent_rate, rate);
> +                       *m = 0;
> +                       *n = 1;
> +                       return;
> +               }
>         }
>  
>         /*
> diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
> index 2ae7604783dd..30993c0630a3 100644
> --- a/include/linux/clk-provider.h
> +++ b/include/linux/clk-provider.h
> @@ -624,6 +624,7 @@ struct clk_hw *clk_hw_register_fixed_factor(struct device *dev,
>   * @mwidth:    width of the numerator bit field
>   * @nshift:    shift to the denominator bit field
>   * @nwidth:    width of the denominator bit field
> + * @max_parent:        the maximum frequency of fractional divider parent clock

This doesn't match the name of the member.

>   * @lock:      register lock
>   *
>   * Clock with adjustable fractional divider affecting its output frequency.
> @@ -647,6 +648,7 @@ struct clk_fractional_divider {
>         u8              nwidth;
>         u32             nmask;
>         u8              flags;
> +       unsigned long   max_prate;



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
