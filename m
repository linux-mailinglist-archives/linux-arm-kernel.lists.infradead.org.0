Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE2F5D866
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 01:29:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cwn5tsL9M29C7K0/cf+gTbbQna+sa0NBgXYU6gfjgkE=; b=t+mr6nIiinKn0A
	f5a3BOxbXD6NRzbJfBO4QCHN61UgzzL/PMyMfDZWx8mMJwvc8n+5zTfNH1oqpldr7VgiYs15Xinxw
	iLtBF/Qyxhy3ca5OrJTuNMOk3WFzsd2zq0rXrxiWijIfcKgqkXsvT+uss+EARi+X/ShnDnHLF7ZPL
	hCkZJOhcn5gE74di6fZKXm7gy8WIYWjPllOvSNoDAxls/JuAeXnJ8d+RjNQPDxhN+5WSLBqDKU66f
	r39xmcg9wq77Qatzi0/7uNKYPV8T1sd49+pmpr0LDBjKsOq2nuYhRFXJF81r00+70Wz8QGnADL4aZ
	6/9Ja3ogS1Of+OkGezRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiSDB-0005Sp-0E; Tue, 02 Jul 2019 23:29:21 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiSCx-0005SQ-9u; Tue, 02 Jul 2019 23:29:08 +0000
Received: by mail-ot1-x341.google.com with SMTP id o101so324518ota.8;
 Tue, 02 Jul 2019 16:29:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q0DTSEoJfAoRh/DNOfvOIAUC0JkelgBbLHyDpxdWx4k=;
 b=aW71dvXzx3/OZ2dyur8K2R3t59hdwnCvtsuhJGdee/nm9r6PCmqTtx+JWgAIJLo2/d
 Y21AhbIEphVmstcZOwfTGkQASbWx10y4fsfburjD7qorfBw7J73NAYnWdXDN5k5epES2
 9xsxotFn9XmfaHw9GsQaebN96U6pHmRUkIvbu0rqpCA3ltYn9AaqBA81bvwfZWb2bRXK
 PGExbAEeQJBbEYszopwMOpV+S9XN0z12R0Vy2r2L+ErpKfnQnxV/0MIwpTrNI/wPBJUQ
 Q4OJpy3R867Yl9+XNBz9RWRkL9MFWnLifF6/SdKW9uCH6tpmnrx4YKPqcv3J2LmnI790
 wFfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q0DTSEoJfAoRh/DNOfvOIAUC0JkelgBbLHyDpxdWx4k=;
 b=bsZH9/hBeGeC7etJPEeKYgFMeJ5o1eqMvasiUV3lRy4ncEfeANjwXrWtfB/d4iLvtM
 Z89oQbA9uM+AItLbFLzY/lk4nRHjtkmmsfifxig9fU+a+O3F9Zu8juNV0QmBdHI0pIEX
 0mAIjlvPBcCQ3TIzSGZA7ppLJICx4iNohu7kV4K7oVjhQx37ANzVfkNxzJW2BuvAXd8T
 BmjJr8u376VsnzfjOlyggYAs5TNlIIrJOyLlvrO+9vedB5bDS1pncgI8nM9GlX/RahEj
 Bmh7uwMNn/iDYVEvrzvTlTlxdlizj1qzGy6hjcHbajLF5m4OO9kSjotTmx7NabOMnRdZ
 8htg==
X-Gm-Message-State: APjAAAUxdYgPcwLmg5JNdm7DWTm0DvAxJQL5PawlHsNzjjzCoBGo1WXW
 jJGFYH4oJwIXKsdAAOF+2yFmw/Wl/89CDi3DjO7ZWsiK
X-Google-Smtp-Source: APXvYqy/QQUN0J6b4O2bTl3SYceaajLNKXdMQ4/wzOnMkRg4M4DkLByhdEGK3wJrQJDIJWZll9ZaCAX1i1L6mFoN5Ec=
X-Received: by 2002:a9d:39a6:: with SMTP id y35mr27395004otb.81.1562110146329; 
 Tue, 02 Jul 2019 16:29:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190701091258.3870-1-narmstrong@baylibre.com>
 <20190701091258.3870-8-narmstrong@baylibre.com>
In-Reply-To: <20190701091258.3870-8-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 3 Jul 2019 01:28:55 +0200
Message-ID: <CAFBinCAnKeGYkyCmEMugWuQaSxgBp4DqtHN3b0rLJY6jwOF0QA@mail.gmail.com>
Subject: Re: [RFC/RFT v3 07/14] clk: meson: g12a: add notifiers to handle cpu
 clock change
To: sboyd@codeaurora.org, Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_162907_367072_F07B6CBA 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen, Hi Neil,

