Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E953189A41
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 12:08:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1NnqdCmMH9cn8xEZwOaITbDTlFE+7sxlqXavL562i/s=; b=XllPRJSu5lnG+8
	2uYxmcH42scyKIa8ZyV3ImXe67IitXIkI/xdWE4axAqYlWENeAz+bTcRA8A8LuWzWaEiMs7m6s82y
	mXF+OeiwKBYR8kLLsOPr4qhPQvWC9hEfttnSNby8ekeN07RYPWC0PbZQq/J+6EMeLiHzsZto48hBB
	HLx/5zRj9d6BlrNfk5gxCFcguxnrGXimvssaFc6mg51FrluQPTBRWdYaSULY+86yIcJ6UULLBbzEi
	kUg/hWLPh3q1bQRTkvgkSXodrah/iF6tCzZrj1Zw+LvqYfFt/gIPfr3zfS4GENjLGK+Km76UX52HF
	8MvQUimq0WYV3VINjRYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEWYm-0003qZ-9m; Wed, 18 Mar 2020 11:08:28 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEWYa-0003pj-Nw
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 11:08:18 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id CEA862003C6;
 Wed, 18 Mar 2020 12:08:08 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C18FD201202;
 Wed, 18 Mar 2020 12:08:08 +0100 (CET)
Received: from localhost (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id AD12620506;
 Wed, 18 Mar 2020 12:08:08 +0100 (CET)
Date: Wed, 18 Mar 2020 13:08:08 +0200
From: Abel Vesa <abel.vesa@nxp.com>
To: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [RFC 10/11] reset: imx: Add audiomix reset controller support
Message-ID: <20200318110808.hzwr7m2hc2nfftvm@fsr-ub1664-175>
References: <1583226206-19758-1-git-send-email-abel.vesa@nxp.com>
 <1583226206-19758-11-git-send-email-abel.vesa@nxp.com>
 <ac6eb54c01cce4ec52560ac622e024ab47f2136c.camel@pengutronix.de>
 <20200313141606.euumtuizm562zghv@fsr-ub1664-175>
 <3aedf6357f321efaf1d59a0b654300803ad51cef.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3aedf6357f321efaf1d59a0b654300803ad51cef.camel@pengutronix.de>
User-Agent: NeoMutt/20180622
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_040816_926595_A4107280 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rob Herring <robh@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-03-13 16:55:47, Philipp Zabel wrote:
> On Fri, 2020-03-13 at 16:16 +0200, Abel Vesa wrote:
> [...]
> > > > +	if (assert) {
> > > > +		pm_runtime_get_sync(rcdev->dev);
> > > 
> > > This seems wrong. Why is the runtime PM reference count incremented when
> > > a reset is asserted ...
> > 
> > The audiomix IP has its own power domain. 
> 
> The reset controller does not control the power domain for its
> consumers. The consumer of this reset should implement runtime PM.
> 

No, the reset controller itself is part of a more complex IP called audiomix
that has its own power domain.

> > The way I see it, when the last deassert is done, there is no point
> > in keeping the audiomix on. So, unless the clock controller part of it does it,
> > the audiomix will be powered down.
> 
> You mean when the last assert is done? Presumably the driver wants to
> use the hardware after deasserting the reset and asserts the reset when
> it is done.

No, I mean deassert. If there is no reset asserted anymore, then the audiomix
can power down, if nothing else (I'm talking about the other stuff that's
in the audiomix, like clock controller) keeping it on.

The reset controller needs to be on only when there is an assertion of at least
one reset bit going on.

> 
> regards
> Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
