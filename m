Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C72924E1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 15:24:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I0M/1h4ua1EXXfxxFVb1/sXSVpPtLuH5Mbw9AhDthO8=; b=RjBlWXyQ2vF9F/
	KidyVol31zHEXdPmhjRSWZPgBQZAs+v1VIrUvyz2zm6eFkcHMIWE3yQzs5MD6PzKJ318LtHH8AJnX
	ohxaz+TnhbCJqO/UNLUspLxIQOGySlGhg8b0VXGbRaRSN16BmQldivwN/ZSQkpxfITk2YT0shVT/i
	mjFyMrYCkUcG+5R36jmENPkMmPbg1sDXKjK3CPbpf2+drEaev52SHS4bwyc2uQDTOY1hyN6Q1MfTK
	8cTwKjl+y0Q54hJpm+GPwj5/30iHScE1+UMq6nYC0WHHTioluFmTe4n+cORxd0IMNzHKmM6lxcUW6
	/t1KJM93+QI4rGDrsszg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhdg-0002nn-4G; Mon, 19 Aug 2019 13:24:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhdZ-0002nJ-24; Mon, 19 Aug 2019 13:23:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0A3FD28;
 Mon, 19 Aug 2019 06:23:52 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 22D863F777;
 Mon, 19 Aug 2019 06:23:50 -0700 (PDT)
Date: Mon, 19 Aug 2019 14:23:48 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: kasan: fix phys_to_virt() false positive on
 tag-based kasan
Message-ID: <20190819132347.GB9927@lakrids.cambridge.arm.com>
References: <20190819114420.2535-1-walter-zh.wu@mediatek.com>
 <20190819125625.bu3nbrldg7te5kwc@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819125625.bu3nbrldg7te5kwc@willie-the-truck>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_062353_215407_BA11F5B0 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Walter Wu <walter-zh.wu@mediatek.com>, wsd_upstream@mediatek.com,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com,
 linux-mediatek@lists.infradead.org, Alexander Potapenko <glider@google.com>,
 linux-arm-kernel@lists.infradead.org, Andrey Konovalov <andreyknvl@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 01:56:26PM +0100, Will Deacon wrote:
> On Mon, Aug 19, 2019 at 07:44:20PM +0800, Walter Wu wrote:
> > __arm_v7s_unmap() call iopte_deref() to translate pyh_to_virt address,
> > but it will modify pointer tag into 0xff, so there is a false positive.
> > 
> > When enable tag-based kasan, phys_to_virt() function need to rewrite
> > its original pointer tag in order to avoid kasan report an incorrect
> > memory corruption.
> 
> Hmm. Which tree did you see this on? We've recently queued a load of fixes
> in this area, but I /thought/ they were only needed after the support for
> 52-bit virtual addressing in the kernel.

I'm seeing similar issues in the virtio blk code (splat below), atop of
the arm64 for-next/core branch. I think this is a latent issue, and
people are only just starting to test with KASAN_SW_TAGS.

It looks like the virtio blk code will round-trip a SLUB-allocated pointer from
virt->page->virt, losing the per-object tag in the process.

Our page_to_virt() seems to get a per-page tag, but this only makes
sense if you're dealing with the page allocator, rather than something
like SLUB which carves a page into smaller objects giving each object a
distinct tag.

Any round-trip of a pointer from SLUB is going to lose the per-object
tag.

Thanks,
Mark.

==================================================================
BUG: KASAN: double-free or invalid-free in virtblk_request_done+0x128/0x1d8 drivers/block/virtio_blk.c:215
Pointer tag: [ff], memory tag: [a8]

