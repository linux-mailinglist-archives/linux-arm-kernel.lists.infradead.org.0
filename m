Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B388918543A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 04:17:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+D0iWehhhor26KfsODvfFneOiXxektTx4GymRhLm6Rc=; b=md/t7EWSflC3dW
	ByWPEc7+w9xm+0LSMb/X9aPEzX9/RX46Ym3lZD9tYhdYwDAnbeoIEJSIgMo4MxrGOnocO0NvQFSbd
	kGC/4A6Lbz1gf3BvR60WdTcOxbI3SIuAU6kHkjk8eAEpZ7uzu7d2CXhISVAZrblCNLUZsj//VPJjV
	PgLrCup5YYckdF/TEQsJ8E2KCZtnQlCspnTJpKj5DxstV9tu4GRC0wgac9qtm+NoYp2l9k3XDNVsC
	45B24SnqasLf64/+upFQiZFcT801dTAXba6IfYmMg+qdqFxvPBeSMxieBgjAs3USAkABwOadXDqC6
	TnmUDGnpZSjHaomfYu6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCxIZ-0003y1-0A; Sat, 14 Mar 2020 03:17:15 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCxHh-0003NF-Tr
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 03:16:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584155778;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=fI88XePUQN+uUZ01EplG9/auBZ7QVWbUBp6D0ERPqls=;
 b=KTltM+d+kOwiAhegLv5TmIhCmNNDq1DzP5JG9YL9gb5xgJWACAWJGnDbk3tI/oAUvySmgW
 SwST/u1ZQDT/I2LvjI7+AEnduFyqFwkW7woXgwFc1sL1g3vy6rn6Hmo/XM87U0Tm8deyk0
 h2OxWCRnzDGIawQefi85Xazxj+sH6I4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-467-k2kwX0RMNju8mGzyGHuJzQ-1; Fri, 13 Mar 2020 23:16:14 -0400
X-MC-Unique: k2kwX0RMNju8mGzyGHuJzQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F070F100550E;
 Sat, 14 Mar 2020 03:16:12 +0000 (UTC)
Received: from mail (ovpn-121-125.rdu2.redhat.com [10.10.121.125])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 12B0873864;
 Sat, 14 Mar 2020 03:16:10 +0000 (UTC)
Date: Fri, 13 Mar 2020 23:16:09 -0400
From: Andrea Arcangeli <aarcange@redhat.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 3/3] arm64: tlb: skip tlbi broadcast
Message-ID: <20200314031609.GB2250@redhat.com>
References: <20200223192520.20808-1-aarcange@redhat.com>
 <20200223192520.20808-4-aarcange@redhat.com>
 <20200309112242.GB2487@mbp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200309112242.GB2487@mbp>