On Mon, Jul 1, 2019 at 11:13 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> In order to implement clock switching for the CLKID_CPU_CLK and
> CLKID_CPUB_CLK, notifiers are added on specific points of the
> clock tree :
>
> cpu_clk / cpub_clk
> |   \- cpu_clk_dyn
> |      |  \- cpu_clk_premux0
> |      |        |- cpu_clk_postmux0
> |      |        |    |- cpu_clk_dyn0_div
> |      |        |    \- xtal/fclk_div2/fclk_div3
> |      |        \- xtal/fclk_div2/fclk_div3
> |      \- cpu_clk_premux1
> |            |- cpu_clk_postmux1
> |            |    |- cpu_clk_dyn1_div
> |            |    \- xtal/fclk_div2/fclk_div3
> |            \- xtal/fclk_div2/fclk_div3
> \ sys_pll / sys1_pll
>
> This for each cluster, a single one for G12A, two for G12B.
>
> Each cpu_clk_premux1 tree is marked as read-only and CLK_SET_RATE_NO_REPARENT,
> to be used as "parking" clock in a safe clock frequency.
it seems that this is one case where the "coordinated clocks" feature
would come handy: [0]
Stephen, do you know if those patches stopped in March or if there's
still some ongoing effort to get them ready?

[...]
> -/*
> - * Internal sys pll emulation configuration parameters
> - */
> -static const struct reg_sequence g12a_sys_init_regs[] = {
> -       { .reg = HHI_SYS_PLL_CNTL1,     .def = 0x00000000 },
> -       { .reg = HHI_SYS_PLL_CNTL2,     .def = 0x00000000 },
> -       { .reg = HHI_SYS_PLL_CNTL3,     .def = 0x48681c00 },
> -       { .reg = HHI_SYS_PLL_CNTL4,     .def = 0x88770290 },
> -       { .reg = HHI_SYS_PLL_CNTL5,     .def = 0x39272000 },
> -       { .reg = HHI_SYS_PLL_CNTL6,     .def = 0x56540000 },
> +static const struct pll_mult_range g12a_sys_pll_mult_range = {
> +       .min = 128,
> +       .max = 250,
>  };
>
>  static struct clk_regmap g12a_sys_pll_dco = {
> @@ -124,14 +118,15 @@ static struct clk_regmap g12a_sys_pll_dco = {
>                         .shift   = 29,
>                         .width   = 1,
>                 },
> -               .init_regs = g12a_sys_init_regs,
> -               .init_count = ARRAY_SIZE(g12a_sys_init_regs),
> +               .range = &g12a_sys_pll_mult_range,
Neil, I believe that this should be a separate patch with a
description which explains why we don't need the "init regs" anymore

>         },
>         .hw.init = &(struct clk_init_data){
>                 .name = "sys_pll_dco",
> -               .ops = &meson_clk_pll_ro_ops,
> +               .ops = &meson_clk_pll_ops,
>                 .parent_names = (const char *[]){ IN_PREFIX "xtal" },
>                 .num_parents = 1,
> +               /* This clock feeds the CPU, avoid disabling it */
> +               .flags = CLK_IS_CRITICAL,
maybe we should have a separate patch for making the CPU clock tree
mutable as well

[...]
> +/* This divider uses bit 26 to take change in account */
> +static int g12b_cpub_clk_mux0_div_set_rate(struct clk_hw *hw,
> +                                          unsigned long rate,
> +                                          unsigned long parent_rate)
> +{
> +       struct clk_regmap *clk = to_clk_regmap(hw);
> +       struct clk_regmap_div_data *div = clk_get_regmap_div_data(clk);
> +       unsigned int val;
> +       int ret;
> +
> +       ret = divider_get_val(rate, parent_rate, div->table, div->width,
> +                             div->flags);
> +       if (ret < 0)
> +               return ret;
> +
> +       val = (unsigned int)ret << div->shift;
> +
> +       regmap_update_bits(clk->map, HHI_SYS_CPUB_CLK_CNTL,
> +                          SYS_CPU_DYN_ENABLE, SYS_CPU_DYN_ENABLE);
> +
> +       return regmap_update_bits(clk->map, div->offset,
> +                                 clk_div_mask(div->width) << div->shift |
> +                                 SYS_CPU_DYN_ENABLE, val);
> +};
the public S922X datasheet doesn't mention bit 26
do I understand the semantics correctly?:
- set SYS_CPU_DYN_ENABLE
- update the divider
- unset SYS_CPU_DYN_ENABLE

too bad it's not a gate which we could model with
CLK_SET_RATE_GATE/CLK_SET_RATE_UNGATE


Martin

[0] https://patchwork.kernel.org/patch/10838949/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
