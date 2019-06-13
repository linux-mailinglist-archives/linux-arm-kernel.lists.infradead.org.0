Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8D8449D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 19:45:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TnIPnML1T4bfJW137LyjkBo9wtNuVbTJURJtTVsKFms=; b=rI3sbYhSucdHML
	LYxaGBx6rG417GEQVdxfy/XfyfTJ7c8qdBZC+8kswX2NMlfTLiDhUCa7xhmDZ8PdpBDEFwncUkeva
	cTWnGcZYSRrHlOlizbSNpZjgzK6+Zoha5IXQ6Kbo53L1NObBa7o9P9watf5NYSuvqMPUHKhZpFD0h
	u7XFNfFHOpwEMUBCORo5JYjkbFWlkm3nvZBdbkkbrGj2ZEAHMMXyXaq9ZdnJsjT5+EVhuWGnGpDtX
	utN3eChv7epwSanmdVjKE5UhKHQE5f9KD/s6+1vyDbTrO4lT8mg0JwGn+vgQUB+hHb9hDY63qLUt3
	T1fcaLBVRQGvM4mbNLtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbTmS-0002IH-Uc; Thu, 13 Jun 2019 17:44:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbTmF-0002HB-Hy
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 17:44:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6041E367;
 Thu, 13 Jun 2019 10:44:40 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A52BF3F694;
 Thu, 13 Jun 2019 10:44:38 -0700 (PDT)
Date: Thu, 13 Jun 2019 18:44:36 +0100
From: Will Deacon <will.deacon@arm.com>
To: Zhi Li <lznuaa@gmail.com>
Subject: Re: [PATCH V12 2/4] drivers/perf: imx_ddr: Add ddr performance
 counter support
Message-ID: <20190613174436.GG18966@fuggles.cambridge.arm.com>
References: <1556736193-29411-1-git-send-email-Frank.Li@nxp.com>
 <1556736193-29411-2-git-send-email-Frank.Li@nxp.com>
 <20190613112320.GA18966@fuggles.cambridge.arm.com>
 <CAHrpEqRZ0YL9SFk6o7iebJ+diJVMTtyba_9GtujL7H7e4G8qQA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHrpEqRZ0YL9SFk6o7iebJ+diJVMTtyba_9GtujL7H7e4G8qQA@mail.gmail.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_104443_643447_6675A4F7 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Frank Li <frank.li@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 12:04:37PM -0500, Zhi Li wrote:
> On Thu, Jun 13, 2019 at 6:23 AM Will Deacon <will.deacon@arm.com> wrote:
> >
> > On Wed, May 01, 2019 at 06:43:29PM +0000, Frank Li wrote:
> > > Add ddr performance monitor support for iMX8QXP
> > >
> > > There are 4 counters for ddr perfomance events.
> > > counter 0 is dedicated for cycles.
> > > you choose any up to 3 no cycles events.
> > >
> > > for example:
> > >
> > > perf stat -a -e imx8_ddr0/read-cycles/,imx8_ddr0/write-cycles/,imx8_ddr0/precharge/ ls
> > > perf stat -a -e imx8_ddr0/cycles/,imx8_ddr0/read-access/,imx8_ddr0/write-access/ ls
> >
> > I've pushed patches 1, 2 and 4 out with some minor tweaks to:
> >
> > https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=for-next/perf
> >
> > I'll leave the actual .dts change to go via the soc tree, since last time
> > I took one of those it just resulted in conflicts.
> >
> > Frank, Andrey: Please could you try to run the perf fuzzer on this before
> > it lands in mainline? It has a good track record of finding nasty PMU driver
> > bugs, but it obviously requires access to hardware which implements the PMU:
> >
> > http://web.eece.maine.edu/~vweaver/projects/perf_events/fuzzer/
> 
> Okay, how long should be run generally?
> I need make sure it can pass without my patches at our platform.

As you long as you can really, but if it survives a few hours that's usually
a good sign. Overnight is even better.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
