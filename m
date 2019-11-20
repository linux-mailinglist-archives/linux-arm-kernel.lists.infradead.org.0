Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEFC1037EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 11:50:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j6IN1WRRL70+TnmlqIZfbk7yqJDNucE83WwK49+xRd0=; b=MrGjr9+Wj1kz9I
	tCSFcHeLtn32z9R9kYCJu2oNCTSX7Z7yqiFH9llVJ/yirF5rzVB3u2azCmxDGrgjLamsg/WxQghX7
	rSZH9tXi2azFCx/mJEqmP6Zp4BearQow0Xc+ySuxjo39HDnVC3ARDWpNDxOjV+lugGJFuJCtlJP/k
	sgP9of7WcATFmequMA+5EDjtRdasXQ3y/M9t9+LixhVbRCLlOJc2NmHT4RDyJTkK8xszKTEkpKbrb
	HjJCf3wC/rPa5kALs+6v0pd+bCubNzGS1nBM4WPFNRCF52T+x8Zh2xDOqqzrTFjLlEwP0LIBV6ODH
	E7+0sGRiUT15TAlLk7Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXNZC-0007SN-Ti; Wed, 20 Nov 2019 10:50:34 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXNZ3-0007RP-Hc
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 10:50:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pit8k6B7KXD5FzbtCQkIqaIGuSaLRjjmD6+X4g7l1cc=; b=r2W9GjFbS9LaY9fiOdmg8cpIj
 DXLwnhRFCpFdcluOKgnvZP471CHcIgPfQhr14myGpWXevJ/QMLM5MHNSQppXA5+lCY9MQRW4ZKPEM
 a2oEsGBK1fVlWNEKe3kuNOUbHm9Mk+lFJu692mXtccmg0sk4eSd8dlV/m/0oYHA3AgF6O5Clpl8fF
 zqbqxy9fMCEs669JyGobm4s/JIJH2SovALuKTwa0hiGH/JDVlOkvaQeKDuhIRrSSvLZU6z08iH/a1
 LJYsxotm6cUBZL+YPRwFFSDct62k1jHnEIM29M71DqJpDwfuLwSKVQ0yiS/csn15iLFjnUM/zl0JL
 8Zspk8GeA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:42146)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iXNYw-0007oa-GF; Wed, 20 Nov 2019 10:50:18 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iXNYv-0001fr-Kh; Wed, 20 Nov 2019 10:50:17 +0000
Date: Wed, 20 Nov 2019 10:50:17 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Leonid Movshovich <event.riga@gmail.com>
Subject: Re: [PATCH] irq-gic: select all CPU's selected in interrupt affinity
 settings
Message-ID: <20191120105017.GN25745@shell.armlinux.org.uk>
References: <CAPaFbat4MM0=iVB-VazTK9=2qRebAgEN4euYCTESRo3yfx75Kw@mail.gmail.com>
 <20191119233633.GG25745@shell.armlinux.org.uk>
 <CAPaFbatG+ePwjCnBva1tfmzmvpHZv9xW3nM4gj2DTpFn=D+9Vg@mail.gmail.com>
 <2cd3e872-57d5-5cbb-78d7-98da6447dc59@arm.com>
 <CAPaFbasJGxV=mEGHAOWdt31vapCfV_RyD1Ptz6aa_WTp6htPKg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPaFbasJGxV=mEGHAOWdt31vapCfV_RyD1Ptz6aa_WTp6htPKg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_025025_591684_25355AE6 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 10:44:39AM +0000, Leonid Movshovich wrote:
> On Wed, 20 Nov 2019 at 01:15, Robin Murphy <robin.murphy@arm.com> wrote:
> >
> > On 2019-11-20 12:24 am, Leonid Movshovich wrote:
> > > On Tue, 19 Nov 2019 at 23:36, Russell King - ARM Linux admin
> > > <linux@armlinux.org.uk> wrote:
> > >>
> > >> On Tue, Nov 19, 2019 at 11:12:26PM +0000, event wrote:
> > >>> So far only a CPU selected with top affinity bit was selected. This
> > >>> resulted in all interrupts
> > >>> being processed by CPU0 by default despite "FF" default affinity
> > >>> setting for all interrupts
> > >>
> > >> Have you checked whether this causes _ALL_ CPUs in the mask to be
> > >> delivered a single interrupt, thereby causing _ALL_ CPUs to be
> > >> slowed down and hit the same locks at the same time.
> > >>
> > >
> > > Yes, I've checked this. No, interrupt is delivered to only one CPU.
> > > Also ARM GIC architecture specification specifically states in chapter
> > > 3.1.1 that hardware interrupts are delivered to a single CPU in
> > > multiprocessor system ("1-N model").
> >
> > But see also section 3.2.3 - just because only one CPU actually runs the
> > given ISR doesn't necessarily guarantee that the others *weren't*
> > interrupted. I'd also hesitate to make any assumptions that all GIC
> > implementations behave exactly the same way.
> >
> > Robin.
> 
> Yes, that's right, however:
> 1. They are only interrupted for a split-second, since interrupt is
> immediately ACKed in gic_handle_irq

Even that is detrimental - consider cpuidle where a CPU is placed in
a low power state waiting for an interrupt, and it keeps getting woken
for interrupts that it isn't able to handle.  The effect will be to
stop the CPU hitting the lower power states, which would be a regression
over how the kernel behaves today.

> 2. More important that smp_affinity in procfs is defined to allow user
> to configure multiple CPU's to handle interrupts (see
> Documentation/IRQ-affinity.txt) which is effectively prohibited in
> current implementation. I mean, when user sets it to FF, she expects
> all CPUs to process interrupts, not CPU0 only

The reason we've ended up with that on ARM is precisely because it
wasted CPU resources, and my attempts at writing code to distribute
the interrupt between CPU cores did not have a successful outcome.
So, the best thing that could be done was to route interrupts to the
first core, and run irqbalance to distribute the interrupts in a
sensible, cache friendly way between CPU cores.

And no, the current implementation is *NOT* prohibited.  You can't
prohibit something that hardware hasn't been able to provide.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
