Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 236C61042A3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 18:55:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bIQUrz9by/Lr/zIP+xAaBfOYME/afkWxnA5UuI/VgdE=; b=OjpBsRLbzUbVev
	0z1FopnT+1khqRMM7Q7GUmTc51W9IO3eVM/Vylwxh8q4g4vqk2G4aShfD9WyLA0Ebpp3lAk8DSXh4
	qg/wQa+qDlvgRmN6tmFotJRfkz6iQBwoJ02+OllD6xF4BWS/8trOD3mNgJXgX0+c9qIjyLcfSyDYk
	yoFbltuTtyJu6l32xcN3TcjM15jqKqfHjihuA31Tn0JCO4HhcXZxFnFxK90bctzGJ9Ixp29PISCHK
	UFcp3U6t6NkNRGAovDOvGVN42PDAKVYQ2x0CWu9kRQF5jY9KXtyZXYhaS7PbBeYRPgnV4xfqvDyqB
	VHoAdtCtDKYrjTb47CBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXUCg-0004WU-KL; Wed, 20 Nov 2019 17:55:46 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXUCK-0004Jw-DV
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 17:55:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lUvnyfSCcv0QJXxtqhYQ13i1V3QrTrMZKcbHe+xdL7A=; b=ZrTM2jatt1OJyj6EeUhg2YQaY
 62Um4kax1rZQYEh5tVIJF9Hk5T9xweY2lZg8ikSPM5gO33Ha4h87P9fOTeDz7LK8iZglVZ43XNIiu
 ZuEg84v1e5If5HgtyfDefGytG2KNWYnjXgIs8DMhFXF+TtpLEOA7YBkQH2U+/ErCKvxRSVAD8m2zj
 0MoQ68GyHoCheGkIpLGUloku4dfBno9xRGSCJ97PMNGFI7jVNpkFaR+wS2lNrgzZt25OeVjT7yThv
 hos80vkPoaHxZEflRBY1sizQaXTx/4ogwkaG5JngBW6nfxYLyQlhxLSOXzfV8pJUdL5PbscKjBEgr
 t3k/itHVw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:58858)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iXUCA-0001OG-LB; Wed, 20 Nov 2019 17:55:14 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iXUC8-0001wk-6b; Wed, 20 Nov 2019 17:55:12 +0000
Date: Wed, 20 Nov 2019 17:55:12 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Leonid Movshovich <event.riga@gmail.com>
Subject: Re: [PATCH] irq-gic: select all CPU's selected in interrupt affinity
 settings
Message-ID: <20191120175512.GV25745@shell.armlinux.org.uk>
References: <CAPaFbat4MM0=iVB-VazTK9=2qRebAgEN4euYCTESRo3yfx75Kw@mail.gmail.com>
 <20191119233633.GG25745@shell.armlinux.org.uk>
 <CAPaFbatG+ePwjCnBva1tfmzmvpHZv9xW3nM4gj2DTpFn=D+9Vg@mail.gmail.com>
 <2cd3e872-57d5-5cbb-78d7-98da6447dc59@arm.com>
 <392e74d78b48e04040cedfc26ed8ce81@www.loen.fr>
 <CAPaFbavWjCJKjUN6nA8Gc4urAMzLt-YVB4ED5DVarenrvMgnvQ@mail.gmail.com>
 <5b230ce5eb43fc014a9c7224d980e79a@www.loen.fr>
 <CAPaFbatgHvu-0q4R7pbVyKOwOY5D1rZvMUweGgLkfGsZk0SH1A@mail.gmail.com>
 <20191120171755.GU25745@shell.armlinux.org.uk>
 <CAPaFbat7zuOz9fnu38jknEva4j=vTOMK769XYMqTMSFjrGT=eg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPaFbat7zuOz9fnu38jknEva4j=vTOMK769XYMqTMSFjrGT=eg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_095524_493237_FE765130 
