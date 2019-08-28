Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58894A0705
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 18:13:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8cZqIQPdP8chGiBEyM/vFOy//iYM6GdYLLPJR3xpoo4=; b=KKIPmn/md3wBgY
	ALjG0bInZZdgbEtK/wnjhD/ZMC7beA+GltXdTa0CSYijREmoyaFWRFdT0hOaWXzEOXWxiYbX8NX6o
	jTPa2mXNGLX2+IMugRU71iQkZsUgy8sw9l4wIjmTYNAMq7JFzgAymEb+cJB75PLR+cU28PZZC94VY
	0GIY4AIGeRLQgNyVUC0IWl0hgsRpztSx4KVbtX+VONxVIe5C17XNRw2Ik68vQT3EVemovapAWDWCP
	UQYm3e4W/fysrq/0Bqkt3+ePAKowXUNgIUwrk5ovCFUouGtstKrDdt4C2504ngBf3JDwFjAzPX8TU
	FbqipMqWug3j8Jq9RDSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i30ZR-0003uR-BY; Wed, 28 Aug 2019 16:13:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i30ZD-0003tx-90
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 16:13:05 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8CFDF20828;
 Wed, 28 Aug 2019 16:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567008781;
 bh=HqrBhiKqWjQX4dFN5T5Ap5MOVi6uLuKfUH92vCuqnNU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I1/TPQxrt7DwtjZiUnrv0BZtkBuwtARMu5FWDI7sbTL2SU85mZvnW5ZKiFNruw3zx
 dWWtwECcxxvT0qxLYtxsga2Q8S02Gbb2ruLMnrMiXBhg9pNjF+lgT83m+kK2RXe2MZ
 +ftcWYRVbg36kpNPKLOeHEP8gC50rXFHpqOm8v7c=
Date: Wed, 28 Aug 2019 17:12:57 +0100
From: Will Deacon <will@kernel.org>
To: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH 0/6] Fix TLB invalidation on arm64
Message-ID: <20190828161256.uevoohval4sko24m@willie-the-truck>
References: <20190827131818.14724-1-will@kernel.org>
 <1566947104.2uma6s0pl1.astroid@bobo.none>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566947104.2uma6s0pl1.astroid@bobo.none>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_091304_123753_AF6AAC63 
