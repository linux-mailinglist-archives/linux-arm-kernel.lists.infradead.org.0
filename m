Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EC81D4B07
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 12:32:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oSsDU0x0CB7LSmxhWHbn8ZxkXJLB3aUb5AgnjLUHO+U=; b=UaNjUe8cGE/4vc
	ChixPra9MThJfHoHP6KANApq4n+5+N1s5c5jvs2gc446TWSR6TBEtwJeYQ/lSez8g6dsP7uMj/f2h
	V2k98fvZoGTd6OTaIfMdBcz9RXCl39DYFyIKvqR9o6EbrOlTFK2a54yNWN1wgyoJrWO97e0wE2PUL
	iHLLAHjol7HcWcqZ7eE5kpfIhLFGxXc1tPGm85OFCDQ183vTDhfmNiPY5SrWaYfZ83djUmfOJ2eJS
	E5EvxpBt9PdNvWFyyhl0VsZYqncLa57j7qG/sN6ZEKDUxPMGMyoDYhJSJqR8DDGNU3fUpbdJDogWj
	6ZtvKl94XiydhL1L37sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZXdw-0006Ll-Gb; Fri, 15 May 2020 10:32:40 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZXdm-0006LD-41
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 10:32:31 +0000
Received: by mail-io1-xd42.google.com with SMTP id f3so2161640ioj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 03:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Mp1O72Xdq00O8JgDXWC/mDotxQHEbyc0hg/iAsVvAgY=;
 b=vcmQAMrEzsV4FG1L5QpLXkqBOrQ5OWuYdGlR8+ygcxJg+F5fPgRqdFWYKvqJJgU4mT
 zG2aAW2Aaxx8HmPIlfVGBlGU+Tu3x3HW3wNhOb0imgignadU5yAYy5edOXWWGXi/0Na4
 0SCSsnOjKh6NZ89GJ/Z1th6BYn3bZVjgPzwjCcYTGdFvmRZ+d8292zz6Fa+rLu1nDRVS
 nqtULSE9iytN1Ux/XqwoX0F6IiuTkU6cBgvLoTaXjmrYNhB/2fbpLk/00zSQBHvVF91s
 Hv+b2E+JxXaSCT1p0PXKvweG2iD7xl6BSOXRJs6N8uGBGhhsdZ7fLsuZ6pWRxwXozdGD
 zlCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Mp1O72Xdq00O8JgDXWC/mDotxQHEbyc0hg/iAsVvAgY=;
 b=TJ+26ttjgSZ/RHhLQVcqtfzkHwk6dzjJlkwnmdj19OKCBLosxIrplpVnpuCDQIBJBD
 dTeYcxvbvZ276HHRWfk3gVsv++apsw/FQVd7H/YQuWenDZvIiqlL4NyY00jMpDJvUvqv
 HjyW8P7RI/ZkfPDNwPsSPNku6Q8x0DXNhz+NMlFflNwHBfMXJPYNdOjqQ2WgIZM+N/5g
 qcBYsBInEWeBbav1Epzz5+7VNbo97yZzaIU41yMwThBmzIFg4AIaQ7Jk3hBJ5OWS+knJ
 DkvW19xjwcyDefziVf5FwuIuk5JKfsoaygZOowd9Ft1r6dv1H7DzipypIWbgype5JICN
 xkCg==
X-Gm-Message-State: AOAM530MB4kLztktURjGLCr2Z+WkPbZ+yB01z4udthM4LZA+AjGuQL4i
 jilKugeuUn040HNT5vDGr16RTJ6ST1wBSKT17Is=
X-Google-Smtp-Source: ABdhPJySFDwer7KjH89ACOdbQCrAFJYmz3PmcTnEmry2cPWkqSChoUu+TiNgN9tnSrdVOfv81ypAYcyv/WXFLRq7XEE=
X-Received: by 2002:a02:ac1:: with SMTP id 184mr2566280jaw.137.1589538748835; 
 Fri, 15 May 2020 03:32:28 -0700 (PDT)
MIME-Version: 1.0
References: <1589267017-17294-1-git-send-email-dillon.minfei@gmail.com>
 <1589267017-17294-5-git-send-email-dillon.minfei@gmail.com>
 <158949014721.215346.12197373767247910756@swboyd.mtv.corp.google.com>
