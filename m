Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AEEB10EAE7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 14:35:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HF/v/EZKOaj//LyY5XzluOy13UJWeOCsQs6BcApfiLU=; b=SRfhEzwyMoxhwK
	8OtbGc4mSnrOuPbXIZxs0EXvWTq8mIqdKB2gqY9aS4OoW+XmiCJ3AEjGWtBKgmvE3WjtTyueg7XXq
	k7VpgN7q4Lwh4DegFkc0IPAcuL0T6Z3L6d10ULie+PgnlBI1PeLQDhbRENEqftI8w80tdJIleiVEP
	Dj6RHWHb079KcQbX5VOTDLzsxowYpKpziEGiaIaiJLnq+Byr2wqYsU86EEQ38/OOErH/iazux/REC
	2LxKbzun6ye8FX2g3MdULZ5QLsgesiLFl8fW3yWml45m4t50YcSMLC2eV2eWC2TNYzfHoz8BbWjIa
	HkmVRWj0X39cogRpli+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iblrB-0002J8-9A; Mon, 02 Dec 2019 13:35:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iblr5-0002Ie-2P
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 13:35:12 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2CD5020833;
 Mon,  2 Dec 2019 13:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575293710;
 bh=wxSZfFo7SznwT1ayrLRxDPV9OD+qKtgr4xwwiWvEVkA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dQc5qo85Bdrd3bB/Si1OSU1+SyQi7l8HIZFBAv7bnUXLMsReDrt+nCn6TCsfVTmiX
 cK37EoODq3M8t22DmDv6IY6cmmxfz/toFy2QQBS+8tAu+P81ExkQvXeex9s+EDIlLT
 dG9fJJ+vEX5YMXQ+GKJ7+WJXVZDJL82or/uqURtc=
Date: Mon, 2 Dec 2019 21:34:51 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v3 4/6] PM / devfreq: Add dynamic scaling for imx ddr
 controller
Message-ID: <20191202133449.GA21897@dragon>
References: <cover.1572558427.git.leonard.crestez@nxp.com>
 <5fcf829265ecde1af32cb1369528c97361c76992.1572558427.git.leonard.crestez@nxp.com>
 <20191202053847.GC9767@dragon>
 <VI1PR04MB70234400D6CF248C18321FDBEE430@VI1PR04MB7023.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB70234400D6CF248C18321FDBEE430@VI1PR04MB7023.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_053511_156532_755F413B 
X-CRM114-Status: GOOD (  12.53  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 02, 2019 at 09:12:12AM +0000, Leonard Crestez wrote:
> >> +
> >> +	/* change the ddr freqency */
> >> +	arm_smccc_smc(IMX_SIP_DDR_DVFS, target_freq, online_cpus,
> >> +			0, 0, 0, 0, 0, &res);
> >> +
> >> +	local_irq_enable();
> >> +}
> >> +
> >> +struct clk *clk_get_parent_by_index(struct clk *clk, int index)
> >> +{
> >> +	struct clk_hw *hw;
> >> +
> >> +	hw = clk_hw_get_parent_by_index(__clk_get_hw(clk), index);
> > 
> > Okay, this is why you need clk-provider.h.  But this
> > clk_get_parent_by_index() function looks completely generic, and should
> > be proposed to clock core?
> 
> There are very few driver users of clk_hw_get_parent_by_index:
> 
> $ git grep -wl clk_hw_get_parent_by_index |grep -v drivers/clk
> arch/mips/alchemy/common/clock.c
> drivers/cpufreq/qoriq-cpufreq.c
> drivers/devfreq/imx8m-ddrc.c
> drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c
> drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c
> drivers/media/platform/atmel/atmel-isc-base.c
> drivers/rtc/rtc-ac100.c
> include/linux/clk-provider.h
> 
> Even clk_get_parent has few users and it contains this strange comment:
> 
> /* TODO: Create a per-user clk and change callers to call clk_put */
> 
> That proposed change effectively creates a new API? I didn't want to add 
> a new clk core API with unclear semantics.

Since the merged version has 'static' added for clk_get_parent_by_index(),
I'm fine with it being a local function.  It's Stephen's call whether
we should have it at clock core level.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