CPU: 0 PID: 19116 Comm: syz-executor.0 Not tainted 5.3.0-rc3-00075-gcb38552 #1
Hardware name: linux,dummy-virt (DT)
Call trace:
 dump_backtrace+0x0/0x3c0 arch/arm64/include/asm/stacktrace.h:166
 show_stack+0x24/0x30 arch/arm64/kernel/traps.c:138
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0x138/0x1f4 lib/dump_stack.c:113
 print_address_description+0x7c/0x328 mm/kasan/report.c:351
 kasan_report_invalid_free+0x80/0xe0 mm/kasan/report.c:444
 __kasan_slab_free+0x1a8/0x208 mm/kasan/common.c:56
 kasan_slab_free+0xc/0x18 mm/kasan/common.c:457
 slab_free_hook mm/slub.c:1423 [inline]
 slab_free_freelist_hook mm/slub.c:1474 [inline]
 slab_free mm/slub.c:3016 [inline]
 kfree+0x254/0x9dc mm/slub.c:3957
 virtblk_request_done+0x128/0x1d8 drivers/block/virtio_blk.c:215
 blk_done_softirq+0x3dc/0x49c block/blk-softirq.c:37
 __do_softirq+0xa90/0x1504 kernel/softirq.c:292
 do_softirq_own_stack include/linux/interrupt.h:549 [inline]
 invoke_softirq kernel/softirq.c:380 [inline]
 irq_exit+0x3b0/0x4f8 kernel/softirq.c:413
 __handle_domain_irq+0x150/0x250 kernel/irq/irqdesc.c:671
 atomic_read include/asm-generic/atomic-instrumented.h:26 [inline]
 static_key_count include/linux/jump_label.h:254 [inline]
 cpus_have_const_cap arch/arm64/include/asm/cpufeature.h:410 [inline]
 gic_read_iar drivers/irqchip/irq-gic-v3.c:152 [inline]
 gic_handle_irq+0x244/0x4ac drivers/irqchip/irq-gic-v3.c:490
 el1_irq+0xbc/0x140 arch/arm64/kernel/entry.S:670
 ktime_add_safe kernel/time/hrtimer.c:321 [inline]
 hrtimer_set_expires_range_ns include/linux/hrtimer.h:235 [inline]
 hrtimer_nanosleep kernel/time/hrtimer.c:1732 [inline]
 __do_sys_nanosleep kernel/time/hrtimer.c:1767 [inline]
 __se_sys_nanosleep kernel/time/hrtimer.c:1754 [inline]
 __arm64_sys_nanosleep+0x344/0x554 kernel/time/hrtimer.c:1754
 __invoke_syscall arch/arm64/kernel/syscall.c:36 [inline]
 invoke_syscall arch/arm64/kernel/syscall.c:48 [inline]
 el0_svc_common arch/arm64/kernel/syscall.c:114 [inline]
 el0_svc_handler+0x300/0x540 arch/arm64/kernel/syscall.c:160
 el0_svc+0x8/0xc arch/arm64/kernel/entry.S:1006

Allocated by task 170:
 save_stack mm/kasan/common.c:69 [inline]
 set_track mm/kasan/common.c:77 [inline]
 __kasan_kmalloc+0x114/0x1d0 mm/kasan/common.c:487
 kasan_kmalloc+0x10/0x18 mm/kasan/common.c:501
 __kmalloc+0x1f0/0x48c mm/slub.c:3811
 kmalloc_array include/linux/slab.h:676 [inline]
 virtblk_setup_discard_write_zeroes drivers/block/virtio_blk.c:188 [inline]
 virtio_queue_rq+0x948/0xe48 drivers/block/virtio_blk.c:322
 blk_mq_dispatch_rq_list+0x914/0x16fc block/blk-mq.c:1257
 blk_mq_do_dispatch_sched+0x374/0x4d8 block/blk-mq-sched.c:115
 blk_mq_sched_dispatch_requests+0x4d0/0x68c block/blk-mq-sched.c:216
 __blk_mq_run_hw_queue+0x22c/0x35c block/blk-mq.c:1387
 blk_mq_run_work_fn+0x64/0x78 block/blk-mq.c:1620
 process_one_work+0x10bc/0x1df0 kernel/workqueue.c:2269
 worker_thread+0x1124/0x17bc kernel/workqueue.c:2415
 kthread+0x3c0/0x3d0 kernel/kthread.c:255
 ret_from_fork+0x10/0x18 arch/arm64/kernel/entry.S:1164