X-CRM114-Status: GOOD (  23.67  )
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
Cc: Marc Zyngier <maz@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 05:37:38PM +0000, Leonid Movshovich wrote:
> On Wed, 20 Nov 2019 at 17:18, Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Wed, Nov 20, 2019 at 04:45:59PM +0000, Leonid Movshovich wrote:
> > > On Wed, 20 Nov 2019 at 15:39, Marc Zyngier <maz@kernel.org> wrote:
> > > >
> > > > On 2019-11-20 15:28, Leonid Movshovich wrote:
> > > > > On Wed, 20 Nov 2019 at 15:04, Marc Zyngier <maz@kernel.org> wrote:
> > > > >>
> > > > >> On 2019-11-20 01:15, Robin Murphy wrote:
> > > > >> > On 2019-11-20 12:24 am, Leonid Movshovich wrote:
> > > > >> >> On Tue, 19 Nov 2019 at 23:36, Russell King - ARM Linux admin
> > > > >> >> <linux@armlinux.org.uk> wrote:
> > > > >> >>>
> > > > >> >>> On Tue, Nov 19, 2019 at 11:12:26PM +0000, event wrote:
> > > > >> >>>> So far only a CPU selected with top affinity bit was selected.
> > > > >> >>>> This
> > > > >> >>>> resulted in all interrupts
> > > > >> >>>> being processed by CPU0 by default despite "FF" default
> > > > >> affinity
> > > > >> >>>> setting for all interrupts
> > > > >> >>>
> > > > >> >>> Have you checked whether this causes _ALL_ CPUs in the mask to
> > > > >> be
> > > > >> >>> delivered a single interrupt, thereby causing _ALL_ CPUs to be
> > > > >> >>> slowed down and hit the same locks at the same time.
> > > > >> >>>
> > > > >> >> Yes, I've checked this. No, interrupt is delivered to only one
> > > > >> CPU.
> > > > >> >> Also ARM GIC architecture specification specifically states in
> > > > >> >> chapter
> > > > >> >> 3.1.1 that hardware interrupts are delivered to a single CPU in
> > > > >> >> multiprocessor system ("1-N model").
> > > > >> >
> > > > >> > But see also section 3.2.3 - just because only one CPU actually
> > > > >> runs
> > > > >> > the given ISR doesn't necessarily guarantee that the others
> > > > >> *weren't*
> > > > >> > interrupted. I'd also hesitate to make any assumptions that all
> > > > >> GIC
> > > > >> > implementations behave exactly the same way.
> > > > >>
> > > > >> What happens is that *all* CPUs are being sent the interrupt, and
> > > > >> there
> > > > >> is some logic in the GIC that ensures that only one sees it (the
> > > > >> first
> > > > >> one to read the IAR register). All the other see a spurious (1023)
> > > > >> interrupt, and have wasted some precious cycles in doing so.
> > > > >
> > > > > Cycles are only precious when system is under high load. Under high
> > > > > load, to achieve fair spread of interrupts between CPUs one would
> > > > > need
> > > > > a userspace app (irqbalance) to sit there and constantly rebalance
> > > > > smp_affinity based on /proc/interrupts. Hard to believe such an
> > > > > approach wastes less cycles.
> > > >
> > > > You'd be surprised. As always when looking at these things, do come up
> > > > with actual figures with a wide range of workloads that show benefits
> > > > for the approach you're suggesting.
> > > >
> > > > Also, if your system isn't under high load, why would you even care
> > > > about this kind of distribution?
> > >
> > > Coming back to my network example, under moderate load, without
> > > distribution, you'd get one CPU struggling to process all the traffic,
> > > while others sitting idle.
> >
> > And you think that receiving TCP packet 1 on CPU0, TCP packet 2 on
> > CPU1, TCP packet 2 on CPU2 etc will help?
> >
> > I guess you're not aware of network features such as GRO which
> > combine consecutive packets.  Forcing each packet onto a different
> > CPU will bounce the cache lines associated with managing the state
> > between different CPUs => negative performance impact.
> 
> I guess, you're not aware that TCP is not the only protocol in the
> internet. And that GRO is not a "network feature" but rather a NIC
> feature. And, that not all NICs support it.

You have an answer to everything.  Pointless continuing this, sorry.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
