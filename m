Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9543819AAC0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 13:28:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=syLYAhlxOr+UubATLIjXzdY7+0KGPvdKRSxzx2FBsJE=; b=QX9UWLkGahPaBF
	9Bc1NaAYNGniIkwfrZty7WsjRSyys8umb4BPjcYtFn8IliYTt5SP0WEYNq7d2hL6kxLVn1oGwt2U+
	MwkFoD9TYBsgHlfSOCIOyIFDWe8zhz3ugluhW4dk5LVNqOuhyt9l6CQGChOxfBlcbjPu8+YXCIcVD
	wZxhzAylgVVyFmrFHFe4+CpCz0NBc5kN+spMsWIBGtYyxG5A3+20V4bbAcRYda6UL+qkme1K8B02l
	/q2X0uRNd4t2J3yQaemmA1T2Lv6QWboMa7c75cIYKLyhMOxV5KE1tMYMZP2mJRKIUWBnS4c2tZsMZ
	E1p3MHCGGsV7Y+K/PYaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJbXD-0007Ur-Ch; Wed, 01 Apr 2020 11:27:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJbX7-0007UX-Mj
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 11:27:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0995930E;
 Wed,  1 Apr 2020 04:27:44 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5AF783F68F;
 Wed,  1 Apr 2020 04:27:42 -0700 (PDT)
Date: Wed, 1 Apr 2020 12:27:39 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] driver/perf: Add PMU driver for the ARM DMC-620 memory
 controller.
Message-ID: <20200401112739.GD17163@C02TD0UTHF1T.local>
References: <1584491381-31492-1-git-send-email-tuanphan@os.amperecomputing.com>
 <20200319151646.GC4876@lakrids.cambridge.arm.com>
 <23AD5E45-15E3-4487-9B0D-0D9554DD9DE8@amperemail.onmicrosoft.com>
 <20200320105315.GA35932@C02TD0UTHF1T.local>
 <A50AA800-3F65-4761-9BCF-F86A028E107D@amperemail.onmicrosoft.com>
 <20200401095226.GA17163@C02TD0UTHF1T.local>
 <20200401102724.GA17575@willie-the-truck>
 <4d843ec7-ed74-4431-d8c7-d5aa6bd83c18@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4d843ec7-ed74-4431-d8c7-d5aa6bd83c18@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_042745_783708_DF7749DB 
X-CRM114-Status: GOOD (  20.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Tuan Phan <tuanphan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Tuan Phan <tuanphan@amperemail.onmicrosoft.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 01, 2020 at 12:12:23PM +0100, Robin Murphy wrote:
> On 2020-04-01 11:27 am, Will Deacon wrote:
> > On Wed, Apr 01, 2020 at 10:52:26AM +0100, Mark Rutland wrote:
> > > On Tue, Mar 31, 2020 at 03:14:59PM -0700, Tuan Phan wrote:
> > > > I looked at the SMMUv3 PMU driver and it also uses IRQF_SHARED. SMMUv3
> > > > PMU and DMC620 PMU are very much similar in which counters can be
> > > > accessed by any cores using memory map. Any special reasons
> > > > IRQF_SHARED works with SMMUv3 PMU driver?
> > > 
> > > No; I believe that is a bug in the SMMUv3 PMU driver. If the IRQ were
> > > shared, and another driver that held the IRQ changed the affinity,
> > > things would go very wrong.
> > 
> > I *think* the idea is that the SMMUv3 PMU driver manages multiple PMCG
> > devices, which may all share an irq line, rather than the irq line being
> > shared by some other driver that might change the affinity. So I suspect
> > dropping IRQF_SHARED will break things.
> 
> Each PMCG is conceptually a distinct PMU with its own interrupt - for
> instance, MMU-600 has one PMCG for its TCU and one for each TBU, each with a
> distinct interrupt output signal. Of course, integrators can and will mash
> them all together into a single SPI (particularly since they're all part of
> "the SMMU"), but that boils down to the same case as here.
> 
> This is going to continue to happen, so we could really do with figuring out
> a way to let MMIO system PMU drivers properly cope with shared interrupts in
> general :/

It does seem so, but I think we can only reasonably do that where it's
only being shared across instances of the same driver, rather than when
the IRQ is muxed across completely independent drivers. I'd like to
avoid that latter case if we can.

The driver would have to handle migration on a cross-instance basis.
e.g. all the contexts need to be migrated before the IRQ is, to avoid a
screaming IRQ on the target CPU, or the IRQ handler on the target racing
with migration from the source.

Is there a neat way to do that in a driver without using IRQF_SHARED, so
that we don't end up accidentally sharing with other drivers? We can
probably librify the code to handle this under drivers/pmu/.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