In-Reply-To: <158949014721.215346.12197373767247910756@swboyd.mtv.corp.google.com>
From: dillon min <dillon.minfei@gmail.com>
Date: Fri, 15 May 2020 18:31:52 +0800
Message-ID: <CAL9mu0J7t5Qbe2VQexn8=ZDbcOiCzc0cSnfZRKTjeM5Uyi_x-A@mail.gmail.com>
Subject: Re: [PATCH v3 4/5] clk: stm32: Fix stm32f429 ltdc driver loading hang
 in clk set rate. keep ltdc clk running after kernel startup
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_033230_187289_F511B567 
X-CRM114-Status: GOOD (  22.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Alexandre Torgue <alexandre.torgue@st.com>,
 Dave Airlie <airlied@linux.ie>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-clk <linux-clk@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 thierry.reding@gmail.com, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

thanks for reviewing.

On Fri, May 15, 2020 at 5:02 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting dillon.minfei@gmail.com (2020-05-12 00:03:36)
> > From: dillon min <dillon.minfei@gmail.com>
> >
> > as store stm32f4_rcc_register_pll return to the wrong offset of clks,
>
> Use () on functions, i.e. stm32f4_rcc_register_pll().
ok
>
> > so ltdc gate clk is null. need change clks[PLL_VCO_SAI] to clks[PLL_SAI]
>
> And quote variables like 'clks[PLL_VCO_SAI]'
ok
>
> >
> > add CLK_IGNORE_UNUSED for ltdc to make sure clk not be freed by
> > clk_disable_unused
>
> clk_disable_unused() doesn't free anything. Why does ltdc not need to be
> turned off if it isn't used? Is it critical to system operation? Should
> it be marked with the critical clk flag then? The CLK_IGNORE_UNUSED flag
> is almost always wrong to use.

Yes, you are right. thanks. CLK_IGNORE_UNUSED just hide the root
cause. after deeper debugging.
i need to drop the last changes , they are not the root cause.

post diff and analyse here first, i will resubmit clk's changes in
next patchset with gyro and ili9341.

--- a/drivers/clk/clk-stm32f4.c
+++ b/drivers/clk/clk-stm32f4.c
@@ -129,8 +129,6 @@ static const struct stm32f4_gate_data
stm32f429_gates[] __initconst = {
        { STM32F4_RCC_APB2ENR, 20,      "spi5",         "apb2_div" },
        { STM32F4_RCC_APB2ENR, 21,      "spi6",         "apb2_div" },
        { STM32F4_RCC_APB2ENR, 22,      "sai1",         "apb2_div" },
-       { STM32F4_RCC_APB2ENR, 26,      "ltdc",         "apb2_div",
-               CLK_IGNORE_UNUSED },
 };

 static const struct stm32f4_gate_data stm32f469_gates[] __initconst = {
@@ -558,13 +556,13 @@ static const struct clk_div_table post_divr_table[] = {

 #define MAX_POST_DIV 3
 static const struct stm32f4_pll_post_div_data  post_div_data[MAX_POST_DIV] = {
-       { CLK_I2SQ_PDIV, PLL_I2S, "plli2s-q-div", "plli2s-q",
+       { CLK_I2SQ_PDIV, PLL_VCO_I2S, "plli2s-q-div", "plli2s-q",
                CLK_SET_RATE_PARENT, STM32F4_RCC_DCKCFGR, 0, 5, 0, NULL},

-       { CLK_SAIQ_PDIV, PLL_SAI, "pllsai-q-div", "pllsai-q",
+       { CLK_SAIQ_PDIV, PLL_VCO_SAI, "pllsai-q-div", "pllsai-q",
                CLK_SET_RATE_PARENT, STM32F4_RCC_DCKCFGR, 8, 5, 0, NULL },

-       { NO_IDX, PLL_SAI, "pllsai-r-div", "pllsai-r", CLK_SET_RATE_PARENT,
+       { NO_IDX, PLL_VCO_SAI, "pllsai-r-div", "pllsai-r", CLK_SET_RATE_PARENT,
                STM32F4_RCC_DCKCFGR, 16, 2, 0, post_divr_table },
 };

@@ -1758,7 +1756,7 @@ static void __init stm32f4_rcc_init(struct
device_node *np)
        clks[PLL_VCO_I2S] = stm32f4_rcc_register_pll("vco_in",
                        &data->pll_data[1], &stm32f4_clk_lock);

-       clks[PLL_SAI] = stm32f4_rcc_register_pll("vco_in",
+       clks[PLL_VCO_SAI] = stm32f4_rcc_register_pll("vco_in",
                        &data->pll_data[2], &stm32f4_clk_lock);

        for (n = 0; n < MAX_POST_DIV; n++) {

issue 1: ili9341 hang in clk set rate, the root cause should be
PLL_VCO_SAI, PLL_SAI mismatch
for 'clks[]'

1, first at stm32f4_rcc_init() ,
    clks[PLL_VCO_SAI] = stm32f4_rcc_register_pll("vco_in",
                        &data->pll_data[2], &stm32f4_clk_lock);
   the clk_hw from stm32f4_rcc_register_pll() is store to 'clks[7]', defined in
   'include/dt-bindings/clock/stm32fx-clock.h'

2, next
hw = clk_register_pll_div(post_div->name,
                                post_div->parent,
                                post_div->flag,
                                base + post_div->offset,
                                post_div->shift,
                                post_div->width,
                                post_div->flag_div,
                                post_div->div_table,
                                clks[post_div->pll_num],
                                &stm32f4_clk_lock);
the 'clks[post_div->pll_num]', the pll_num is PLL_SAI, the value is 2,
defined at
enum {
        PLL,
        PLL_I2S,
        PLL_SAI,
};
'post_div_data[]'

so 7 != 2 offset of 'clks[]', input the wrong 'clks[]' to
clk_register_pll_div. cause to_clk_gate result is null,
crashed in ltdc driver's loading.

issue 2: clk_disable_unused() turn off ltdc clock.
1, ltdc clk is defined in 'stm32f429_gates[]', register to clk core,
but there is no user to use it.
    ltdc driver use dts binding name "lcd", connect to CLK_LCD, then
aux clk 'lcd-tft '
2, as no one use 'stm32f429_gates[]' s ltdc clock , so the
enable_count is zero, after kernel startup
    it's been turn off by clk_disable_unused() is fine.

my chages for this is remove the ltdc from 'stm32f429_gates[]'
but this modification still need 'clk-stm32f4.c''s maintainer to check
if there is side effect.

>
> >
> > Signed-off-by: dillon min <dillon.minfei@gmail.com>
> > ---
> >  drivers/clk/clk-stm32f4.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/clk/clk-stm32f4.c b/drivers/clk/clk-stm32f4.c
> > index 18117ce..0ba73de 100644
> > --- a/drivers/clk/clk-stm32f4.c
> > +++ b/drivers/clk/clk-stm32f4.c
> > @@ -129,7 +129,8 @@ static const struct stm32f4_gate_data stm32f429_gates[] __initconst = {
> >         { STM32F4_RCC_APB2ENR, 20,      "spi5",         "apb2_div" },
> >         { STM32F4_RCC_APB2ENR, 21,      "spi6",         "apb2_div" },
> >         { STM32F4_RCC_APB2ENR, 22,      "sai1",         "apb2_div" },
> > -       { STM32F4_RCC_APB2ENR, 26,      "ltdc",         "apb2_div" },
> > +       { STM32F4_RCC_APB2ENR, 26,      "ltdc",         "apb2_div",
> > +               CLK_IGNORE_UNUSED },
> >  };
> >
> >  static const struct stm32f4_gate_data stm32f469_gates[] __initconst = {
> > @@ -1757,7 +1758,7 @@ static void __init stm32f4_rcc_init(struct device_node *np)
> >         clks[PLL_VCO_I2S] = stm32f4_rcc_register_pll("vco_in",
> >                         &data->pll_data[1], &stm32f4_clk_lock);
> >
> > -       clks[PLL_VCO_SAI] = stm32f4_rcc_register_pll("vco_in",
> > +       clks[PLL_SAI] = stm32f4_rcc_register_pll("vco_in",
> >                         &data->pll_data[2], &stm32f4_clk_lock);
> >
> >         for (n = 0; n < MAX_POST_DIV; n++) {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