User-Agent: Mutt/1.13.4 (2020-02-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_201622_051472_74BCAF18 
X-CRM114-Status: GOOD (  29.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: QI Fuli <qi.fuli@fujitsu.com>, Rafael Aquini <aquini@redhat.com>,
 Jon Masters <jcm@jonmasters.org>, linux-kernel@vger.kernel.org,
 Michal Hocko <mhocko@kernel.org>, linux-mm@kvack.org,
 Mark Salter <msalter@redhat.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

On Mon, Mar 09, 2020 at 11:22:42AM +0000, Catalin Marinas wrote:
> IIUC, nr_active_mm keeps track of how many instances of the current pgd
> (TTBR0_EL1) are active.

Correct.

> And this code here can assume that if nr_active_mm <= 1, no broadcast is
> necessary.

Yes.

> One concern I have is the ordering between TTBR0_EL1 update in
> cpu_do_switch_mm() and the nr_active_mm, both on a different CPU. We
> only have an ISB for context synchronisation on that CPU but I don't
> think the architecture guarantees any relation between sysreg access and
> the memory update. We have a DSB but that's further down in switch_to().

There are several cpu_do_switch_mm updating TTBR0_EL1 and nr_active_mm
updates that can happen on different CPUs simultaneously. It's hard to
see exactly which one you refer to.

Overall the idea here is that even if a speculative tlb lookup happens
in between those updates while the "mm" is going away and
atomic_dec(&mm->nr_active_mm) is being called on the mm, it doesn't
matter because no userland software can use such stale tlb anymore
until local_flush_tlb_asid() gets rid of it.

The v1 patch (before I posted the incremental mm_count check) had
issues with speculatively loaded stale tlb entries only because they
weren't guaranteed to be flushed when the kernel thread switched back
to an userland process. So it relied on the CPU not to speculatively
load random pagetables while the kernel thread was running in lazy tlb
mode, but here the flush is guaranteed and in turn the CPU can always
load any TLB it wants at any given time.

> However, what worries me more is that you can now potentially do a TLB
> shootdown without clearing the intermediate (e.g. VA to pte) walk caches
> from the TLB. Even if the corresponding pgd and ASID are no longer
> active on other CPUs, I'm not sure it's entirely safe to free (and
> re-allocate) pages belonging to a pgtable without first flushing the

With regard to not doing a tlbi broadcast, nothing fundamentally
changed between v1 (single threaded using mm_users) and the latest
version (multhtreaded introducing nr_active_mm).

The v1 only skipped the tlbi broadcast in remote CPUs that run the
asid of a single threaded process before a CPU migration, but the
pages could already be reallocated from the point of view of the
remote CPUs.

In the current version the page can be reallocated even from the point
of view of the current CPU. However the fact the window has been
enlarged significantly should be a good thing, so if there would have
been something wrong with it, it would have been far easier to
reproduce it.

This concern is still a corollary of the previous paragraph: it's
still about stale tlb entries being left in an asid that can't ever be
used through the current asid.

> TLB. All the architecture spec states is that the software must first
> clear the entry followed by TLBI (the break-before-make rules).

The "break" in "break-before-make" is still guaranteed or it wouldn't
boot: however it's not implemented with the tlbi broadcast anymore.

The break is implemented by enforcing no stale tlb entry of such asid
exists in the TLB while any userland code runs.

X86 specs supposed an OS would allocate a TSS per-process and you
would do a context switch by using a task gate. I recall the first
Linux version I used had a TSS per process as envisioned by the
specs. Later the TSS become per-CPU and the esp0 pointer was updated
instead (native_load_sp0) and the stack was switched by hand.

I guess reading the specs may result confusing after such a software
change, that doesn't mean the software shouldn't optimize things
behind the specs if it's safe to do and it's not explicitly forbidden.

The page being reused by another virtual address in another CPU isn't
necessarily an invalid scenario from the point of view of the CPU. It
looks invalid if you assume the page is freed. You can think of it
like a MAP_SHARED page that gets one more mapping associated to it
(the reuse of the page) from another CPU it may look more legit. The
fact there's an old mapping left on the MAP_SHARED pagecache
indefinitely doesn't mean the CPU with such old mapping left in the
TLB is allowed to change the content of the page if the software never
writes to such virtual address through the old mapping. The important
thing is that the content of the page must not change unless the
software running in the CPU explicitly writes through the virtual
address that corresponds to the stale TLB entry (and it's guaranteed
the software won't write to it). The stale TLB of such asid eventually
is flushed either through a bumb of the asid generation or through a
local asid flush.

> That said, the benchmark numbers are not very encouraging. Around 1%
> improvement in a single run, it can as well be noise. Also something
> like hackbench may also show a slight impact on the context switch path.

I recall I tested hackbench and it appeared faster with processes,
otherwise it was within measurement error.

hackbench with processes is fork heavy so it gets some benefit because
all those copy-on-write post fork will trigger tlbi broadcasts on all
CPUs to flush the wrprotected tlb entry. Specifically the one
converted to local tlb flush is ptep_clear_flush_notify in
wp_page_copy() and there's one for each page being modified by parent
or child.

> Maybe with a true NUMA machine with hundreds of CPUs we may see a
> difference, but it depends on how well the TLBI is implemented.

The numbers in the commit header were not in a single run. perf stat
-r 10 -e dummy runs it 10 times and then shows the stdev along the
number too so you can what the noise was. It wasn't only a 1%
improvement either. Overall there's no noise in the measurement.

tcmalloc_large_heap_fragmentation_unittest simulating dealing with
small objects by many different containers at the same time, was 9.4%
faster (%stdev 0.36% 0.29%), with 32 CPUs and no NUMA.

256 times parallel run of 32 `sort` in a row, was 10.3% faster (%stdev
0.77% 0.38%), with 32 CPUs and no NUMA.

The multithreaded microbenchmark runs x16 times faster, but that's not
meaningful by itself, it's still a good hint some real life workload
(especially those with frequent MADV_DONTNEED) will run faster and
they did (and a verification that now also multithreaded apps can be
optimized).

Rafael already posted a benchmark specifically stressing the context
switch.

It's reasonable to expect any multi-socket NUMA to show more benefit
from the optimization than the 32 CPU non NUMA used for the current
benchmarks.

Thanks,
Andrea


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
