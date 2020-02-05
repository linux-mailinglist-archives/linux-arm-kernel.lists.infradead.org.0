Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B59E153929
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 20:34:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WHPRFg3Z+NsnIHuKRtoyCuqX221w3G2WC6US6df/saA=; b=m42pFX5+S8zSrICXERr5M7VxNH
	4Tud9oGnFm/hVt8w2/f3dcjUG28Fb8nJu8oG/W3Wd8goV8pRJN3Jgjuc9j3qOzOJszYbACbDRBCqj
	wn3FEr1Af7huxmzYdnlK3VM8Tswh712QbP6fzXL9mHBPU7COtMN6miAyt2hYF//d/BSDBSZplDj7h
	N6sD+9BsAaGqO1LXp0RDl4JpudFc3EB/DaAIDzj00ayVBoyxdv4fg8xMWX5bpQ+PnUuAwlrzokr51
	Dwnb3DnHkBmMCxboZDTRGIX1HOHZiBEDO4GbeA/RjP6N4wvjR+upBvWglSFw/nB7ObGI8y3PNFdNf
	MqHOYRVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izQR0-0002GI-Mh; Wed, 05 Feb 2020 19:34:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izQQt-0002FT-7J
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 19:33:56 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2BDCC20720;
 Wed,  5 Feb 2020 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580931233;
 bh=+nyLmX46s9G7X/53SRM/o2mo63iRBrtO5nxuwKZt+fs=;
 h=In-Reply-To:References:From:Subject:To:Date:From;
 b=kzNO9SWODHYyp8ttsM3EJyJsqbEW2BZ759IxFZNM9RPOF4RFdOgjYnGzLyet3qILQ
 NJMot8rfIn3SAU9tn3yEj1KcIrROCQjzIWA6hxPWJdAcrsLpALx9074WEHnjpWpG0z
 yzmFYmvSPxB2JcQr0SSS+kLRWPkAEzxBlbAnAqqs=
MIME-Version: 1.0
In-Reply-To: <1579905147-12142-5-git-send-email-vnkgutta@codeaurora.org>
References: <1579905147-12142-1-git-send-email-vnkgutta@codeaurora.org>
 <1579905147-12142-5-git-send-email-vnkgutta@codeaurora.org>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2 4/7] clk: qcom: clk-alpha-pll: Add support for
 controlling Lucid PLLs
To: agross@kernel.org, bjorn.andersson@linaro.org, devicetree@vger.kernel.org,
 jshriram@codeaurora.org, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com, mturquette@baylibre.com,
 psodagud@codeaurora.org, robh+dt@kernel.org, tdas@codeaurora.org,
 tsoni@codeaurora.org, vinod.koul@linaro.org, vnkgutta@codeaurora.org
