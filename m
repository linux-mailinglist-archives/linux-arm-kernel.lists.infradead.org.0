Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71932156EF2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 06:56:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UG2OgAidStY40VwhCdLM4hkVPy2EtOzLOVO7LA9skbI=; b=QgCc86UmYJ/6Rh
	WYW1vfj1xRYjHPPqTXmOxqSo9AH5GrHuA7M/knLoO5IrWHD9bwNxd0ZFHX7/KUG2Lo/C7BSngCnRA
	GpuQd124xruNMrUfDKxAYp2dgwPDvVt7FYHgkQ4SKecN5MDXnSTuyf0uqXuGh7CGcUthmKsGEX8Ck
	TJw9krn1WzaPK/FXH5I6F0nrChfhAKGlas/RZmKazIoLS6T0K98SKS7547ML57ppqLnXcapX+B2yy
	PYd4ezRSNMpHQlI1Z0WDTTnJLZULjba9RIK4T0+aIjb/IPHBi4DSuu77OEFDttp3OKotvrpfGQeaB
	tHebB2Dj3Hdoh39mNiuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j123v-0004El-On; Mon, 10 Feb 2020 05:56:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j123p-0004EH-5a
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 05:56:46 +0000
Received: from localhost (unknown [106.201.32.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 38D9820661;
 Mon, 10 Feb 2020 05:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581314203;
 bh=y8WJhCtjiUgmevlVF8bPnBitNPUgs1QbeGeB5mZDx5k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qybtcXfORlwW2sh851QqwW7QwgE5offrIYVPKCK2+7adJuA1yK91UDooJSTbdTcnu
 HzEtBE8FJiRh7dcx3mo1l1uLAU0Uv1Yd1jRmHZ79h8DlfuxjWUzJtc0+CcLzY3VKMd
 3oB7ywD7EfdHX6SY79BNWygygdYv7V9/ohuCm3LE=
Date: Mon, 10 Feb 2020 11:26:38 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2 4/7] clk: qcom: clk-alpha-pll: Add support for
 controlling Lucid PLLs
Message-ID: <20200210055638.GT2618@vkoul-mobl>
References: <1579905147-12142-1-git-send-email-vnkgutta@codeaurora.org>
 <1579905147-12142-5-git-send-email-vnkgutta@codeaurora.org>
 <20200205193353.2BDCC20720@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205193353.2BDCC20720@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_215645_253294_FCF755AB 
X-CRM114-Status: GOOD (  20.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, tdas@codeaurora.org,
 jshriram@codeaurora.org, linux-arm-msm@vger.kernel.org,
 mturquette@baylibre.com, tsoni@codeaurora.org, vnkgutta@codeaurora.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, bjorn.andersson@linaro.org,
 agross@kernel.org, psodagud@codeaurora.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05-02-20, 11:33, Stephen Boyd wrote:
> Quoting Venkata Narendra Kumar Gutta (2020-01-24 14:32:24)
> > diff --git a/drivers/clk/qcom/clk-alpha-pll.c b/drivers/clk/qcom/clk-alpha-pll.c
> > index 1b073b2..4258ab0 100644
> > --- a/drivers/clk/qcom/clk-alpha-pll.c
> > +++ b/drivers/clk/qcom/clk-alpha-pll.c
> > @@ -1367,3 +1388,172 @@ static int clk_alpha_pll_postdiv_fabia_set_rate(struct clk_hw *hw,
> >         .set_rate = clk_alpha_pll_postdiv_fabia_set_rate,
> >  };
> >  EXPORT_SYMBOL_GPL(clk_alpha_pll_postdiv_fabia_ops);
> > +
> > +void clk_lucid_pll_configure(struct clk_alpha_pll *pll, struct regmap *regmap,
> 
> Can we get some kernel documentation for this function?

Okay adding

> > +{
> > +       if (config->l)
> > +               regmap_write(regmap, PLL_L_VAL(pll), config->l);
> > +
> > +       regmap_write(regmap, PLL_CAL_L_VAL(pll), LUCID_PLL_CAL_VAL);
> > +
> > +       if (config->alpha)
> > +               regmap_write(regmap, PLL_ALPHA_VAL(pll), config->alpha);
> > +
> > +       if (config->config_ctl_val)
> > +               regmap_write(regmap, PLL_CONFIG_CTL(pll),
> > +                            config->config_ctl_val);
> > +
> > +       if (config->config_ctl_hi_val)
> > +               regmap_write(regmap, PLL_CONFIG_CTL_U(pll),
> > +                            config->config_ctl_hi_val);
> > +
> > +       if (config->config_ctl_hi1_val)
> > +               regmap_write(regmap, PLL_CONFIG_CTL_U1(pll),
> > +                            config->config_ctl_hi1_val);
> > +
> > +       if (config->user_ctl_val)
> > +               regmap_write(regmap, PLL_USER_CTL(pll),
> > +                            config->user_ctl_val);
> > +
> > +       if (config->user_ctl_hi_val)
> > +               regmap_write(regmap, PLL_USER_CTL_U(pll),
> > +                            config->user_ctl_hi_val);
> > +
> > +       if (config->user_ctl_hi1_val)
> > +               regmap_write(regmap, PLL_USER_CTL_U1(pll),
> > +                            config->user_ctl_hi1_val);
> > +
> > +       if (config->test_ctl_val)
> > +               regmap_write(regmap, PLL_TEST_CTL(pll),
> > +                            config->test_ctl_val);
> > +
> > +       if (config->test_ctl_hi_val)
> > +               regmap_write(regmap, PLL_TEST_CTL_U(pll),
> > +                            config->test_ctl_hi_val);
> > +
> > +       if (config->test_ctl_hi1_val)
> > +               regmap_write(regmap, PLL_TEST_CTL_U1(pll),
> > +                            config->test_ctl_hi1_val);
> > +
> > +       regmap_update_bits(regmap, PLL_MODE(pll), PLL_UPDATE_BYPASS,
> > +                          PLL_UPDATE_BYPASS);
> > +
> > +       /* Disable PLL output */
> > +       regmap_update_bits(regmap, PLL_MODE(pll),  PLL_OUTCTRL, 0);
> > +
> > +       /* Set operation mode to OFF */
> > +       regmap_write(regmap, PLL_OPMODE(pll), PLL_STANDBY);
> > +
> > +       /* PLL should be in OFF mode before continuing */
> > +       wmb();
> 
> How does the write above overtake the write below? This barrier looks
> wrong.

I think you are correct, it doesnt :), so removing this

> > +static int alpha_pll_lucid_prepare(struct clk_hw *hw)
> > +{
> > +       struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
> > +       u32 regval;
> > +       int ret;
> > +
> > +       /* Return early if calibration is not needed. */
> > +       regmap_read(pll->clkr.regmap, PLL_STATUS(pll), &regval);
> > +       if (regval & LUCID_PCAL_DONE)
> > +               return 0;
> > +
> > +       ret = clk_trion_pll_enable(hw);
> > +       if (ret)
> > +               return ret;
> > +
> > +       clk_trion_pll_disable(hw);
> > +
> > +       return 0;
> 
> Can you write this like:
> 
> 	/* On/off to calibrate */
> 	ret = clk_trion_pll_enable(hw);
> 	if (!ret)
> 		clk_trion_pll_disable(hw);
> 
> 	return ret;

Looks better, updated now.

> > +static int alpha_pll_lucid_set_rate(struct clk_hw *hw, unsigned long rate,
> > +                                   unsigned long prate)
> > +{
> > +       struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
> > +       unsigned long rrate;
> > +       u32 regval, l, alpha_width = pll_alpha_width(pll);
> > +       u64 a;
> > +       int ret;
> > +
> > +       rrate = alpha_pll_round_rate(rate, prate, &l, &a, alpha_width);
> > +
> > +       /*
> > +        * Due to a limited number of bits for fractional rate programming, the
> > +        * rounded up rate could be marginally higher than the requested rate.
> > +        */
> > +       if (rrate > (rate + PLL_RATE_MARGIN) || rrate < rate) {
> 
> Any chance this can be pushed into the alpha_pll_round_rate() API? It's
> duplicated in this driver.

Yes here and couple of fabia pll functions. Said that I see
alpha_pll_round_rate() is also invoked two places,
alpha_pll_fabia_set_rate() and __clk_alpha_pll_set_rate(), so should we
let these two also be updated, if you are okay with that I will update
this

> > +       regmap_write(pll->clkr.regmap, PLL_L_VAL(pll), l);
> > +       regmap_write(pll->clkr.regmap, PLL_ALPHA_VAL(pll), a);
> > +
> > +       /* Latch the PLL input */
> > +       ret = regmap_update_bits(pll->clkr.regmap, PLL_MODE(pll),
> > +                                PLL_UPDATE, PLL_UPDATE);
> > +       if (ret)
> > +               return ret;
> > +
> > +       /* Wait for 2 reference cycles before checking the ACK bit. */
> 
> Are reference cycles 2 * 1 / 19.2MHz?

Will check and update on this

> 
> > +       udelay(1);
> > +       regmap_read(pll->clkr.regmap, PLL_MODE(pll), &regval);
> > +       if (!(regval & ALPHA_PLL_ACK_LATCH)) {
> > +               WARN(1, "PLL latch failed. Output may be unstable!\n");
> 
> Do we need a big WARN stack for this? How about pr_warn() instead?

Nope :), will move to a warn print :)

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
