Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 131A77C28F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 15:01:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EmgzG0nca9f/zgpyVZGse2FQmYcJHnDVKBZfVvZR2gI=; b=kBUbkhXVgSunVO
	y20uxZDyQv7MMfyDgbGiEcW3j3HN7ivYJ4EVvI/syLhv9p0gmFK3nHaJTbVHBfEGGz6+5DOpcFH36
	IK0bpQTFBeD2TB1dgrIPXu61S+ZZPH5dZD+4DN8EAGC/KsC6BOEi5y/MM0r+dg9Li9XF5AVqSC4K8
	AKvgJbgP1/b6kDP6I10HJn9SzxCimLksgFl7m0dFF9WjzuO0FMm+7rUX5X66iToGyG6nXU8n6VA1n
	cBxDB5euklkFrV12zfChGtuM+OjqWnfIo5m5XXtuWk/uErNnUv+8L+4O+wsr9/sA9WrOPSsB2iPyI
	kPO6uPsXtbMIzf4pUjyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsoDr-000146-8M; Wed, 31 Jul 2019 13:00:51 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsoDj-00013M-0d
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 13:00:44 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id CB714AEF3;
 Wed, 31 Jul 2019 13:00:40 +0000 (UTC)
Date: Wed, 31 Jul 2019 15:00:37 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Mike Rapoport <rppt@linux.ibm.com>
Subject: microblaze HAVE_MEMBLOCK_NODE_MAP dependency (was Re: [PATCH v2 0/5]
 mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by default for NUMA)
Message-ID: <20190731130037.GN9330@dhcp22.suse.cz>
References: <20190712121223.GR29483@dhcp22.suse.cz>
 <20190712143730.au3662g4ua2tjudu@willie-the-truck>
 <20190712150007.GU29483@dhcp22.suse.cz>
 <730368c5-1711-89ae-e3ef-65418b17ddc9@os.amperecomputing.com>
 <20190730081415.GN9330@dhcp22.suse.cz>
 <20190731062420.GC21422@rapoport-lnx>
 <20190731080309.GZ9330@dhcp22.suse.cz>
 <20190731111422.GA14538@rapoport-lnx>
 <20190731114016.GI9330@dhcp22.suse.cz>
 <20190731122631.GB14538@rapoport-lnx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731122631.GB14538@rapoport-lnx>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_060043_350958_703713FF 
X-CRM114-Status: GOOD (  26.63  )
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, "H . Peter Anvin" <hpa@zytor.com>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 Will Deacon <will@kernel.org>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, "x86@kernel.org" <x86@kernel.org>,
 "willy@infradead.org" <willy@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Hoan Tran OS <hoan@os.amperecomputing.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Open Source Submission <patches@amperecomputing.com>,
 Pavel Tatashin <pavel.tatashin@microsoft.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Will Deacon <will.deacon@arm.com>,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 Vlastimil Babka <vbabka@suse.cz>, Oscar Salvador <osalvador@suse.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 31-07-19 15:26:32, Mike Rapoport wrote:
> On Wed, Jul 31, 2019 at 01:40:16PM +0200, Michal Hocko wrote:
> > On Wed 31-07-19 14:14:22, Mike Rapoport wrote:
> > > On Wed, Jul 31, 2019 at 10:03:09AM +0200, Michal Hocko wrote:
> > > > On Wed 31-07-19 09:24:21, Mike Rapoport wrote:
> > > > > [ sorry for a late reply too, somehow I missed this thread before ]
> > > > > 
> > > > > On Tue, Jul 30, 2019 at 10:14:15AM +0200, Michal Hocko wrote:
> > > > > > [Sorry for a late reply]
> > > > > > 
> > > > > > On Mon 15-07-19 17:55:07, Hoan Tran OS wrote:
> > > > > > > Hi,
> > > > > > > 
> > > > > > > On 7/12/19 10:00 PM, Michal Hocko wrote:
> > > > > > [...]
> > > > > > > > Hmm, I thought this was selectable. But I am obviously wrong here.
> > > > > > > > Looking more closely, it seems that this is indeed only about
> > > > > > > > __early_pfn_to_nid and as such not something that should add a config
> > > > > > > > symbol. This should have been called out in the changelog though.
> > > > > > > 
> > > > > > > Yes, do you have any other comments about my patch?
> > > > > > 
> > > > > > Not really. Just make sure to explicitly state that
> > > > > > CONFIG_NODES_SPAN_OTHER_NODES is only about __early_pfn_to_nid and that
> > > > > > doesn't really deserve it's own config and can be pulled under NUMA.
> > > > > > 
> > > > > > > > Also while at it, does HAVE_MEMBLOCK_NODE_MAP fall into a similar
> > > > > > > > bucket? Do we have any NUMA architecture that doesn't enable it?
> > > > > > > > 
> > > > > 
> > > > > HAVE_MEMBLOCK_NODE_MAP makes huge difference in node/zone initialization
> > > > > sequence so it's not only about a singe function.
> > > > 
> > > > The question is whether we want to have this a config option or enable
> > > > it unconditionally for each NUMA system.
> > > 
> > > We can make it 'default NUMA', but we can't drop it completely because
> > > microblaze uses sparse_memory_present_with_active_regions() which is
> > > unavailable when HAVE_MEMBLOCK_NODE_MAP=n.
> > 
> > I suppose you mean that microblaze is using
> > sparse_memory_present_with_active_regions even without CONFIG_NUMA,
> > right?
> 
> Yes.
> 
> > I have to confess I do not understand that code. What is the deal
> > with setting node id there?
> 
> The sparse_memory_present_with_active_regions() iterates over
> memblock.memory regions and uses the node id of each region as the
> parameter to memory_present(). The assumption here is that sometime before
> each region was assigned a proper non-negative node id. 
> 
> microblaze uses device tree for memory enumeration and the current FDT code
> does memblock_add() that implicitly sets nid in memblock.memory regions to -1.
> 
> So in order to have proper node id passed to memory_present() microblaze
> has to call memblock_set_node() before it can use
> sparse_memory_present_with_active_regions().

I am sorry, but I still do not follow. Who is consuming that node id
information when NUMA=n. In other words why cannot we simply do

diff --git a/arch/microblaze/mm/init.c b/arch/microblaze/mm/init.c
index a015a951c8b7..3a47e8db8d1c 100644
--- a/arch/microblaze/mm/init.c
+++ b/arch/microblaze/mm/init.c
@@ -175,14 +175,9 @@ void __init setup_memory(void)
 
 		start_pfn = memblock_region_memory_base_pfn(reg);
 		end_pfn = memblock_region_memory_end_pfn(reg);
-		memblock_set_node(start_pfn << PAGE_SHIFT,
-				  (end_pfn - start_pfn) << PAGE_SHIFT,
-				  &memblock.memory, 0);
+		memory_present(0, start_pfn << PAGE_SHIFT, end_pfn << PAGE_SHIFT);
 	}
 
-	/* XXX need to clip this if using highmem? */
-	sparse_memory_present_with_active_regions(0);
-
 	paging_init();
 }
 
-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
