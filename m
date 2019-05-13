Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 900411BA98
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 18:05:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=87Xg3sFLjoGlWBSg0x1PqI0pUUtpHZgW/XG84GjzBJY=; b=ATNb3e0Oq6hbxJ
	ltcusbT77ZnGPLLE4iw9W1peLWsKckNqF8Y8QAmL+VrDwBB5xmr3zkNLyyPSHqZKQtvsf8JcbLuoW
	13ulrhn4/UjiFX990d6YIiVIeAtTqLrIdwVHIea8itxWD8N5Ni9kEiIzrzWkY53xCxup2FXux3IB6
	LywypvZT+4AXUL5bjHxrndQitKm1QSh/5wb6TzhxANIfbCmP/Ytpi2MqlXnCFPSHragwhhReP/ECS
	PfucndN+8Sx5HrUBw+pDHltFud01t83pCOKZJeS/4mtBdLhNWJ0UVe13CV0AY+7gwJjtsWVo2vpzr
	tYM5s063C8DPVFIjKZ3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQDST-0003D6-4O; Mon, 13 May 2019 16:05:45 +0000
Received: from smtprelay0130.hostedemail.com ([216.40.44.130]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQDSM-0003CG-MU
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 16:05:40 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay04.hostedemail.com (Postfix) with ESMTP id D35CA180A8CCE;
 Mon, 13 May 2019 16:05:31 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::::::::,
 RULES_HIT:41:355:379:599:800:960:966:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2110:2196:2199:2393:2553:2559:2562:2691:2828:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4321:4385:5007:6119:6742:7514:7809:7903:10004:10400:10848:11232:11657:11658:11914:12043:12296:12555:12679:12740:12760:12895:13071:13184:13229:13255:13439:14096:14097:14180:14181:14659:14721:21060:21080:21451:21627:21740:30054:30090:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:none, Custom_rules:0:0:0, LFtime:29,
 LUA_SUMMARY:none
X-HE-Tag: band11_4ce277087f652
X-Filterd-Recvd-Size: 3941
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf14.hostedemail.com (Postfix) with ESMTPA;
 Mon, 13 May 2019 16:05:28 +0000 (UTC)
Message-ID: <a2a45d8f881d877027e2c32faf71c7a3f4897324.camel@perches.com>
Subject: Re: [PATCH v9 1/3] arm64: dts: fsl: librem5: Add a device tree for
 the Librem5 devkit
From: Joe Perches <joe@perches.com>
To: Angus Ainslie <angus@akkea.ca>
Date: Mon, 13 May 2019 09:05:27 -0700
In-Reply-To: <11c9a715ee0599e50359eb5ad5bd093e@www.akkea.ca>
References: <20190513145539.28174-1-angus@akkea.ca>
 <20190513145539.28174-2-angus@akkea.ca>
 <0f355f524122cb4dd6388431495a9d182e3ed9d6.camel@perches.com>
 <11c9a715ee0599e50359eb5ad5bd093e@www.akkea.ca>
User-Agent: Evolution 3.30.1-1build1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_090538_885037_807D0A98 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.130 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel-owner@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-05-13 at 08:35 -0700, Angus Ainslie wrote:
> Hi Joe,

Hi.

> On 2019-05-13 08:11, Joe Perches wrote:
> > On Mon, 2019-05-13 at 07:55 -0700, Angus Ainslie (Purism) wrote:
> > > This is for the development kit board for the Librem 5. The current 
> > > level
> > > of support yields a working console and is able to boot userspace from
> > > the network or eMMC.
> > []
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts 
> > > b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> > > new file mode 100644
> > 
> > Perhaps add an entry in the MAINTAINERS file for this
> > .dts file similar to other freescale boards?
> 
> The MAINTAINERS files has this entry
> 
> ARM/FREESCALE IMX / MXC ARM ARCHITECTURE
> M:  Shawn Guo <shawnguo@kernel.org>
> M:  Sascha Hauer <s.hauer@pengutronix.de>
> R:  Pengutronix Kernel Team <kernel@pengutronix.de>
> R:  Fabio Estevam <festevam@gmail.com>
> R:  NXP Linux Team <linux-imx@nxp.com>
> L:  linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> S:  Maintained
> T:  git git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git
> N:  imx
> N:  mxs
> X:  drivers/media/i2c/
> 
> Shouldn't the "N: imx" cover this board already ?

Yes, it would, but not 'exclusively' by the get_maintainer.pl
script.

> Maybe I misunderstood, are you suggesting I add an new entry for "F: 
> arch/arm64/boot/dts/freescale/*" ?

I don't believe an F: arch/arm64/boot/dts/freescale/*
pattern would be appropriate as there is already another
section with this path as a pattern.

ARM/FREESCALE LAYERSCAPE ARM ARCHITECTURE
M:	Shawn Guo <shawnguo@kernel.org>
M:	Li Yang <leoyang.li@nxp.com>
L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
S:	Maintained
T:	git git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git
F:	arch/arm/boot/dts/ls1021a*
F:	arch/arm64/boot/dts/freescale/fsl-*
F:	arch/arm64/boot/dts/freescale/qoriq-*

I suggest perhaps just adding a more specific entry of

F:	arch/arm64/boot/dts/freescale/imx*

And just FYI:

F: entries should be preferred over N: entries as
filename collisions with other regex matches are common.

Controlling the mismatches as was done with the X: exclusion
for drivers/media/i2c/ may not scale if another filename
is added into the kernel tree that is not maintained by you
that matches either of the imx or mxs pattern.

It's not really a significant issue though you may get a few
patches for files you don't care about at some point.

cheers, Joe


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
