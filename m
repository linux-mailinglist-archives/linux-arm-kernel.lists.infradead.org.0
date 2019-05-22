Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A97F126882
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 18:42:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cwMQfNo/CeBeKcXWLYdEBl8bflvO7Qi/2tYG2Li8RIQ=; b=qFcMOuZkRwdmkX
	KgyhbRNktTDUND4GGW6R6zdsYUieeE09YtkemlVQBEMh9s6wXdctw0uRiFx8amG0mIu5t4oQpY3CZ
	zn75XxyeoGLtBAiWRuaNjr03M6mDGiysUZ7AjTPjC5+5e29kly5jLUull2FMxKhhV8Fp/sWZNW0L4
	AFRNclqN+cro3Fpjo/ONdLfEFceVeDyKTtJRbMAmsnvbFwQ0hZsYTKzr6u6F5LjqQs9t0uPrV1tKA
	4YwwvbXR25/bOCuybsIDGeQApfpb6HYwmODKpLextK6tCk4OZM/NjdDHAPl6Zf6rxFan537Mc3QSw
	gx391OHw81YCn9VVnDJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTUJv-0003nK-NR; Wed, 22 May 2019 16:42:27 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTUJo-0003mO-S7
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 16:42:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7081B341;
 Wed, 22 May 2019 09:42:18 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7B7FF3F5AF;
 Wed, 22 May 2019 09:42:15 -0700 (PDT)
Date: Wed, 22 May 2019 17:42:13 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Michal Hocko <mhocko@kernel.org>
Subject: Re: [PATCH V3 2/4] arm64/mm: Hold memory hotplug lock while walking
 for kernel page table dump
Message-ID: <20190522164212.GD23592@lakrids.cambridge.arm.com>
References: <1557824407-19092-1-git-send-email-anshuman.khandual@arm.com>
 <1557824407-19092-3-git-send-email-anshuman.khandual@arm.com>
 <20190515165847.GH16651@dhcp22.suse.cz>
 <20190516102354.GB40960@lakrids.cambridge.arm.com>
 <20190516110529.GQ16651@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516110529.GQ16651@dhcp22.suse.cz>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_094220_917915_5B24E7E1 
X-CRM114-Status: GOOD (  33.14  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: cai@lca.pw, ira.weiny@intel.com,
 Anshuman Khandual <anshuman.khandual@arm.com>, catalin.marinas@arm.com,
 david@redhat.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 logang@deltatee.com, james.morse@arm.com, cpandya@codeaurora.org,
 arunks@codeaurora.org, akpm@linux-foundation.org, osalvador@suse.de,
 mgorman@techsingularity.net, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 01:05:29PM +0200, Michal Hocko wrote:
> On Thu 16-05-19 11:23:54, Mark Rutland wrote:
> > Hi Michal,
> > 
> > On Wed, May 15, 2019 at 06:58:47PM +0200, Michal Hocko wrote:
> > > On Tue 14-05-19 14:30:05, Anshuman Khandual wrote:
> > > > The arm64 pagetable dump code can race with concurrent modification of the
> > > > kernel page tables. When a leaf entries are modified concurrently, the dump
> > > > code may log stale or inconsistent information for a VA range, but this is
> > > > otherwise not harmful.
> > > > 
> > > > When intermediate levels of table are freed, the dump code will continue to
> > > > use memory which has been freed and potentially reallocated for another
> > > > purpose. In such cases, the dump code may dereference bogus addressses,
> > > > leading to a number of potential problems.
> > > > 
> > > > Intermediate levels of table may by freed during memory hot-remove, or when
> > > > installing a huge mapping in the vmalloc region. To avoid racing with these
> > > > cases, take the memory hotplug lock when walking the kernel page table.
> > > 
> > > Why is this a problem only on arm64 
> > 
> > It looks like it's not -- I think we're just the first to realise this.
> > 
> > AFAICT x86's debugfs ptdump has the same issue if run conccurently with
> > memory hot remove. If 32-bit arm supported hot-remove, its ptdump code
> > would have the same issue.
> > 
> > > and why do we even care for debugfs? Does anybody rely on this thing
> > > to be reliable? Do we even need it? Who is using the file?
> > 
> > The debugfs part is used intermittently by a few people working on the
> > arm64 kernel page tables. We use that both to sanity-check that kernel
> > page tables are created/updated correctly after changes to the arm64 mmu
> > code, and also to debug issues if/when we encounter issues that appear
> > to be the result of kernel page table corruption.
> 
> OK, I see. Thanks for the clarification.
> 
> > So while it's rare to need it, it's really useful to have when we do
> > need it, and I'd rather not remove it. I'd also rather that it didn't
> > have latent issues where we can accidentally crash the kernel when using
> > it, which is what this patch is addressing.
> 
> While I agree, do we rather want to document that you shouldn't be using
> the debugging tool while the hotplug is ongoing because you might get a
> garbage or crash the kernel in the worst case? In other words is the
> absolute correctness worth the additional maint. burden wrt. to future
> hotplug changes?

I don't think that it's reasonable for this code to bring down the
kernel unless the kernel page tables are already corrupt. I agree we
should minimize the impact on other code, and I'm happy to penalize
ptdump so long as it's functional and safe.

I would like it to be possible to use the ptdump code to debug
hot-remove, so I'd rather not make the two mutually exclusive. I'd also
like it to be possible to use this in-the-field, and for that asking an
admin to potentially crash their system isn't likely to fly.

> > > I am asking because I would really love to make mem hotplug locking less
> > > scattered outside of the core MM than more. Most users simply shouldn't
> > > care. Pfn walkers should rely on pfn_to_online_page.

Jut to check, is your plan to limit access to the hotplug lock, or to
redesign the locking scheme?

> > I'm not sure if that would help us here; IIUC pfn_to_online_page() alone
> > doesn't ensure that the page remains online. Is there a way to achieve
> > that other than get_online_mems()?
> 
> You have to pin the page to make sure the hotplug is not going to
> offline it.

I'm not exactly sure how pinning works -- is there a particular set of
functions I should look at for that?

I guess that if/when we allocate the vmemmap from hotpluggable memory
that will require the pinning code to take the hotplug lock internally
to ensure that the struct page is accessible while we attempt to pin it?

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
