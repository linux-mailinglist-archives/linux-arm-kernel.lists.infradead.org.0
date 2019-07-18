Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 559E26D21B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 18:38:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dkmLUPu8GZ0jRd7SOzgi42OrdxE/hIjS3Qp6L6FCoaM=; b=I/Mz3pyXEa48dK
	vMFJjGTSXhp3mBgeiv63y5aHqJxEkZXB2j0nRarJX3hrmSGj3FLm4b7AIaY/hzYxK4cd3MjtxNSHV
	VCyH/LwRZErf0IEui9wTg646nucc5ExKS2jXutLVzLJn+k+PwlYojTZgYbxeWuznmp9xxN49bBLtD
	ik5CZKQ+e+x8LN9az9dvKPu89lH2aQ3mTIMZluj54bkGwmfwaquBSO/A9YxjRNy8uDI42GqM55k/i
	5Y7VWPSEQ485m/dnMxcuQ6HuYKoqAP1qC3M5CA/VHByaOxaliJzZ8HSyKcZpwb+CMRh1w5CtH2iZh
	SZxXzFcdsovOh5XiHd6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho9QF-0004Ff-EL; Thu, 18 Jul 2019 16:38:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho9Q2-0004F6-IT
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 16:38:12 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9D25D217F4;
 Thu, 18 Jul 2019 16:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563467889;
 bh=K7meXXjYyqnlzFMrv9ruLArIEJv9/k7mncV9ahtFaCI=;
 h=In-Reply-To:References:Subject:To:Cc:From:Date:From;
 b=NW0FgVPtksE6PaWqreV/FSqVjgryxwQIHd+9a+1BNx6usHg+ghnR7rOPjh++hA+Qf
 tWdtj/vFoNv0cma8UIyZYRBgiPpU3l4Ada4FasGQuBQ2x3jR5LBaGqJDPy9wU3bp2x
 vhu7fUSQQseLvY8GdjlZ+/prIfZj7NEH6oZWE42U=
MIME-Version: 1.0
In-Reply-To: <E1hhAN0-0007Jn-NP@rmk-PC.armlinux.org.uk>
References: <E1hhAN0-0007Jn-NP@rmk-PC.armlinux.org.uk>
Subject: Re: [PATCH] ARM: sa1100: convert to common clock framework
To: Michael Turquette <mturquette@baylibre.com>,
 Russell King <rmk+kernel@armlinux.org.uk>
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Thu, 18 Jul 2019 09:38:08 -0700
Message-Id: <20190718163809.9D25D217F4@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_093810_649403_61166D7E 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Russell King (2019-06-29 03:14:10)
> Convert sa1100 to use the common clock framework.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> ---
> Please ack; this is part of a larger series.  Thanks.

Just a few minor comments but otherwise looks good to me.

> diff --git a/arch/arm/mach-sa1100/clock.c b/arch/arm/mach-sa1100/clock.c
> index 6199e87447ca..523ef25618f7 100644
> --- a/arch/arm/mach-sa1100/clock.c
> +++ b/arch/arm/mach-sa1100/clock.c
> +static const char * const clk_tucr_parents[] = {
> +       "clk32768", "clk3686400",
>  };

It would be great if you used the new way of specifying clk parents with
direct pointers instead of strings. See commit fc0c209c147f ("clk: Allow
parents to be specified without string names") for some details.

>  
> -struct clk {
> -       const struct clkops     *ops;
> -       unsigned int            enabled;
> -};
> -
> -#define DEFINE_CLK(_name, _ops)                                \
> -struct clk clk_##_name = {                             \
> -               .ops    = _ops,                         \
> -       }
> -
> -static DEFINE_SPINLOCK(clocks_lock);
> -
> -/* Dummy clk routine to build generic kernel parts that may be using them */
> -long clk_round_rate(struct clk *clk, unsigned long rate)
> -{
> -       return clk_get_rate(clk);
> -}
> -EXPORT_SYMBOL(clk_round_rate);
> -
> -int clk_set_rate(struct clk *clk, unsigned long rate)
> -{
> -       return 0;
> -}
> -EXPORT_SYMBOL(clk_set_rate);
> -
> -int clk_set_parent(struct clk *clk, struct clk *parent)
> -{
> -       return 0;
> -}
> -EXPORT_SYMBOL(clk_set_parent);
> +static DEFINE_SPINLOCK(tucr_lock);
>  
> -struct clk *clk_get_parent(struct clk *clk)
> +static int clk_gpio27_enable(struct clk_hw *hw)
>  {
> -       return NULL;
> -}
> -EXPORT_SYMBOL(clk_get_parent);
> +       unsigned long flags;
>  
> -static void clk_gpio27_enable(struct clk *clk)
> -{
>         /*
>          * First, set up the 3.6864MHz clock on GPIO 27 for the SA-1111:
>          * (SA-1110 Developer's Manual, section 9.1.2.1)
>          */
> +       local_irq_save(flags);
>         GAFR |= GPIO_32_768kHz;
>         GPDR |= GPIO_32_768kHz;
> -       TUCR = TUCR_3_6864MHz;
> +       local_irq_restore(flags);
> +
> +       return 0;
>  }
>  
> -static void clk_gpio27_disable(struct clk *clk)
> +static void clk_gpio27_disable(struct clk_hw *hw)
>  {
> -       TUCR = 0;
> +       unsigned long flags;
> +
> +       local_irq_save(flags);

Why just disable irqs here?

>         GPDR &= ~GPIO_32_768kHz;
>         GAFR &= ~GPIO_32_768kHz;
> +       local_irq_restore(flags);
>  }
>  
> -static void clk_cpu_enable(struct clk *clk)
> -{
> -}
> +static const struct clk_ops clk_gpio27_ops = {
> +       .enable = clk_gpio27_enable,
> +       .disable = clk_gpio27_disable,
> +};
>  
> -static void clk_cpu_disable(struct clk *clk)
> -{
> -}
> +static const char * const clk_gpio27_parents[] = {
> +       "tucr-mux",
> +};
>  
> -static unsigned long clk_cpu_get_rate(struct clk *clk)
> +static const struct clk_init_data clk_gpio27_init_data __initconst = {
> +       .name = "gpio27",
> +       .ops = &clk_gpio27_ops,
> +       .parent_names = clk_gpio27_parents,
> +       .num_parents = ARRAY_SIZE(clk_gpio27_parents),
> +       .flags = CLK_IS_BASIC,

CLK_IS_BASIC is gone. Please don't use it.

> +};
> +
> +/*
> + * Derived from the table 8-1 in the SA1110 manual, the MPLL appears to
> + * multiply its input rate by 4 x (4 + PPCR).  This calculation gives
> + * the exact rate.  The figures given in the table are the rates rounded
> + * to 100kHz.  Stick with sa11x0_getspeed() for the time being.
[...]
> +static const struct clk_init_data clk_mpll_init_data __initconst = {
> +       .name = "mpll",
> +       .ops = &clk_mpll_ops,
> +       .parent_names = clk_mpll_parents,
> +       .num_parents = ARRAY_SIZE(clk_mpll_parents),
> +       .flags = CLK_IS_BASIC | CLK_GET_RATE_NOCACHE | CLK_IS_CRITICAL,

Please add a comment about these last two flags so we know why the rate
can't be cached and the clk is critical.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
