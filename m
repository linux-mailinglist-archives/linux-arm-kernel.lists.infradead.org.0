Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 413C5155AA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 23:36:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u14+rVhSzT+qJcSNv18YHr2RxAMhMUplZqZ/PJzuoic=; b=qFEzQx5MPPZoKO
	0lrhh/ugWTlox4aIU3IxpB3JmPbXDfaAyLKJBQ2h/3tyg9R5TEtcyN7ATllKullx00vJTnrCLgX/c
	18cF8CrwD2VOfpV7KbtfmTjp1DlQ88AsUVbdQfdzeKKIs2lr3IdXuzzRlTLUNUT3OmY0Oy/Owoj7k
	Y9jxF8VPPpoPrLbhpfuFyq6z/yQulT+FU5B6Wm7M28PuVf2EO+fPqxKGfFp3p4us/WRU9OjNAlaNM
	LIKG7eJY5/AIK3OKwhjgHwmTmTLPAavb5TqhTkV/ZANr4xpkrxjFn6ysuudCbtLiQXW0sEpudixPo
	GFjzJLKgz6rStKyhpGvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNlHH-0006D5-4D; Mon, 06 May 2019 21:36:03 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNlH9-0006Cd-Dz
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 21:35:57 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C1A02308FEE2;
 Mon,  6 May 2019 21:35:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A58325C1B5;
 Mon,  6 May 2019 21:35:52 +0000 (UTC)
Received: from zmail17.collab.prod.int.phx2.redhat.com
 (zmail17.collab.prod.int.phx2.redhat.com [10.5.83.19])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 74EE641F3C;
 Mon,  6 May 2019 21:35:51 +0000 (UTC)
Date: Mon, 6 May 2019 17:35:48 -0400 (EDT)
From: Jan Stancek <jstancek@redhat.com>
To: Yang Shi <yang.shi@linux.alibaba.com>, linux-mm@kvack.org, 
 linux-arm-kernel@lists.infradead.org
Message-ID: <1928544225.21255545.1557178548494.JavaMail.zimbra@redhat.com>
In-Reply-To: <a9d5efea-6088-67c5-8711-f0657a852813@linux.alibaba.com>
References: <1817839533.20996552.1557065445233.JavaMail.zimbra@redhat.com>
 <a9d5efea-6088-67c5-8711-f0657a852813@linux.alibaba.com>
Subject: Re: [bug] aarch64: userspace stalls on page fault after
 dd2283f2605e ("mm: mmap: zap pages with read mmap_sem in munmap")