X-CRM114-Status: GOOD (  34.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arch@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nick,

On Wed, Aug 28, 2019 at 10:35:24AM +1000, Nicholas Piggin wrote:
> Will Deacon's on August 27, 2019 11:18 pm:
> > So far, so good, but the final piece of the puzzle isn't quite so rosy.
> > 
> > *** Other architecture maintainers -- start here! ***
> > 
> > In the case that one CPU maps a page and then sets a flag to tell another
> > CPU:
> > 
> > 	CPU 0
> > 	-----
> > 
> > 	MOV	X0, <valid pte>
> > 	STR	X0, [Xptep]	// Store new PTE to page table
> > 	DSB	ISHST
> > 	ISB
> > 	MOV	X1, #1
> > 	STR	X1, [Xflag]	// Set the flag
> > 
> > 	CPU 1
> > 	-----
> > 
> > loop:	LDAR	X0, [Xflag]	// Poll flag with Acquire semantics
> > 	CBZ	X0, loop
> > 	LDR	X1, [X2]	// Translates using the new PTE
> > 
> > then the final load on CPU 1 can raise a translation fault for the same
> > reasons as mentioned at the start of this description.
> 
> powerpc's ptesync instruction is defined to order MMU memory accesses on
> all other CPUs. ptesync does not go out to the fabric though. How does
> it work then?
> 
> Because the MMU coherency problem (at least we have) is not that the
> load will begin to "partially" execute ahead of the store, enough to
> kick off a table walk that goes ahead of the store, but not so much
> that it violates the regular CPU barriers. It's just that the loads
> from the MMU don't participate in the LSU pipeline, they don't snoop
> the store queues aren't inserted into load queues so the regular
> memory barrier instructions won't see stores from other threads cuasing
> ordering violations.
> 
> In your first example, if powerpc just has a normal memory barrier
> there instead of a ptesync, it could all execute completely
> non-speculatively and in-order but still cause a fault, because the
> table walker's loads didn't see the store in the store queue.

Ah, so I think this is where our DSB comes in, as opposed to our usual
DMB. DMB provides ordering guarantees and is generally the only barrier
instruction you need for shared memory communication. DSB, on the other
hand, has additional properties such as making page-table updates visible
to the table walker and completing pending TLB invalidation.

So in practice, DSB is likely to drain the store buffer to ensure that
pending page-table writes are visible at L1, which is coherent with all
CPUs (and their page-table walkers).

> From the other side of the fabric you have no such problem. The table
> walker is cache coherent apart from the local stores, so we don't need a 
> special barrier on the other side. That's why ptesync doesn't broadcast.

Curious: but do you need to do anything extra to take into account
instruction fetch on remote CPUs if you're mapping an executable page?
We added an IPI to flush_icache_range() in 3b8c9f1cdfc5 to handle this,
because our broadcast I-cache maintenance doesn't force a pipeline flush
for remote CPUs (and may even execute as a NOP on recent cores).

> I would be surprised if ARM's issue is different, but interested to 
> hear if it is.

If you take the four scenarios of Map/Unmap for the UP/SMP cases:

	Map+UP		// Some sort of fence instruction (DSB;ISB/ptesync)
	Map+SMP		// Same as above
	Unmap+UP	// Local TLB invalidation
	Unmap+SMP	// Broadcast TLB invalidation

then the most interesting case is Map+SMP, where one CPU transitions a PTE
from invalid to valid and executes its DSB;ISB/PTESYNC sequence without
affecting the remote CPU. That's what I'm trying to get at in my example
below:

> > 	CPU 0				CPU 1
> > 	-----				-----
> > 	spin_lock(&lock);		spin_lock(&lock);
> > 	set_fixmap(0, paddr, prot);	if (mapped)
> > 	mapped = true;				foo = *fix_to_virt(0);
> > 	spin_unlock(&lock);		spin_unlock(&lock);
> > 
> > could fault.
> 
> This is kind of a different issue, or part of a wider one at least.
> Consider speculative execution more generally, any branch mispredict can 
> send us off to crazy town executing instructions using nonsense register
> values. CPU0 does not have to be in the picture, or any kernel page 
> table modification at all, CPU1 alone will be doing speculative loads 
> wildly all over the kernel address space and trying to access pages with
> no pte.
> 
> Yet we don't have to flush TLB when creating a new kernel mapping, and
> we don't get spurious kernel faults. The page table walker won't
> install negative entries, at least not "architectural" i.e., that cause
> faults and require flushing. My guess is ARM is similar, or you would 
> have seen bigger problems by now?

Right, we don't allow negative (invalid) entries to be cached in the TLB,
but CPUs can effectively cache the result of a translation for a load/store
instruction whilst that instruction flows down the pipe after its virtual
address is known. /That/ caching is not restricted to valid translations.
For example, if we just take a simple message passing example where we have
two global variables: a 'mapped' flag (initialised to zero) and a pointer
(initialised to point at a page that is not yet mapped):

[please excuse the mess I've made of your assembly language]

	CPU 0

	// Set PTE which maps the page pointed to by pointer
	stw	r5, 0(r4)
	ptesync
	lwsync

	// Set 'mapped' flag to 1
	li	r9, 1
	stb	r9, 0(r3)


	CPU 1

	// Poll for 'mapped' flag to be set
loop:	lbz	r9, 0(r3)
	lwsync
	cmpdi	cr7, r0, 0
	beq	cr7, loop

	// Dereference pointer
	lwz	r4, 0(r5)


So in this example, I think it's surprising that CPU 1's dereference of
'pointer' can fault. The way this happens on arm64 is that CPU 1 can
translate the 'pointer' dereference before the load of the 'mapped' flag has
returned its data. The walker may come back with a fault, but then if the
flag data later comes back as 1, the fault will be taken when the lwz
commits. In other words, translation table walks can occur out-of-order
with respect to the accesses they are translating for, even in the presence
of memory barriers.

In practice, I think this kind of code sequence is unusual and triggering
the problem relies on CPU 1 knowing the virtual address it's going to
dereference before it's actually mapped. However, this could conceivably
happen with the fixmap and possibly also if the page-table itself was
being written concurrently using cmpxchg(), in which case you might use
the actual pte value in the same way as the 'mapped' flag above.

But yes, adding the spurious fault handler is belt and braces, which is
why I've kept a WARN_RATELIMIT() in there if it ever triggers.

> If you have CPU0 doing a ro->rw upgrade on a kernel PTE, then it may
> be possible another CPU1 would speculatively install a ro TLB and then
> spurious fault on it when attempting to store to it. But no amount of
> barriers would help because CPU1 could have picked up that TLB any time
> in the past.

Transitioning from ro->rw requires TLB invalidation, and so that falls
into the Unmap+SMP combination which I'm not worried about because it
doesn't pose a problem for us.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
