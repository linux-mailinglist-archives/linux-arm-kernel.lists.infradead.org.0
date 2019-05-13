Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5A31B99E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 17:11:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ihnmOHpMB6fP0CKD2ualleA/2rl/KE1x8Ku6/NMdsY=; b=tUHhCGP9HdxSLL
	XeCNDlM5TNuQTvtY1p/5zrPKvFozaHUgzPAJsC+gEbuilCbEAnOk6lAhruJtS+x6BidCZriFvlfJS
	1NREY0+wZky75pY1/o5m1BBqSGk3MerVQuXsn+rZB0afEx9AFL4SyVCGFT8qyJz67/IKhI1CtH6n6
	bui0wYdSqKa43k1pHSsrQUGEAlafk80B8p5zZwmRJ94m2iiZ7ncOyW1m0adNG4HhM6/oDzxvNWUrE
	ExqjQP22g+75A2IdhbdPi3bXDSqHa2o51r02esaNehsDCruNneUMVE4MgxFxtarTwCnhBZcTr48wT
	1jkPSfiTAatb5y4PikWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCcC-0004lF-8L; Mon, 13 May 2019 15:11:44 +0000
Received: from smtprelay0231.hostedemail.com ([216.40.44.231]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCc4-0004kb-5N
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 15:11:37 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay04.hostedemail.com (Postfix) with ESMTP id 84F98180A8859;
 Mon, 13 May 2019 15:11:32 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::::::,
 RULES_HIT:41:355:379:599:966:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1538:1568:1593:1594:1711:1714:1730:1747:1777:1792:2196:2199:2393:2559:2562:2828:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3870:3871:4321:4385:5007:6119:10004:10400:10848:11232:11657:11658:11914:12043:12555:12740:12760:12895:13069:13255:13311:13357:13439:14181:14659:14721:21080:21627:21740:30054:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:40,
 LUA_SUMMARY:none
X-HE-Tag: toy82_2a4704a514822
X-Filterd-Recvd-Size: 1704
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf07.hostedemail.com (Postfix) with ESMTPA;
 Mon, 13 May 2019 15:11:30 +0000 (UTC)
Message-ID: <0f355f524122cb4dd6388431495a9d182e3ed9d6.camel@perches.com>
Subject: Re: [PATCH v9 1/3] arm64: dts: fsl: librem5: Add a device tree for
 the Librem5 devkit
From: Joe Perches <joe@perches.com>
To: "Angus Ainslie (Purism)" <angus@akkea.ca>, angus.ainslie@puri.sm
Date: Mon, 13 May 2019 08:11:29 -0700
In-Reply-To: <20190513145539.28174-2-angus@akkea.ca>
References: <20190513145539.28174-1-angus@akkea.ca>
 <20190513145539.28174-2-angus@akkea.ca>
User-Agent: Evolution 3.30.1-1build1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_081136_272821_9E9CD5BB 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.231 listed in list.dnswl.org]
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
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-05-13 at 07:55 -0700, Angus Ainslie (Purism) wrote:
> This is for the development kit board for the Librem 5. The current level
> of support yields a working console and is able to boot userspace from
> the network or eMMC.
[]
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> new file mode 100644

Perhaps add an entry in the MAINTAINERS file for this
.dts file similar to other freescale boards?



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