Freed by task 17121:
 save_stack mm/kasan/common.c:69 [inline]
 set_track mm/kasan/common.c:77 [inline]
 __kasan_slab_free+0x138/0x208 mm/kasan/common.c:449
 kasan_slab_free+0xc/0x18 mm/kasan/common.c:457
 slab_free_hook mm/slub.c:1423 [inline]
 slab_free_freelist_hook mm/slub.c:1474 [inline]
 slab_free mm/slub.c:3016 [inline]
 kfree+0x254/0x9dc mm/slub.c:3957
 kvfree+0x54/0x60 mm/util.c:488
 __vunmap+0xa3c/0xafc mm/vmalloc.c:2255
 __vfree mm/vmalloc.c:2299 [inline]
 vfree+0xe4/0x1c4 mm/vmalloc.c:2329
 copy_entries_to_user net/ipv6/netfilter/ip6_tables.c:883 [inline]
 get_entries net/ipv6/netfilter/ip6_tables.c:1041 [inline]
 do_ip6t_get_ctl+0xf78/0x1804 net/ipv6/netfilter/ip6_tables.c:1709
 nf_sockopt net/netfilter/nf_sockopt.c:104 [inline]
 nf_getsockopt+0x238/0x258 net/netfilter/nf_sockopt.c:122
 ipv6_getsockopt+0x3374/0x40c4 net/ipv6/ipv6_sockglue.c:1400
 tcp_getsockopt+0x214/0x54e0 net/ipv4/tcp.c:3662
 sock_common_getsockopt+0xc8/0xf4 net/core/sock.c:3089
 __sys_getsockopt net/socket.c:2129 [inline]
 __do_sys_getsockopt net/socket.c:2144 [inline]
 __se_sys_getsockopt net/socket.c:2141 [inline]
 __arm64_sys_getsockopt+0x240/0x308 net/socket.c:2141
 __invoke_syscall arch/arm64/kernel/syscall.c:36 [inline]
 invoke_syscall arch/arm64/kernel/syscall.c:48 [inline]
 el0_svc_common arch/arm64/kernel/syscall.c:114 [inline]
 el0_svc_handler+0x300/0x540 arch/arm64/kernel/syscall.c:160
 el0_svc+0x8/0xc arch/arm64/kernel/entry.S:1006

The buggy address belongs to the object at ffff00005338eb80
 which belongs to the cache kmalloc-128 of size 128
The buggy address is located 0 bytes inside of
 128-byte region [ffff00005338eb80, ffff00005338ec00)
The buggy address belongs to the page:
page:ffffffdffff4ce00 refcount:1 mapcount:0 mapping:e5ff0000576b0480 index:0x29ff000053388f00
flags: 0xffffff000000200(slab)
raw: 0ffffff000000200 ffffffdffff00108 5eff0000576afd40 e5ff0000576b0480
raw: 29ff000053388f00 000000000066005d 00000001ffffffff 0000000000000000
page dumped because: kasan: bad access detected

Memory state around the buggy address:
 ffff00005338e900: 34 34 34 34 34 34 34 34 fe fe fe fe fe fe fe fe
 ffff00005338ea00: fe fe fe fe fe fe fe fe fe fe fe fe fe fe fe fe
>ffff00005338eb00: fe fe fe fe fe fe fe fe a8 fe fe fe fe fe fe fe
                                           ^
 ffff00005338ec00: fe fe fe fe fe fe fe fe fe fe fe fe fe fe fe fe
 ffff00005338ed00: fe fe fe fe fe fe fe fe fe fe fe fe fe fe fe fe
==================================================================

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
