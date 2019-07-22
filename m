Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF196F711
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 04:01:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N1KxyYPifMEY1BRk/s26HgcKpWMQi1GQ9YmsMRBnrRM=; b=bFvwCE1wwqG7Uq
	H8BI4TbNTbqtITXDd/K5/wG6wYeZU1dqYdMWBRLHAObF8igW0G5UoLqSCwUTdUp3REP7sS+IaV+By
	Z0gO+p1GjmA2K28Q4ecj3YyWHrJIYnA6LTCluVZqgfmpraBuxYNOF2yCXicjMRkXGSxC77v+cZzT7
	dKsn7g6HcBCdaK0q0UovUeYvXRmjB/mAtfV2LnZ0ZYOZ2lhQzRp/aHdkI8PDCiwOrMjVGEDVK9+Em
	5KcX2XrHyCV3NGS5giOON6zl/KpYqLVY56kaPSSaXFCQ5foRHZDwC/3+BAkkUybSc9Mwx5gEMX3Ln
	uAyMtwtps41YMMA7Jz1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpNdW-0003tI-E6; Mon, 22 Jul 2019 02:01:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpNdH-0003sy-PF
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 02:00:57 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2145B21903;
 Mon, 22 Jul 2019 02:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563760855;
 bh=0+CKCqaGn9rc9ATckfsjU7zrwnYa0a42D4iOj0xJWso=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j9r0LDVxTxRVHTVu+Rs7Uu12SKkCSVLixXbjwwaiInDmkCupXAUAm1imOSKmaSyAE
 cjCr91IMOcSgs3x5zmhT4DmEju+YPdVp8Js1Jt31SHWrwsZpSyvpN/xPAK0ICOkOVm
 nY+sOq57aaxkOqcC8x82pyQtFKRSBaCTzfBIKUbg=
Date: Mon, 22 Jul 2019 10:00:27 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH 1/4] arm64: Enable TIMER_IMX_SYS_CTR for ARCH_MXC platforms
Message-ID: <20190722020026.GQ3738@dragon>
References: <20190621070720.12395-1-Anson.Huang@nxp.com>
 <20190624022200.GN3800@dragon> <20190624022713.GO3800@dragon>
 <DB3PR0402MB39162662C69B45BDB948D002F5E00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB39162662C69B45BDB948D002F5E00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_190055_856126_D42B9FA9 
X-CRM114-Status: GOOD (  19.22  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 02:35:10AM +0000, Anson Huang wrote:
> Hi, Shawn
> 
> > -----Original Message-----
> > From: Shawn Guo <shawnguo@kernel.org>
> > Sent: Monday, June 24, 2019 10:27 AM
> > To: Anson Huang <anson.huang@nxp.com>
> > Cc: mark.rutland@arm.com; Aisheng Dong <aisheng.dong@nxp.com>; Peng
> > Fan <peng.fan@nxp.com>; festevam@gmail.com; Jacky Bai
> > <ping.bai@nxp.com>; devicetree@vger.kernel.org; sboyd@kernel.org;
> > catalin.marinas@arm.com; s.hauer@pengutronix.de; linux-
> > kernel@vger.kernel.org; Daniel Baluta <daniel.baluta@nxp.com>; linux-
> > clk@vger.kernel.org; robh+dt@kernel.org; dl-linux-imx <linux-
> > imx@nxp.com>; kernel@pengutronix.de; Leonard Crestez
> > <leonard.crestez@nxp.com>; will@kernel.org; mturquette@baylibre.com;
> > linux-arm-kernel@lists.infradead.org; Abel Vesa <abel.vesa@nxp.com>
> > Subject: Re: [PATCH 1/4] arm64: Enable TIMER_IMX_SYS_CTR for ARCH_MXC
> > platforms
> > 
> > On Mon, Jun 24, 2019 at 10:22:01AM +0800, Shawn Guo wrote:
> > > On Fri, Jun 21, 2019 at 03:07:17PM +0800, Anson.Huang@nxp.com wrote:
> > > > From: Anson Huang <Anson.Huang@nxp.com>
> > > >
> > > > ARCH_MXC platforms needs system counter as broadcast timer to
> > > > support cpuidle, enable it by default.
> > > >
> > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > > ---
> > > >  arch/arm64/Kconfig.platforms | 1 +
> > > >  1 file changed, 1 insertion(+)
> > > >
> > > > diff --git a/arch/arm64/Kconfig.platforms
> > > > b/arch/arm64/Kconfig.platforms index 4778c77..f5e623f 100644
> > > > --- a/arch/arm64/Kconfig.platforms
> > > > +++ b/arch/arm64/Kconfig.platforms
> > > > @@ -173,6 +173,7 @@ config ARCH_MXC
> > > >  	select PM
> > > >  	select PM_GENERIC_DOMAINS
> > > >  	select SOC_BUS
> > > > +	select TIMER_IMX_SYS_CTR
> > >
> > > Where is that driver?
> > 
> > Okay, just found it in the mailbox.  They seem to be sent in the wrong order.
> > Really, you should send this series only after the driver lands on mainline.
> 
> OK, just noticed that mainline does NOT have it, since I did it based on next tree.
> I will resend the patch series after the system counter driver landing on mainline.

I just picked the series up, so no need to resend.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
