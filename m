Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF3B15425
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 21:05:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EvqJW6hOoqxzczGECCVywCLanV9nNARa3qSeSoj9tKI=; b=tkUiLf4w8izi2Cp+8QZuKQO5O
	85JBjfg5Gzfsni/C9X+V3xQOMS+l+vYx6lm+BXe2SPcd3IO/+S6yCMrDjbF0X1iaYtoTTBYJgKXrA
	5LwlXoi7QQof6dsMIPApgZm7OMbLo6NPmh4wCxlgt/gn3azrzEGUD15tNkKrBrKDB4qnn+O2PW5nR
	fZvMIvqtgHws9Bwvb3nJv7IfeFDehv3Qic+atsKHrFOQS0Hghw8NH+p+RnngfQfcyCP/BHMy4aeTA
	Vi9oSFx0us7RETQ9RUKKMDxksg7LL/jK+WaZZW2Li/iVmODhccaNz5ti72ohjxwxUDLLxshOOq4fL
	LnqGRLOwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNivQ-0002Qg-N3; Mon, 06 May 2019 19:05:20 +0000
Received: from out4436.biz.mail.alibaba.com ([47.88.44.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNivJ-0002QE-Nv
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 19:05:15 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R171e4; CH=green; DM=||false|;
 FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e01422; MF=yang.shi@linux.alibaba.com; NM=1;
 PH=DS; RN=10; SR=0; TI=SMTPD_---0TR3YQ05_1557169494; 
Received: from US-143344MP.local(mailfrom:yang.shi@linux.alibaba.com
 fp:SMTPD_---0TR3YQ05_1557169494) by smtp.aliyun-inc.com(127.0.0.1);
 Tue, 07 May 2019 03:05:07 +0800
Subject: Re: [bug] aarch64: userspace stalls on page fault after dd2283f2605e
 ("mm: mmap: zap pages with read mmap_sem in munmap")
To: Jan Stancek <jstancek@redhat.com>, linux-mm@kvack.org,
 linux-arm-kernel@lists.infradead.org
References: <1817839533.20996552.1557065445233.JavaMail.zimbra@redhat.com>
From: Yang Shi <yang.shi@linux.alibaba.com>
Message-ID: <a9d5efea-6088-67c5-8711-f0657a852813@linux.alibaba.com>
Date: Mon, 6 May 2019 12:04:53 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
 Gecko/20100101 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1817839533.20996552.1557065445233.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_120513_916107_1DAB1BDE 
X-CRM114-Status: GOOD (  24.65  )
X-Spam-Score: -8.7 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [47.88.44.36 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
 akpm@linux-foundation.org, vbabka@suse.cz
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/5/19 7:10 AM, Jan Stancek wrote:
> Hi,
>
> I'm seeing userspace program getting stuck on aarch64, on kernels 4.20 and newer.
> It stalls from seconds to hours.
>
> I have simplified it to following scenario (reproducer linked below [1]):
>    while (1):
>      spawn Thread 1: mmap, write, munmap
>      spawn Thread 2: <nothing>
>
> Thread 1 is sporadically getting stuck on write to mapped area. User-space is not
> moving forward - stdout output stops. Observed CPU usage is however 100%.
>
> At this time, kernel appears to be busy handling page faults (~700k per second):
>
> # perf top -a -g
> -   98.97%     8.30%  a.out                     [.] map_write_unmap
>     - 23.52% map_write_unmap
>        - 24.29% el0_sync
>           - 10.42% do_mem_abort
>              - 17.81% do_translation_fault
>                 - 33.01% do_page_fault
>                    - 56.18% handle_mm_fault
>                         40.26% __handle_mm_fault
>                         2.19% __ll_sc___cmpxchg_case_acq_4
>                         0.87% mem_cgroup_from_task
>                    - 6.18% find_vma
>                         5.38% vmacache_find
>                      1.35% __ll_sc___cmpxchg_case_acq_8
>                      1.23% __ll_sc_atomic64_sub_return_release
>                      0.78% down_read_trylock
>             0.93% do_translation_fault
>     + 8.30% thread_start
>
> #  perf stat -p 8189 -d
> ^C
>   Performance counter stats for process id '8189':
>
>          984.311350      task-clock (msec)         #    1.000 CPUs utilized
>                   0      context-switches          #    0.000 K/sec
>                   0      cpu-migrations            #    0.000 K/sec
>             723,641      page-faults               #    0.735 M/sec
>       2,559,199,434      cycles                    #    2.600 GHz
>         711,933,112      instructions              #    0.28  insn per cycle
>     <not supported>      branches
>             757,658      branch-misses
>         205,840,557      L1-dcache-loads           #  209.121 M/sec
>          40,561,529      L1-dcache-load-misses     #   19.71% of all L1-dcache hits
>     <not supported>      LLC-loads
>     <not supported>      LLC-load-misses
>
>         0.984454892 seconds time elapsed
>
> With some extra traces, it appears looping in page fault for same address, over and over:
>    do_page_fault // mm_flags: 0x55
>      __do_page_fault
>        __handle_mm_fault
>          handle_pte_fault
>            ptep_set_access_flags
>              if (pte_same(pte, entry))  // pte: e8000805060f53, entry: e8000805060f53
>
> I had traces in mmap() and munmap() as well, they don't get hit when reproducer
> hits the bad state.
>
> Notes:
> - I'm not able to reproduce this on x86.
> - Attaching GDB or strace immediatelly recovers application from stall.
> - It also seems to recover faster when system is busy with other tasks.
> - MAP_SHARED vs. MAP_PRIVATE makes no difference.
> - Turning off THP makes no difference.
> - Reproducer [1] usually hits it within ~minute on HW described below.
> - Longman mentioned that "When the rwsem becomes reader-owned, it causes
>    all the spinning writers to go to sleep adding wakeup latency to
>    the time required to finish the critical sections", but this looks
>    like busy loop, so I'm not sure if it's related to rwsem issues identified
>    in: https://lore.kernel.org/lkml/20190428212557.13482-2-longman@redhat.com/

It sounds possible to me. What the optimization done by the commit ("mm: 
mmap: zap pages with read mmap_sem in munmap") is to downgrade write 
rwsem to read when zapping pages and page table in munmap() after the 
vmas have been detached from the rbtree.

So the mmap(), which is writer, in your test may steal the lock and 
execute with the munmap(), which is the reader after the downgrade, in 
parallel to break the mutual exclusion.

In this case, the parallel mmap() may map to the same area since vmas 
have been detached by munmap(), then mmap() may create the complete same 
vmas, and page fault happens on the same vma at the same address.

I'm not sure why gdb or strace could recover this, but they use ptrace 
which may acquire mmap_sem to break the parallel inadvertently.

May you please try Waiman's patch to see if it makes any difference?

> - I tried 2 different aarch64 systems so far: APM X-Gene CPU Potenza A3 and
>    Qualcomm 65-LA-115-151.
>    I can reproduce it on both with v5.1-rc7. It's easier to reproduce
>    on latter one (for longer periods of time), which has 46 CPUs.
> - Sample output of reproducer on otherwise idle system:
>    # ./a.out
>    [00000314] map_write_unmap took: 26305 ms
>    [00000867] map_write_unmap took: 13642 ms
>    [00002200] map_write_unmap took: 44237 ms
>    [00002851] map_write_unmap took: 992 ms
>    [00004725] map_write_unmap took: 542 ms
>    [00006443] map_write_unmap took: 5333 ms
>    [00006593] map_write_unmap took: 21162 ms
>    [00007435] map_write_unmap took: 16982 ms
>    [00007488] map_write unmap took: 13 ms^C
>
> I ran a bisect, which identified following commit as first bad one:
>    dd2283f2605e ("mm: mmap: zap pages with read mmap_sem in munmap")
>
> I can also make the issue go away with following change:
> diff --git a/mm/mmap.c b/mm/mmap.c
> index 330f12c17fa1..13ce465740e2 100644
> --- a/mm/mmap.c
> +++ b/mm/mmap.c
> @@ -2844,7 +2844,7 @@ EXPORT_SYMBOL(vm_munmap);
>   SYSCALL_DEFINE2(munmap, unsigned long, addr, size_t, len)
>   {
>          profile_munmap(addr);
> -       return __vm_munmap(addr, len, true);
> +       return __vm_munmap(addr, len, false);
>   }
>
> # cat /proc/cpuinfo  | head
> processor       : 0
> BogoMIPS        : 40.00
> Features        : fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid asimdrdm
> CPU implementer : 0x51
> CPU architecture: 8
> CPU variant     : 0x0
> CPU part        : 0xc00
> CPU revision    : 1
>
> # numactl -H
> available: 1 nodes (0)
> node 0 cpus: 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45
> node 0 size: 97938 MB
> node 0 free: 95732 MB
> node distances:
> node   0
>    0:  10
>
> Regards,
> Jan
>
> [1] https://github.com/jstancek/reproducers/blob/master/kernel/page_fault_stall/mmap5.c
> [2] https://github.com/jstancek/reproducers/blob/master/kernel/page_fault_stall/config


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
