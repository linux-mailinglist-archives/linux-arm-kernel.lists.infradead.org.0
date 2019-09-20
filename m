Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA1FB95FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 18:53:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZoRiZoWOJecVc/gomhrNESUEP1nBmytAsgQVm88o1ck=; b=oCMdHkewM2LrqT
	bNPx1t6I/G5znuRmFQRdF7lKIhv+tEZIw2XerbvWxddIBrLhsOSEEEgBcNpJsgZPFYyBzSRdSTReJ
	2VBrWxInklcRPKdpmTFkjVdY3nbzdrG+4AKFR8Ut6RkuegtOMq+RNlwKAU8TBKjZ4YRliTteGe7Le
	DSR8KjReQ2PUQAkMceUmiV7t/YPoiiMMLw284dNYWejfDz0y5p9H4JaG5ZwVLIHVHdZ4Vv+1RKQ9z
	1a8ZCq3YdNF3nCoHw94mlvDbFOnFDAYHgulRS1RbAUhpSkCXTyPq8xgJxPBsK7ChQh7eq13grHuKb
	Uo8lC2kkdtX6rr0/E8kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBM9L-0001JN-AS; Fri, 20 Sep 2019 16:52:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBM9D-0001IP-Nc; Fri, 20 Sep 2019 16:52:45 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2C8BB207FC;
 Fri, 20 Sep 2019 16:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568998363;
 bh=TYstjFpPpmJlXXPM8BgcwsN3SWwWCF707s2P3uizfwk=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=0JoVOOxQBmIIvROvdiQqjgNG0IVfCMPOzHRIqpFM4J+X8aI3tOc6/GqDoGvuAD7b+
 W1N1tvawHZdnGOKDoCELxkcxaAbcB5W7P2pDeIVG0L0cx9EZm934l+NS0DiT84+T48
 yTDO8/XrcVZmt9fc2wBxlbAaT1M2AOWZq2xDww8g=
MIME-Version: 1.0
In-Reply-To: <2551a729-5379-e039-4d5a-a83fa877fb14@baylibre.com>
References: <20190919093627.21245-1-narmstrong@baylibre.com>
 <20190919093809.21364-1-narmstrong@baylibre.com>
 <1j1rwce8yf.fsf@starbuckisacylon.baylibre.com>
 <20190919170610.541D620644@mail.kernel.org>
 <2551a729-5379-e039-4d5a-a83fa877fb14@baylibre.com>
To: Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 3/3] clk: meson: clk-pll: always enable a critical PLL
 when setting the rate
User-Agent: alot/0.8.1
Date: Fri, 20 Sep 2019 09:52:42 -0700
Message-Id: <20190920165243.2C8BB207FC@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_095243_817255_5A1C06F2 
X-CRM114-Status: GOOD (  30.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Neil Armstrong (2019-09-20 01:06:58)
> Hi Stephen,
> 
> On 19/09/2019 19:06, Stephen Boyd wrote:
> > Quoting Jerome Brunet (2019-09-19 06:01:28)
> >> On Thu 19 Sep 2019 at 11:38, Neil Armstrong <narmstrong@baylibre.com> wrote:
> >>
> >>> Make sure we always enable a PLL on a set_rate() when the PLL is
> >>> flagged as critical.
> >>>
> >>> This fixes the case when the Amlogic G12A SYS_PLL gets disabled by the
> >>> PSCI firmware when resuming from suspend-to-memory, in the case
> >>> where the CPU was not clocked by the SYS_PLL, but by the fixed PLL
> >>> fixed divisors.
> >>> In this particular case, when changing the PLL rate, CCF doesn't handle
> >>> the fact the PLL could have been disabled in the meantime and set_rate()
> >>> only changes the rate and never enables it again.
> >>>
> >>> Fixes: d6e81845b7d9 ("clk: meson: clk-pll: check if the clock is already enabled')
> >>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> >>> ---
> >>>  drivers/clk/meson/clk-pll.c | 2 +-
> >>>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>>
> >>> diff --git a/drivers/clk/meson/clk-pll.c b/drivers/clk/meson/clk-pll.c
> >>> index ddb1e5634739..8c5adccb7959 100644
> >>> --- a/drivers/clk/meson/clk-pll.c
> >>> +++ b/drivers/clk/meson/clk-pll.c
> >>> @@ -379,7 +379,7 @@ static int meson_clk_pll_set_rate(struct clk_hw *hw, unsigned long rate,
> >>>       }
> >>>  
> >>>       /* If the pll is stopped, bail out now */
> >>> -     if (!enabled)
> >>> +     if (!(hw->init->flags & CLK_IS_CRITICAL) && !enabled)
> >>
> >> This is surely a work around to the issue at hand but:
> >>
> >> * Enabling the clock, critical or not, should not be done but the
> >> set_rate() callback. This is not the purpose of this callback.
> >>
> >> * Enabling the clock in such way does not walk the tree. So, if there is
> >> ever another PSCI Fw which disable we would get into the same issue
> >> again. IOW, This is not specific to the PLL driver so it should not have
> >> to deal with this.
> > 
> > Exactly.
> > 
> >>
> >> Since this clock can change out of CCF maybe it should be marked with
> >> CLK_GET_RATE_NOCACHE ?
> > 
> > Yes, or figure out a way to make the clk state match what PSCI leaves it
> > in on resume from suspend.
> > 
> > 
> >>
> >> When CCF hits a clock with CLK_GET_RATE_NOCACHE while walking the tree,
> >> in addition to to calling get_rate(), CCF could also call is_enabled()
> >> if the clock has CLK_IS_CRITICAL and possibly .enable() ?
> > 
> > This logic should go under a new flag. The CLK_GET_RATE_NOCACHE flag
> > specifically means get rate shouldn't be a cached operation. It doesn't
> > relate to the enable state. I hope that you can implement some sort of
> > resume hook that synchronizes the state though so that you don't need to
> > rely on clk_set_rate() or clk_get_rate() to trigger a sync.
> > 
> 
> It's exactly the goal of [1] where I resync a clock tree after a resume.

Ok. I haven't looked at that series yet. We can move this discussion
there if you like.

> 
> But I don't check the enable state, would you mean that:
> if core->ops->enable && core->enable_count > 0 && !clk_core_is_enabled(core)
>     core->ops->enable(core->hw)
> 
> along the parent/rate resync ?
> 
> Isn't that dangerous ?
> 

Why is it dangerous? If the clk state is lost across suspend/resume we
need to restore the state of the clk somehow. One way would be to have
the clk driver tell the framework that this clk is now off and to drop
the enable counts for any consumers. Then consumers will need to call
clk_enable() again to turn the clk back on in the consumer resume
callback. Or we can try to be smarter/nicer and restore the clk state to
what the consumer is expecting across suspend/resume. I haven't thought
about what is better or worse.

On the one hand, device drivers already handle some things not being
saved/restored during system low power modes. But on the other hand I
don't know what the policy is for external resources that a device uses,
such as clks or regulators or pinctrl muxing, etc.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