MIME-Version: 1.0
X-Originating-IP: [10.40.204.21, 10.4.195.14]
Thread-Topic: aarch64: userspace stalls on page fault after dd2283f2605e ("mm:
 mmap: zap pages with read mmap_sem in munmap")
Thread-Index: Hqz3G0R+UjL/FIWX5jRPpgcdI4xikA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Mon, 06 May 2019 21:35:54 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_143555_513576_E56C5DCA 
X-CRM114-Status: GOOD (  32.33  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: Andrea Arcangeli <aarcange@redhat.com>, willy@infradead.org,
 kirill shutemov <kirill.shutemov@linux.intel.com>,
 Waiman Long <longman@redhat.com>, kirill@shutemov.name,
 akpm@linux-foundation.org, Jan Stancek <jstancek@redhat.com>, vbabka@suse.cz
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



----- Original Message -----
> 
> 
> On 5/5/19 7:10 AM, Jan Stancek wrote:
> > Hi,
> >
> > I'm seeing userspace program getting stuck on aarch64, on kernels 4.20 and
> > newer.
> > It stalls from seconds to hours.
> >
> > I have simplified it to following scenario (reproducer linked below [1]):
> >    while (1):
> >      spawn Thread 1: mmap, write, munmap
> >      spawn Thread 2: <nothing>
> >
> > Thread 1 is sporadically getting stuck on write to mapped area. User-space
> > is not
> > moving forward - stdout output stops. Observed CPU usage is however 100%.
> >
> > At this time, kernel appears to be busy handling page faults (~700k per
> > second):
> >
> > # perf top -a -g
> > -   98.97%     8.30%  a.out                     [.] map_write_unmap
> >     - 23.52% map_write_unmap
> >        - 24.29% el0_sync
> >           - 10.42% do_mem_abort
> >              - 17.81% do_translation_fault
> >                 - 33.01% do_page_fault
> >                    - 56.18% handle_mm_fault
> >                         40.26% __handle_mm_fault
> >                         2.19% __ll_sc___cmpxchg_case_acq_4
> >                         0.87% mem_cgroup_from_task
> >                    - 6.18% find_vma
> >                         5.38% vmacache_find
> >                      1.35% __ll_sc___cmpxchg_case_acq_8
> >                      1.23% __ll_sc_atomic64_sub_return_release
> >                      0.78% down_read_trylock
> >             0.93% do_translation_fault
> >     + 8.30% thread_start
> >
> > #  perf stat -p 8189 -d
> > ^C
> >   Performance counter stats for process id '8189':
> >
> >          984.311350      task-clock (msec)         #    1.000 CPUs utilized
> >                   0      context-switches          #    0.000 K/sec
> >                   0      cpu-migrations            #    0.000 K/sec
> >             723,641      page-faults               #    0.735 M/sec
> >       2,559,199,434      cycles                    #    2.600 GHz
> >         711,933,112      instructions              #    0.28  insn per
> >         cycle
> >     <not supported>      branches
> >             757,658      branch-misses
> >         205,840,557      L1-dcache-loads           #  209.121 M/sec
> >          40,561,529      L1-dcache-load-misses     #   19.71% of all
> >          L1-dcache hits
> >     <not supported>      LLC-loads
> >     <not supported>      LLC-load-misses
> >
> >         0.984454892 seconds time elapsed
> >
> > With some extra traces, it appears looping in page fault for same address,
> > over and over:
> >    do_page_fault // mm_flags: 0x55
> >      __do_page_fault
> >        __handle_mm_fault
> >          handle_pte_fault
> >            ptep_set_access_flags
> >              if (pte_same(pte, entry))  // pte: e8000805060f53, entry:
> >              e8000805060f53
> >
> > I had traces in mmap() and munmap() as well, they don't get hit when
> > reproducer
> > hits the bad state.
> >
> > Notes:
> > - I'm not able to reproduce this on x86.
> > - Attaching GDB or strace immediatelly recovers application from stall.
> > - It also seems to recover faster when system is busy with other tasks.
> > - MAP_SHARED vs. MAP_PRIVATE makes no difference.
> > - Turning off THP makes no difference.
> > - Reproducer [1] usually hits it within ~minute on HW described below.
> > - Longman mentioned that "When the rwsem becomes reader-owned, it causes
> >    all the spinning writers to go to sleep adding wakeup latency to
> >    the time required to finish the critical sections", but this looks
> >    like busy loop, so I'm not sure if it's related to rwsem issues
> >    identified
> >    in:
> >    https://lore.kernel.org/lkml/20190428212557.13482-2-longman@redhat.com/
> 
> It sounds possible to me. What the optimization done by the commit ("mm:
> mmap: zap pages with read mmap_sem in munmap") is to downgrade write
> rwsem to read when zapping pages and page table in munmap() after the
> vmas have been detached from the rbtree.
> 
> So the mmap(), which is writer, in your test may steal the lock and
> execute with the munmap(), which is the reader after the downgrade, in
> parallel to break the mutual exclusion.
> 
> In this case, the parallel mmap() may map to the same area since vmas
> have been detached by munmap(), then mmap() may create the complete same
> vmas, and page fault happens on the same vma at the same address.
> 
> I'm not sure why gdb or strace could recover this, but they use ptrace
> which may acquire mmap_sem to break the parallel inadvertently.
> 
> May you please try Waiman's patch to see if it makes any difference?

I don't see any difference in behaviour after applying:
  [PATCH-tip v7 01/20] locking/rwsem: Prevent decrement of reader count before increment
Issue is still easily reproducible for me.

I'm including output of mem_abort_decode() / show_pte() for sample PTE, that
I see in page fault loop. (I went through all bits, but couldn't find anything invalid about it)

  mem_abort_decode: Mem abort info:
  mem_abort_decode:   ESR = 0x92000047
  mem_abort_decode:   Exception class = DABT (lower EL), IL = 32 bits
  mem_abort_decode:   SET = 0, FnV = 0
  mem_abort_decode:   EA = 0, S1PTW = 0
  mem_abort_decode: Data abort info:
  mem_abort_decode:   ISV = 0, ISS = 0x00000047
  mem_abort_decode:   CM = 0, WnR = 1
  show_pte: user pgtable: 64k pages, 48-bit VAs, pgdp = 0000000067027567
  show_pte: [0000ffff6dff0000] pgd=000000176bae0003
  show_pte: , pud=000000176bae0003
  show_pte: , pmd=000000174ad60003
  show_pte: , pte=00e80008023a0f53
  show_pte: , pte_pfn: 8023a

  >>> print bin(0x47)
  0b1000111

  Per D12-2779 (ARM Architecture Reference Manual),
      ISS encoding for an exception from an Instruction Abort:
    IFSC, bits [5:0], Instruction Fault Status Code
    0b000111 Translation fault, level 3

---

My theory is that TLB is getting broken.

I made a dummy kernel module that exports debugfs file, which on read triggers:
  flush_tlb_all();

Any time reproducer stalls and I read debugfs file, it recovers
immediately and resumes printing to stdout.

> 
> > - I tried 2 different aarch64 systems so far: APM X-Gene CPU Potenza A3 and
> >    Qualcomm 65-LA-115-151.
> >    I can reproduce it on both with v5.1-rc7. It's easier to reproduce
> >    on latter one (for longer periods of time), which has 46 CPUs.
> > - Sample output of reproducer on otherwise idle system:
> >    # ./a.out
> >    [00000314] map_write_unmap took: 26305 ms
> >    [00000867] map_write_unmap took: 13642 ms
> >    [00002200] map_write_unmap took: 44237 ms
> >    [00002851] map_write_unmap took: 992 ms
> >    [00004725] map_write_unmap took: 542 ms
> >    [00006443] map_write_unmap took: 5333 ms
> >    [00006593] map_write_unmap took: 21162 ms
> >    [00007435] map_write_unmap took: 16982 ms
> >    [00007488] map_write unmap took: 13 ms^C
> >
> > I ran a bisect, which identified following commit as first bad one:
> >    dd2283f2605e ("mm: mmap: zap pages with read mmap_sem in munmap")
> >
> > I can also make the issue go away with following change:
> > diff --git a/mm/mmap.c b/mm/mmap.c
> > index 330f12c17fa1..13ce465740e2 100644
> > --- a/mm/mmap.c
> > +++ b/mm/mmap.c
> > @@ -2844,7 +2844,7 @@ EXPORT_SYMBOL(vm_munmap);
> >   SYSCALL_DEFINE2(munmap, unsigned long, addr, size_t, len)
> >   {
> >          profile_munmap(addr);
> > -       return __vm_munmap(addr, len, true);
> > +       return __vm_munmap(addr, len, false);
> >   }
> >
> > # cat /proc/cpuinfo  | head
> > processor       : 0
> > BogoMIPS        : 40.00
> > Features        : fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid asimdrdm
> > CPU implementer : 0x51
> > CPU architecture: 8
> > CPU variant     : 0x0
> > CPU part        : 0xc00
> > CPU revision    : 1
> >
> > # numactl -H
> > available: 1 nodes (0)
> > node 0 cpus: 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23
> > 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45
> > node 0 size: 97938 MB
> > node 0 free: 95732 MB
> > node distances:
> > node   0
> >    0:  10
> >
> > Regards,
> > Jan
> >
> > [1]
> > https://github.com/jstancek/reproducers/blob/master/kernel/page_fault_stall/mmap5.c
> > [2]
> > https://github.com/jstancek/reproducers/blob/master/kernel/page_fault_stall/config
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
