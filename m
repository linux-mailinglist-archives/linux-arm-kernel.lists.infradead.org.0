Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E82001BD80
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 20:54:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RlKznrUQnHbcEoSDF4LYuI85Hg29ajhrb8tSzHu5oLA=; b=pSmoNy5KuVLu91
	34B6rRleejRupqt9S/jhqNTzZ6exrBd74hFlnw6n+GGwPKoniNR9bNGopISvX/poyamTaZ25Pqn9j
	vNm0rBKIpuF1twSYdTrG40PEMMSTtLOqxQnnkv+DwSR8Ku5/2JStWWrQWz5AEsWbKhRm8HYZnXQTf
	0eqdkASGE9CuY2D3pZfK63Bny571BH0P/zrJyPZ/jur946a5eThVw9NqSJMDeLpkzISGZvAGoQosC
	kG1KaJdJ87LMeN96NVxqbWErbBUeGo93qgmQuDhir33dexglu0AS14tUGyjzHc6Kis9as6UvA2hFd
	g5wG5vi78suKGSBE4Fig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQG5V-0006zn-Ac; Mon, 13 May 2019 18:54:13 +0000
Received: from smtprelay0240.hostedemail.com ([216.40.44.240]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQG5O-0006zT-M8
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 18:54:08 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id B8E03C1DCBC;
 Mon, 13 May 2019 18:53:47 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::::::::,
 RULES_HIT:41:355:379:599:800:960:966:973:988:989:1260:1277:1311:1313:1314:1345:1359:1431:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2196:2198:2199:2200:2393:2553:2559:2562:2691:2731:2828:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:3871:3872:3873:4321:4385:4605:5007:6119:6742:10004:10400:10848:11232:11657:11658:11914:12043:12555:12740:12760:12895:13069:13215:13229:13311:13357:13439:14096:14097:14181:14659:14721:21080:21451:21627:30054:30090:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:29,
 LUA_SUMMARY:none
X-HE-Tag: fly77_5b0af3af8b416
X-Filterd-Recvd-Size: 2641
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf06.hostedemail.com (Postfix) with ESMTPA;
 Mon, 13 May 2019 18:53:45 +0000 (UTC)
Message-ID: <ea3792fdc90c2d37dd8a889c173c94d743b7b583.camel@perches.com>
Subject: Re: [PATCH v10 1/4] MAINTAINERS: add an entry for for arm64 imx 
 devicetrees
From: Joe Perches <joe@perches.com>
To: Angus Ainslie <angus@akkea.ca>, Fabio Estevam <festevam@gmail.com>
Date: Mon, 13 May 2019 11:53:44 -0700
In-Reply-To: <e61562bfc80e25bf233ae7fd7b032f83@www.akkea.ca>
References: <20190513174057.4410-1-angus@akkea.ca>
 <20190513174057.4410-2-angus@akkea.ca>
 <CAOMZO5BaQnrDOYogzgpmCExjB+uhYQ8SsxBiMWrSB-1KRtgeVQ@mail.gmail.com>
 <e61562bfc80e25bf233ae7fd7b032f83@www.akkea.ca>
User-Agent: Evolution 3.30.1-1build1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_115406_799384_F8A6476D 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.240 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, "open list:OPEN FIRMWARE AND
 FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-05-13 at 11:48 -0700, Angus Ainslie wrote:
> On 2019-05-13 11:01, Fabio Estevam wrote:
> > On Mon, May 13, 2019 at 2:41 PM Angus Ainslie (Purism) <angus@akkea.ca> 
> > wrote:
> > > Add an explicit reference to imx* devicetrees
> > > 
> > > Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
> > > ---
> > >  MAINTAINERS | 1 +
> > >  1 file changed, 1 insertion(+)
> > > 
> > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > index 7707c28628b9..0871a21a5bbb 100644
> > > --- a/MAINTAINERS
> > > +++ b/MAINTAINERS
> > > @@ -1648,6 +1648,7 @@ T:        git 
> > > git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git
> > >  F:     arch/arm/boot/dts/ls1021a*
> > >  F:     arch/arm64/boot/dts/freescale/fsl-*
> > >  F:     arch/arm64/boot/dts/freescale/qoriq-*
> > > +F:     arch/arm64/boot/dts/freescale/imx*
> > 
> > No, please put this entry under ARM/FREESCALE IMX / MXC ARM 
> > ARCHITECTURE
> > 
> 
> I believe order is important. Would you like it before or after the "N:" 
> entries ? Or just as the last entry.

Order is not important, but I prefer the
N: entries after the X: and F: entries.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
