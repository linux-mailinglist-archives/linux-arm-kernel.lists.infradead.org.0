Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F4A1D3F84
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 23:02:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8otrhAcdnM22WIIYkAEGuq3UyF1eZcDxlq15F3qur1Y=; b=qUDHUCeSO6ZX11
	hyL7Th/AVkoEUYhf5S0yhYuoVWTtEPatkJU7SUf0x20stuInq1lwfa0T5hODvELg7Tpg4+IGDQJn6
	y7a4K/GX9Pg9rQSlO47suc+XXk+y5srN6f6qS1lVk1xQXU9ml4TNn8KfI6wBxYOx+sZk1poYTVOAN
	DjqHrBDe/LdG38piXDJYzBlg2cxBkzt6B4al8jNlRbAdT4DAGH/gNpxQbAvOeePC7H4x0Wo0bsMOG
	2t3bJNoCziYJ+r3+uo7vIVWazHLW+MTFtRKbXGLNQJsS3LgTcInB9yWJxOpzaqqVdhqIrdYW0upR3
	GCbMt6DQ0RF5mPPo7vPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZL03-0002Yw-2M; Thu, 14 May 2020 21:02:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZKzs-0002Sk-Kt
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 21:02:29 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E4298206F1;
 Thu, 14 May 2020 21:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589490148;
 bh=BpiNhcYdcKddO8cs3Vt8IZUscWTK1/Is8oqrDfZkC6w=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=hyfFgR+GL76NQf566ZtlB+WOryIov5DSxhUL5b5JUGfd+iX0ldBn3aeIuHEmGYr5F
 EJi9Wz7J28FNtt08VJYBztNyXwTQJ6uHS1pGhU4g7jeCKpOQ1WCr4QwXnoluVb/vcF
 CFUnP5fIMuLO3vUY90BKaBpUzqs5HHWHXbnfeD0k=
MIME-Version: 1.0
In-Reply-To: <1589267017-17294-5-git-send-email-dillon.minfei@gmail.com>
References: <1589267017-17294-1-git-send-email-dillon.minfei@gmail.com>
 <1589267017-17294-5-git-send-email-dillon.minfei@gmail.com>
Subject: Re: [PATCH v3 4/5] clk: stm32: Fix stm32f429 ltdc driver loading hang
 in clk set rate. keep ltdc clk running after kernel startup
From: Stephen Boyd <sboyd@kernel.org>
To: airlied@linux.ie, alexandre.torgue@st.com, daniel@ffwll.ch,
 dillon.minfei@gmail.com, mcoquelin.stm32@gmail.com, mturquette@baylibre.com,
 robh+dt@kernel.org, sam@ravnborg.org, thierry.reding@gmail.com
Date: Thu, 14 May 2020 14:02:27 -0700
Message-ID: <158949014721.215346.12197373767247910756@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_140228_704468_7C02F12B 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com,
 dillon.minfei@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting dillon.minfei@gmail.com (2020-05-12 00:03:36)
> From: dillon min <dillon.minfei@gmail.com>
> 
> as store stm32f4_rcc_register_pll return to the wrong offset of clks,

Use () on functions, i.e. stm32f4_rcc_register_pll().

> so ltdc gate clk is null. need change clks[PLL_VCO_SAI] to clks[PLL_SAI]

And quote variables like 'clks[PLL_VCO_SAI]'

> 
> add CLK_IGNORE_UNUSED for ltdc to make sure clk not be freed by
> clk_disable_unused

clk_disable_unused() doesn't free anything. Why does ltdc not need to be
turned off if it isn't used? Is it critical to system operation? Should
it be marked with the critical clk flag then? The CLK_IGNORE_UNUSED flag
is almost always wrong to use.

> 
> Signed-off-by: dillon min <dillon.minfei@gmail.com>
> ---
>  drivers/clk/clk-stm32f4.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/clk-stm32f4.c b/drivers/clk/clk-stm32f4.c
> index 18117ce..0ba73de 100644
> --- a/drivers/clk/clk-stm32f4.c
> +++ b/drivers/clk/clk-stm32f4.c
> @@ -129,7 +129,8 @@ static const struct stm32f4_gate_data stm32f429_gates[] __initconst = {
>         { STM32F4_RCC_APB2ENR, 20,      "spi5",         "apb2_div" },
>         { STM32F4_RCC_APB2ENR, 21,      "spi6",         "apb2_div" },
>         { STM32F4_RCC_APB2ENR, 22,      "sai1",         "apb2_div" },
> -       { STM32F4_RCC_APB2ENR, 26,      "ltdc",         "apb2_div" },
> +       { STM32F4_RCC_APB2ENR, 26,      "ltdc",         "apb2_div",
> +               CLK_IGNORE_UNUSED },
>  };
>  
>  static const struct stm32f4_gate_data stm32f469_gates[] __initconst = {
> @@ -1757,7 +1758,7 @@ static void __init stm32f4_rcc_init(struct device_node *np)
>         clks[PLL_VCO_I2S] = stm32f4_rcc_register_pll("vco_in",
>                         &data->pll_data[1], &stm32f4_clk_lock);
>  
> -       clks[PLL_VCO_SAI] = stm32f4_rcc_register_pll("vco_in",
> +       clks[PLL_SAI] = stm32f4_rcc_register_pll("vco_in",
>                         &data->pll_data[2], &stm32f4_clk_lock);
>  
>         for (n = 0; n < MAX_POST_DIV; n++) {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
