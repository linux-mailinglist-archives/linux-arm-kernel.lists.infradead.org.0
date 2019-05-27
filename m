Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A3E2AF54
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 09:20:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IiFvJ12vO46vXBmhkPESUEmspSx1rHdpIsn2pmXeDjM=; b=bKk7+oLBL1QfY4
	0awHO4Xz5hudBGGj/xWnN8tadn0QKWJ6gLv2gcc9KS2bYOSyJ4BPWPjz+RzyffAOdrVbgIjQKdvHc
	GFAI03Bwwm0+H7QUoPUa2OQnQ/WEQvt+2M4Ilbki2TqWtGqDPu63wVePdnn+TM0d+mNaYZu0iT+tg
	6ek2nCneJqxTBZiuK4WCtDkpdyMGjVWzeqvDjO410n8mBlSCkdMEgHv7enRz4fdQJYDqx7SrmTICI
	kd3w4hNGrYTU0C0Uc2JfZsEYRL7Wmlr/xCN0nlGlZul+9wGcjSwnP1xd9VMYNZZusumdw8ZQnbhK5
	vnPCAUl6agOp6RkfTjvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV9vZ-0004SG-Bn; Mon, 27 May 2019 07:20:13 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV9vR-0003Yk-7m
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 07:20:07 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8AE6EAEEA;
 Mon, 27 May 2019 07:20:02 +0000 (UTC)
Date: Mon, 27 May 2019 09:20:01 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH V3 2/4] arm64/mm: Hold memory hotplug lock while walking
 for kernel page table dump
Message-ID: <20190527072001.GB1658@dhcp22.suse.cz>
References: <1557824407-19092-1-git-send-email-anshuman.khandual@arm.com>
 <1557824407-19092-3-git-send-email-anshuman.khandual@arm.com>
 <20190515165847.GH16651@dhcp22.suse.cz>
 <20190516102354.GB40960@lakrids.cambridge.arm.com>
 <20190516110529.GQ16651@dhcp22.suse.cz>
 <20190522164212.GD23592@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522164212.GD23592@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_002005_591160_D7294A0A 
X-CRM114-Status: GOOD (  34.94  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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

On Wed 22-05-19 17:42:13, Mark Rutland wrote:
> On Thu, May 16, 2019 at 01:05:29PM +0200, Michal Hocko wrote:
> > On Thu 16-05-19 11:23:54, Mark Rutland wrote:
> > > Hi Michal,
> > > 
> > > On Wed, May 15, 2019 at 06:58:47PM +0200, Michal Hocko wrote:
> > > > On Tue 14-05-19 14:30:05, Anshuman Khandual wrote:
> > > > > The arm64 pagetable dump code can race with concurrent modification of the
> > > > > kernel page tables. When a leaf entries are modified concurrently, the dump
> > > > > code may log stale or inconsistent information for a VA range, but this is
> > > > > otherwise not harmful.
> > > > > 
> > > > > When intermediate levels of table are freed, the dump code will continue to
> > > > > use memory which has been freed and potentially reallocated for another
> > > > > purpose. In such cases, the dump code may dereference bogus addressses,
> > > > > leading to a number of potential problems.
> > > > > 
> > > > > Intermediate levels of table may by freed during memory hot-remove, or when
> > > > > installing a huge mapping in the vmalloc region. To avoid racing with these
> > > > > cases, take the memory hotplug lock when walking the kernel page table.
> > > > 
> > > > Why is this a problem only on arm64 
> > > 
> > > It looks like it's not -- I think we're just the first to realise this.
> > > 
> > > AFAICT x86's debugfs ptdump has the same issue if run conccurently with
> > > memory hot remove. If 32-bit arm supported hot-remove, its ptdump code
> > > would have the same issue.
> > > 
> > > > and why do we even care for debugfs? Does anybody rely on this thing
> > > > to be reliable? Do we even need it? Who is using the file?
> > > 
> > > The debugfs part is used intermittently by a few people working on the
> > > arm64 kernel page tables. We use that both to sanity-check that kernel
> > > page tables are created/updated correctly after changes to the arm64 mmu
> > > code, and also to debug issues if/when we encounter issues that appear
> > > to be the result of kernel page table corruption.
> > 
> > OK, I see. Thanks for the clarification.
> > 
> > > So while it's rare to need it, it's really useful to have when we do
> > > need it, and I'd rather not remove it. I'd also rather that it didn't
> > > have latent issues where we can accidentally crash the kernel when using
> > > it, which is what this patch is addressing.
> > 
> > While I agree, do we rather want to document that you shouldn't be using
> > the debugging tool while the hotplug is ongoing because you might get a
> > garbage or crash the kernel in the worst case? In other words is the
> > absolute correctness worth the additional maint. burden wrt. to future
> > hotplug changes?
> 
> I don't think that it's reasonable for this code to bring down the
> kernel unless the kernel page tables are already corrupt. I agree we
> should minimize the impact on other code, and I'm happy to penalize
> ptdump so long as it's functional and safe.
> 
> I would like it to be possible to use the ptdump code to debug
> hot-remove, so I'd rather not make the two mutually exclusive. I'd also
> like it to be possible to use this in-the-field, and for that asking an
> admin to potentially crash their system isn't likely to fly.

OK, fair enough.

> > > > I am asking because I would really love to make mem hotplug locking less
> > > > scattered outside of the core MM than more. Most users simply shouldn't
> > > > care. Pfn walkers should rely on pfn_to_online_page.
> 
> Jut to check, is your plan to limit access to the hotplug lock, or to
> redesign the locking scheme?

To change the locking to lock hotpluged ranges rather than having a
global lock as the operation is inherently pfn range scoped.

> > > I'm not sure if that would help us here; IIUC pfn_to_online_page() alone
> > > doesn't ensure that the page remains online. Is there a way to achieve
> > > that other than get_online_mems()?
> > 
> > You have to pin the page to make sure the hotplug is not going to
> > offline it.
> 
> I'm not exactly sure how pinning works -- is there a particular set of
> functions I should look at for that?

Pinning (get_page) on any page of the range will deffer the hotremove
operation and therefore the page tables cannot go away as well.

That being said, I thought the API is mostly for debugging and "you
should better know what you are doing" kinda thing (based on debugfs
being used here). If this is really useful in its current form and
should be used also while the hotremove is in progress then ok.
Once we actually get to rework the locking then we will have another
spot to handle but that's the life.
-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
