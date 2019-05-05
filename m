Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9BB14014
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 16:11:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:In-Reply-To:
	Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=rfVt64i2Zr64ftdq8uS7NFKUd9QfLOYDMxp2v/y3Jr8=; b=JvvoBmA7R7UaT2
	nlbl8/gaOZteYYZedAclsRx2dDOUCr/JvG6Gip9ecQe6uNcaf4bvCtfdicso2xPca7EKXYQhj5rot
	eFyWOxWZqOkR0DN8urqPSLF4TpX5DH2kavXMzXLbCGGppqCRGyorWVEjhG/OXnphVNYpUnvJ64uBQ
	XxwOfnAK7qu8buAA+vlqwS/cMAoKMYrrKPIq54bbd7dndbzZQwzPIcaHaLM4u8hBX9gtrETLsys2o
	DTv+BrK+aceJiV8riqRfF8RxDA7vbA2PS0WsGxKZuFq1/pACwjmSuUrwlzU4kpSpTPzYW1ysWARQo
	1XWZ/eU6LDxiiRhRTYMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNHr3-0006UU-Bn; Sun, 05 May 2019 14:11:01 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNHqw-0006U1-AV
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 14:10:56 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id F1FF4C06645C;
 Sun,  5 May 2019 14:10:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C7B5A60C43;
 Sun,  5 May 2019 14:10:48 +0000 (UTC)
Received: from zmail17.collab.prod.int.phx2.redhat.com
 (zmail17.collab.prod.int.phx2.redhat.com [10.5.83.19])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4EEA718089C8;
 Sun,  5 May 2019 14:10:48 +0000 (UTC)
Date: Sun, 5 May 2019 10:10:45 -0400 (EDT)
From: Jan Stancek <jstancek@redhat.com>
To: linux-mm@kvack.org, linux-arm-kernel@lists.infradead.org
Message-ID: <1817839533.20996552.1557065445233.JavaMail.zimbra@redhat.com>
In-Reply-To: <820667266.20994189.1557058281210.JavaMail.zimbra@redhat.com>
Subject: [bug] aarch64: userspace stalls on page fault after dd2283f2605e
 ("mm: mmap: zap pages with read mmap_sem in munmap")