User-Agent: alot/0.8.1
Date: Wed, 05 Feb 2020 11:33:52 -0800
Message-Id: <20200205193353.2BDCC20720@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_113355_302301_7FA5B920 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Venkata Narendra Kumar Gutta (2020-01-24 14:32:24)
> diff --git a/drivers/clk/qcom/clk-alpha-pll.c b/drivers/clk/qcom/clk-alpha-pll.c
> index 1b073b2..4258ab0 100644
> --- a/drivers/clk/qcom/clk-alpha-pll.c
> +++ b/drivers/clk/qcom/clk-alpha-pll.c
> @@ -1367,3 +1388,172 @@ static int clk_alpha_pll_postdiv_fabia_set_rate(struct clk_hw *hw,
>         .set_rate = clk_alpha_pll_postdiv_fabia_set_rate,
>  };
>  EXPORT_SYMBOL_GPL(clk_alpha_pll_postdiv_fabia_ops);
> +
> +void clk_lucid_pll_configure(struct clk_alpha_pll *pll, struct regmap *regmap,

Can we get some kernel documentation for this function?

> +                            const struct alpha_pll_config *config)
> +{
> +       if (config->l)
> +               regmap_write(regmap, PLL_L_VAL(pll), config->l);
> +
> +       regmap_write(regmap, PLL_CAL_L_VAL(pll), LUCID_PLL_CAL_VAL);
> +
> +       if (config->alpha)
> +               regmap_write(regmap, PLL_ALPHA_VAL(pll), config->alpha);
> +
> +       if (config->config_ctl_val)
> +               regmap_write(regmap, PLL_CONFIG_CTL(pll),
> +                            config->config_ctl_val);
> +
> +       if (config->config_ctl_hi_val)
> +               regmap_write(regmap, PLL_CONFIG_CTL_U(pll),
> +                            config->config_ctl_hi_val);
> +
> +       if (config->config_ctl_hi1_val)
> +               regmap_write(regmap, PLL_CONFIG_CTL_U1(pll),
> +                            config->config_ctl_hi1_val);
> +
> +       if (config->user_ctl_val)
> +               regmap_write(regmap, PLL_USER_CTL(pll),
> +                            config->user_ctl_val);
> +
> +       if (config->user_ctl_hi_val)
> +               regmap_write(regmap, PLL_USER_CTL_U(pll),
> +                            config->user_ctl_hi_val);
> +
> +       if (config->user_ctl_hi1_val)
> +               regmap_write(regmap, PLL_USER_CTL_U1(pll),
> +                            config->user_ctl_hi1_val);
> +
> +       if (config->test_ctl_val)
> +               regmap_write(regmap, PLL_TEST_CTL(pll),
> +                            config->test_ctl_val);
> +
> +       if (config->test_ctl_hi_val)
> +               regmap_write(regmap, PLL_TEST_CTL_U(pll),
> +                            config->test_ctl_hi_val);
> +
> +       if (config->test_ctl_hi1_val)
> +               regmap_write(regmap, PLL_TEST_CTL_U1(pll),
> +                            config->test_ctl_hi1_val);
> +
> +       regmap_update_bits(regmap, PLL_MODE(pll), PLL_UPDATE_BYPASS,
> +                          PLL_UPDATE_BYPASS);
> +
> +       /* Disable PLL output */
> +       regmap_update_bits(regmap, PLL_MODE(pll),  PLL_OUTCTRL, 0);
> +
> +       /* Set operation mode to OFF */
> +       regmap_write(regmap, PLL_OPMODE(pll), PLL_STANDBY);
> +
> +       /* PLL should be in OFF mode before continuing */
> +       wmb();

How does the write above overtake the write below? This barrier looks
wrong.

> +
> +       /* Place the PLL in STANDBY mode */
> +       regmap_update_bits(regmap, PLL_MODE(pll), PLL_RESET_N, PLL_RESET_N);
> +}
> +EXPORT_SYMBOL_GPL(clk_lucid_pll_configure);
> +
> +/*
> + * The Lucid PLL requires a power-on self-calibration which happens when the
> + * PLL comes out of reset. Calibrate in case it is not completed.
> + */
> +static int alpha_pll_lucid_prepare(struct clk_hw *hw)
> +{
> +       struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
> +       u32 regval;
> +       int ret;
> +
> +       /* Return early if calibration is not needed. */
> +       regmap_read(pll->clkr.regmap, PLL_STATUS(pll), &regval);
> +       if (regval & LUCID_PCAL_DONE)
> +               return 0;
> +
> +       ret = clk_trion_pll_enable(hw);
> +       if (ret)
> +               return ret;
> +
> +       clk_trion_pll_disable(hw);
> +
> +       return 0;

Can you write this like:

	/* On/off to calibrate */
	ret = clk_trion_pll_enable(hw);
	if (!ret)
		clk_trion_pll_disable(hw);

	return ret;

> +}
> +
> +static int alpha_pll_lucid_set_rate(struct clk_hw *hw, unsigned long rate,
> +                                   unsigned long prate)
> +{
> +       struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
> +       unsigned long rrate;
> +       u32 regval, l, alpha_width = pll_alpha_width(pll);
> +       u64 a;
> +       int ret;
> +
> +       rrate = alpha_pll_round_rate(rate, prate, &l, &a, alpha_width);
> +
> +       /*
> +        * Due to a limited number of bits for fractional rate programming, the
> +        * rounded up rate could be marginally higher than the requested rate.
> +        */
> +       if (rrate > (rate + PLL_RATE_MARGIN) || rrate < rate) {

Any chance this can be pushed into the alpha_pll_round_rate() API? It's
duplicated in this driver.

> +               pr_err("Call set rate on the PLL with rounded rates!\n");
> +               return -EINVAL;
> +       }
> +
> +       regmap_write(pll->clkr.regmap, PLL_L_VAL(pll), l);
> +       regmap_write(pll->clkr.regmap, PLL_ALPHA_VAL(pll), a);
> +
> +       /* Latch the PLL input */
> +       ret = regmap_update_bits(pll->clkr.regmap, PLL_MODE(pll),
> +                                PLL_UPDATE, PLL_UPDATE);
> +       if (ret)
> +               return ret;
> +
> +       /* Wait for 2 reference cycles before checking the ACK bit. */

Are reference cycles 2 * 1 / 19.2MHz?

> +       udelay(1);
> +       regmap_read(pll->clkr.regmap, PLL_MODE(pll), &regval);
> +       if (!(regval & ALPHA_PLL_ACK_LATCH)) {
> +               WARN(1, "PLL latch failed. Output may be unstable!\n");

Do we need a big WARN stack for this? How about pr_warn() instead?

> +               return -EINVAL;
> +       }
> +
> +       /* Return the latch input to 0 */
> +       ret = regmap_update_bits(pll->clkr.regmap, PLL_MODE(pll),
> +                                PLL_UPDATE, 0);
> +       if (ret)
> +               return ret;
> +
> +       if (clk_hw_is_enabled(hw)) {
> +               ret = wait_for_pll_enable_lock(pll);
> +               if (ret)
> +                       return ret;
> +       }
> +
> +       /* Wait for PLL output to stabilize */
> +       udelay(100);
> +       return 0;
> +}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
