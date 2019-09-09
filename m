Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEEA2AD4B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 10:21:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tzsfWaX0ruHeQrTZS4lUSNOvWNkpFBnMWNgWtw0njag=; b=pYjz/vH0Tc87cK
	6JjD8V5aSuSUVfkn7Oz0JnQM4ahJnwH5xwKdsNN7NYU2hNgUnkEfu2xZ27XICBav6ZqvtEz1vcGTT
	xogEbWBSlhV66zeziv7ekzUPDlhTbr5MGKRMhCsDQp3gD2ZEYoqh9HQZsj2RB5wWw02rPoV4rOsXO
	BPr3WCrD6hv7v9SS5oLAjuJu1QZKZdZWquwPZottO9jXm+l2E0LhKkkCGO3HxBi9p4D5B46n4wyED
	BYSOHNO8G1VzJa/7BOgMtmEemcAPPZrxYjR8Oq4U9QydA/CcRhZwYljeCZrAd/qAq6o+OXc5f6Y7T
	J4R5R8jgjTnQrEr2qsRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Euu-0008GA-H0; Mon, 09 Sep 2019 08:20:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7EuX-0008FW-LB
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 08:20:34 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B704D20678;
 Mon,  9 Sep 2019 08:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568017232;
 bh=hUjMFYDt15aaG0KcZhtWuZvcPW21IIr+paV7LbXYOQk=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=LXLYTbc0hnvTUjlZJEbqYjodBBHPV/b8iEKfS7UbLV2zb1p75QOnTkeUJhQRRxc6M
 8GJWSw0+K+FqKPGS3JLrn1fTiPDdflA3APu33YlNsim7A72E9EarwUu2vCFbQheA93
 YNiqaT/PfggdraDmM5l56vTOFLEUmUh794cM81Xc=
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB70239D5AA9604E72E74CD555EEBA0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <c3e86b5a832a14278e8ba670d51defc70ee78d84.1567590349.git.leonard.crestez@nxp.com>
 <20190906172452.D1ED620838@mail.kernel.org>
 <VI1PR04MB70239D5AA9604E72E74CD555EEBA0@VI1PR04MB7023.eurprd04.prod.outlook.com>
To: Daniel Baluta <daniel.baluta@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: imx: pll14xx: Fix quick switch of S/K parameter
User-Agent: alot/0.8.1
Date: Mon, 09 Sep 2019 01:20:31 -0700
Message-Id: <20190909082032.B704D20678@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_012033_711757_7CA4934B 
X-CRM114-Status: GOOD (  15.39  )
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Viorel Suman <viorel.suman@nxp.com>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Leonard Crestez (2019-09-06 12:36:47)
> On 06.09.2019 20:24, Stephen Boyd wrote:
> > Quoting Leonard Crestez (2019-09-04 02:49:18)
> >> The PLL14xx on imx8m can change the S and K parameter without requiring
> >> a reset and relock of the whole PLL.
> >>
> >> Fix clk_pll144xx_mp_change register reading and use it for pll1443 as
> >> well since no reset+relock is required on K changes either.
> >>
> >> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> >> ---
> >>   drivers/clk/imx/clk-pll14xx.c | 40 +++++++----------------------------
> >>   1 file changed, 8 insertions(+), 32 deletions(-)
> >>
> >> The PLLs are currently table-based and none of the entries differ only
> >> in S/K so further work would be required to make use of this. The
> >> prospective user is audio doing tiny freq adjustments and there is no
> >> standard API for that.
> > 
> > sub-Hz adjustments?
> 
> Maybe at the audio level? The PLL itself runs at ~400Mhz so wouldn't 
> need sub-hz adjustment.
> 
> My understanding is that adjustments would be made based on an external 
> clock so if CLK framework rounds to 1hz then it would just take longer 
> for adjustment to kick in.

Ok.

> 
> >> Lacking users is not a good reason to carry broken code around.
> > 
> > Maybe add a Fixes tag so if anyone wants to use it in LTS kernels there
> > might be a chance that they'll find this patch mention code they're
> > using.
> 
> It doesn't meet stable kernel rules because it doesn't "fix a real bug 
> that bothers people" but it's still technically a fix:
> 
> Fixes: 8646d4dcc7fb ("clk: imx: Add PLLs driver for imx8mm soc")
> 

Sure. Thanks! I assume Shawn will pick this up.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
