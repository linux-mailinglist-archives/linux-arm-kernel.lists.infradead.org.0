Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C2D1E4DDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 21:08:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AD5pF0G5WM5oj07osvYoZkCfku/66+pDgkltiR2F7Pk=; b=ZbH3G7rW6JTW0G
	Tn8A6zlKf/o0T0B4BOxPMaC2hwYSpc691f5kqwtLmjAKHAsxmEkTnsWxl9BpIi4IGEQTITBV+G8eN
	JeJlfZB2SZAaMnJ1R62J2eksmZKqK8G5HycWpuT+++8IUEmmxhjF063fYbEkmoprBLBC0DoRpMxiO
	2kHNTN5LUCRMnir+eZbadmkSIqr8PwBvFPwOAd/637+lVEdX4rs/3cRjT7lcOTlTQlYKLgrl8micJ
	PWfZMRLE5xWK3RB/wshsSCQrGIGJ3bGevV8R4FIxNvD3IeYPzkHNiTiIWaqBLOCBboe/7b8etQzCN
	yPb4Gy/5V6vsH35yezNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je1Pe-0006Kk-1P; Wed, 27 May 2020 19:08:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je1PQ-0006KL-QN
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 19:08:14 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5E53D2078C;
 Wed, 27 May 2020 19:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590606492;
 bh=cHL6o+SsXM5bjCur7xhcXAgXzX9MhHlY4yoFesR4KXc=;
 h=In-Reply-To:References:Subject:From:List-Id:Cc:To:Date:From;
 b=WXn9uORyr5Qjobo3ES/PV75UcWfkOzvsK0WRCF3zqy67vharZbzvsEANQBo+RX0+t
 pB5w91+lr7DNkeskqVeclEBp0hXaJBAkHa3mvzUlVyr5MwnFpEtvudkHxrigeDnu50
 D671XwFc/oe9I1z2d1DRbFlWr/MR6LrXN/bPDrI8=
MIME-Version: 1.0
In-Reply-To: <87mu5tpi2q.fsf@soft-dev15.microsemi.net>
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
 <20200513125532.24585-13-lars.povlsen@microchip.com>
 <159054818459.88029.10644772284176356883@swboyd.mtv.corp.google.com>
 <87mu5tpi2q.fsf@soft-dev15.microsemi.net>
Subject: Re: [PATCH 12/14] clk: sparx5: Add Sparx5 SoC DPLL clock driver
From: Stephen Boyd <sboyd@kernel.org>
To: Lars Povlsen <lars.povlsen@microchip.com>
Date: Wed, 27 May 2020 12:08:11 -0700
Message-ID: <159060649156.88029.3527344402878672794@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_120812_879967_65DD9568 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-gpio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Michael Turquette <mturquette@baylibre.com>, SoC Team <soc@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Olof Johansson <olof@lixom.net>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Lars Povlsen (2020-05-27 07:29:17)
> 
> Stephen Boyd writes:
> 
> > Quoting Lars Povlsen (2020-05-13 05:55:30)
> >> diff --git a/drivers/clk/clk-sparx5.c b/drivers/clk/clk-sparx5.c
> >> new file mode 100644
> 
> >> +}
> >> +
> >> +static struct clk_hw *s5_clk_hw_get(struct of_phandle_args *clkspec, void *data)
> >> +{
> >> +       struct s5_clk_data *pll_clk = data;
> >> +       unsigned int idx = clkspec->args[0];
> >> +
> >> +       if (idx >= N_CLOCKS) {
> >> +               pr_err("%s: invalid index %u\n", __func__, idx);
> >> +               return ERR_PTR(-EINVAL);
> >> +       }
> >> +
> >> +       return &pll_clk->s5_hw[idx].hw;
> >> +}
> >> +
> >> +static void __init s5_pll_init(struct device_node *np)
> >> +{
> >> +       int i, ret;
> >> +       struct s5_clk_data *pll_clk;
> >> +       struct clk_init_data init = { 0 };
> >
> > Just do init = { } so that 0 doesn't trip up sparse.
> 
> I'm not sure what you mean by "trip up sparse", but its changed now.
> 

For example, sparse complains if the first struct member is a pointer
and an integer is assigned to it.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