MIME-Version: 1.0
X-Originating-IP: [10.40.204.49, 10.4.195.17]
Thread-Topic: aarch64: userspace stalls on page fault after dd2283f2605e ("mm:
 mmap: zap pages with read mmap_sem in munmap")
Thread-Index: mxi6IavaUitcMtER3aVvUOvUE5iG/g==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Sun, 05 May 2019 14:10:49 +0000 (UTC)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_071054_403437_7B2F80B4 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Andrea Arcangeli <aarcange@redhat.com>,
 yang shi <yang.shi@linux.alibaba.com>, willy@infradead.org,
 kirill shutemov <kirill.shutemov@linux.intel.com>,
 Waiman Long <longman@redhat.com>, kirill@shutemov.name,
 akpm@linux-foundation.org, Jan Stancek <jstancek@redhat.com>, vbabka@suse.cz
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I'm seeing userspace program getting stuck on aarch64, on kernels 4.20 and newer.
It stalls from seconds to hours.

I have simplified it to following scenario (reproducer linked below [1]):
  while (1):
    spawn Thread 1: mmap, write, munmap
    spawn Thread 2: <nothing>

Thread 1 is sporadically getting stuck on write to mapped area. User-space is not
moving forward - stdout output stops. Observed CPU usage is however 100%.

At this time, kernel appears to be busy handling page faults (~700k per second):

# perf top -a -g
-   98.97%     8.30%  a.out                     [.] map_write_unmap
   - 23.52% map_write_unmap
      - 24.29% el0_sync
         - 10.42% do_mem_abort
            - 17.81% do_translation_fault
               - 33.01% do_page_fault
                  - 56.18% handle_mm_fault
                       40.26% __handle_mm_fault
                       2.19% __ll_sc___cmpxchg_case_acq_4
                       0.87% mem_cgroup_from_task
                  - 6.18% find_vma
                       5.38% vmacache_find
                    1.35% __ll_sc___cmpxchg_case_acq_8
                    1.23% __ll_sc_atomic64_sub_return_release
                    0.78% down_read_trylock
           0.93% do_translation_fault
   + 8.30% thread_start

#  perf stat -p 8189 -d 
^C
 Performance counter stats for process id '8189':

        984.311350      task-clock (msec)         #    1.000 CPUs utilized
                 0      context-switches          #    0.000 K/sec
                 0      cpu-migrations            #    0.000 K/sec
           723,641      page-faults               #    0.735 M/sec
     2,559,199,434      cycles                    #    2.600 GHz
       711,933,112      instructions              #    0.28  insn per cycle
   <not supported>      branches
           757,658      branch-misses
       205,840,557      L1-dcache-loads           #  209.121 M/sec
        40,561,529      L1-dcache-load-misses     #   19.71% of all L1-dcache hits
   <not supported>      LLC-loads
   <not supported>      LLC-load-misses

       0.984454892 seconds time elapsed

With some extra traces, it appears looping in page fault for same address, over and over:
  do_page_fault // mm_flags: 0x55
    __do_page_fault
      __handle_mm_fault
        handle_pte_fault
          ptep_set_access_flags
            if (pte_same(pte, entry))  // pte: e8000805060f53, entry: e8000805060f53

I had traces in mmap() and munmap() as well, they don't get hit when reproducer
hits the bad state.

Notes:
- I'm not able to reproduce this on x86.
- Attaching GDB or strace immediatelly recovers application from stall.
- It also seems to recover faster when system is busy with other tasks.
- MAP_SHARED vs. MAP_PRIVATE makes no difference.
- Turning off THP makes no difference.
- Reproducer [1] usually hits it within ~minute on HW described below.
- Longman mentioned that "When the rwsem becomes reader-owned, it causes
  all the spinning writers to go to sleep adding wakeup latency to
  the time required to finish the critical sections", but this looks
  like busy loop, so I'm not sure if it's related to rwsem issues identified
  in: https://lore.kernel.org/lkml/20190428212557.13482-2-longman@redhat.com/
- I tried 2 different aarch64 systems so far: APM X-Gene CPU Potenza A3 and
  Qualcomm 65-LA-115-151.
  I can reproduce it on both with v5.1-rc7. It's easier to reproduce
  on latter one (for longer periods of time), which has 46 CPUs.
- Sample output of reproducer on otherwise idle system:
  # ./a.out
  [00000314] map_write_unmap took: 26305 ms
  [00000867] map_write_unmap took: 13642 ms
  [00002200] map_write_unmap took: 44237 ms
  [00002851] map_write_unmap took: 992 ms
  [00004725] map_write_unmap took: 542 ms
  [00006443] map_write_unmap took: 5333 ms
  [00006593] map_write_unmap took: 21162 ms
  [00007435] map_write_unmap took: 16982 ms
  [00007488] map_write unmap took: 13 ms^C

I ran a bisect, which identified following commit as first bad one:
  dd2283f2605e ("mm: mmap: zap pages with read mmap_sem in munmap")

I can also make the issue go away with following change:
diff --git a/mm/mmap.c b/mm/mmap.c
index 330f12c17fa1..13ce465740e2 100644
--- a/mm/mmap.c
+++ b/mm/mmap.c
@@ -2844,7 +2844,7 @@ EXPORT_SYMBOL(vm_munmap);
 SYSCALL_DEFINE2(munmap, unsigned long, addr, size_t, len)
 {
        profile_munmap(addr);
-       return __vm_munmap(addr, len, true);
+       return __vm_munmap(addr, len, false);
 }

# cat /proc/cpuinfo  | head
processor       : 0
BogoMIPS        : 40.00
Features        : fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid asimdrdm
CPU implementer : 0x51
CPU architecture: 8
CPU variant     : 0x0
CPU part        : 0xc00
CPU revision    : 1

# numactl -H
available: 1 nodes (0)
node 0 cpus: 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45
node 0 size: 97938 MB
node 0 free: 95732 MB
node distances:
node   0 
  0:  10 

Regards,
Jan

[1] https://github.com/jstancek/reproducers/blob/master/kernel/page_fault_stall/mmap5.c
[2] https://github.com/jstancek/reproducers/blob/master/kernel/page_fault_stall/config

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
