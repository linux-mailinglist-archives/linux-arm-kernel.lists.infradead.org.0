Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 032EF1699A2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 20:26:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cj7LPeg+qWCuNI4WAZ/iTYJFuupLJopnCAye53k5RcQ=; b=XXp648F9AHtlqj
	O8IgF8g/PRlMII+GtBUgft+hcxQ3uUl3Mo6EVcYHDGsFSmCuUWOimQc81QgLpK908OMtkXXChNjrt
	SS7t+rz++AvueOpZo4/SXz4sOZn8f1gtDoV4vHqL6mUPLcpsieRbKZcWFRM/H7V2sZsUftabPNZOt
	fH3UYBKrFewTyNIl6IgkbQ5peUHrnoUlzVbl3XTNwtrWfkLwHIuyKownmloDeTQBsOUIlbQ1aCx8o
	m02mE+UNQLB1XHvYPiJhvYMt+cO+1/JKxYuNC0eM9AEBa8AkbskUPieHG5vX4srHJL96skhdYB7S4
	3BI0ghXLZT5aGK6w5iVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5wtN-0000X3-IS; Sun, 23 Feb 2020 19:26:17 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5wsh-00005l-7l
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 19:25:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582485930;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=zSCIh7K7Y8FlgneHdFGaX0aZ5L1KSsvBwva6avjhk6c=;
 b=HBx1+UjOleEW+akgZvat4a1gYo/nBdHV+kQmYCWMGs9YuAUPeEmkFokyfRiwMDjKQSqqfg
 Gw5rxcn+mUfhFUKuXIFc0ccQbCfDmIJ3lMGCDfx8NGiEvCjkY3JjkqxKq1o7ZHu8nbHl4R
 +guK6+0HNMfFIchJLVrSb/eMsGY302I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-220-3QBvPW4zM2Wmt9n2PN-D1A-1; Sun, 23 Feb 2020 14:25:25 -0500
X-MC-Unique: 3QBvPW4zM2Wmt9n2PN-D1A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 56230184B122;
 Sun, 23 Feb 2020 19:25:24 +0000 (UTC)
Received: from mail (ovpn-120-118.rdu2.redhat.com [10.10.120.118])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A44B5C241;
 Sun, 23 Feb 2020 19:25:21 +0000 (UTC)
From: Andrea Arcangeli <aarcange@redhat.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Rafael Aquini <aquini@redhat.com>, Mark Salter <msalter@redhat.com>
Subject: [PATCH 0/3] arm64: tlb: skip tlbi broadcast v2
Date: Sun, 23 Feb 2020 14:25:17 -0500
Message-Id: <20200223192520.20808-1-aarcange@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_112535_351364_75822D88 
X-CRM114-Status: GOOD (  22.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: QI Fuli <qi.fuli@fujitsu.com>, Jon Masters <jcm@jonmasters.org>,
 linux-kernel@vger.kernel.org, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This is introducing a nr_active_mm that allows to optimize away the
tlbi broadcast also for multi threaded processes, it doesn't rely
anymore on mm_users <= 1.

This also optimizes away all TLB flushes (including local ones) when
the process is not running in any cpu (including during exit_mmap with
lazy tlb state).

This optimization is generally only observable when there are parallel
TLB flushes from different processes in multiple CPUs. One possible
use case is an userland malloc libs freeing small objects with
MADV_DONTNEED and causing a frequent tiny tlb flushes as demonstrated
by the tcmalloc testsuite.

All memory intensive apps dealing a multitude of frequently freed
small objects tend to opt-out of glibc and they opt-in jemalloc or
tcmalloc, so this should facilitate the SMP/NUMA scalability of long
lived apps with small objects running in different containers if
they're issuing frequent MADV_DONTNEED tlb flushes while the other
threads of the process are not running.

I was suggested to implement the mm_cpumask the standard way in
order to optimize multithreaded apps too and to avoid restricting the
optimization to mm_users <= 1. So initially I had two bitmasks allocated
as shown at the bottom of this cover letter, by setting
ARCH_NR_MM_CPUMASK to 2 with the below patch applied... however I
figured a single atomic per-mm achieves the exact same runtime behavior
of the extra bitmap, so I just dropped the extra bitmap and I replaced
it with nr_active_mm as an optimization.

If the switch_mm atomic ops in the switch_mm fast path would be a
concern (they're still faster than the cpumask_set_cpu/clear_cpu, with
less than 256-512 CPUs), it's worth mentioning it'd be possible to
remove all atomic ops from the switch_mm fast path by restricting this
optimization to single threaded processes by checking mm_users <= 1
and < 1 instead of nr_active_mm <= 1 and < 1 similarly to what the
earlier version of this patchset was doing.

Thanks,
Andrea

Andrea Arcangeli (3):
  mm: use_mm: fix for arches checking mm_users to optimize TLB flushes
  arm64: select CPUMASK_OFFSTACK if NUMA
  arm64: tlb: skip tlbi broadcast

 arch/arm64/Kconfig                   |  1 +
 arch/arm64/include/asm/efi.h         |  2 +-
 arch/arm64/include/asm/mmu.h         |  4 +-
 arch/arm64/include/asm/mmu_context.h | 33 ++++++++--
 arch/arm64/include/asm/tlbflush.h    | 95 +++++++++++++++++++++++++++-
 arch/arm64/mm/context.c              | 54 ++++++++++++++++
 mm/mmu_context.c                     |  2 +
 7 files changed, 180 insertions(+), 11 deletions(-)

Early attempt with the standard mm_cpumask follows:

From: Andrea Arcangeli <aarcange@redhat.com>
Subject: mm: allow per-arch mm_cpumasks based on ARCH_NR_MM_CPUMASK

Allow archs to allocate multiple mm_cpumasks in the mm_struct per-arch
by definining a ARCH_NR_MM_CPUMASK > 1 (to be included before
"linux/mm_types.h").

Those extra per-mm cpumasks can be referenced with
__mm_cpumask(N, mm), where N == 0 points to the mm_cpumask()
known by the common code and N > 0 points to the per-arch private
ones.
---
 drivers/firmware/efi/efi.c |  3 ++-
 include/linux/mm_types.h   | 17 +++++++++++++++--
 kernel/fork.c              |  3 ++-
 mm/init-mm.c               |  2 +-
 4 files changed, 20 insertions(+), 5 deletions(-)

diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
index 5da0232ae33f..608c9bf181e5 100644
--- a/drivers/firmware/efi/efi.c
+++ b/drivers/firmware/efi/efi.c
@@ -86,7 +86,8 @@ struct mm_struct efi_mm = {
 	.mmap_sem		= __RWSEM_INITIALIZER(efi_mm.mmap_sem),
 	.page_table_lock	= __SPIN_LOCK_UNLOCKED(efi_mm.page_table_lock),
 	.mmlist			= LIST_HEAD_INIT(efi_mm.mmlist),
-	.cpu_bitmap		= { [BITS_TO_LONGS(NR_CPUS)] = 0},
+	.cpu_bitmap		= { [BITS_TO_LONGS(NR_CPUS) *
+				     ARCH_NR_MM_CPUMASK] = 0},
 };
 
 struct workqueue_struct *efi_rts_wq;
diff --git a/include/linux/mm_types.h b/include/linux/mm_types.h
index f29bba20bba1..b53d5622b3b2 100644
--- a/include/linux/mm_types.h
+++ b/include/linux/mm_types.h
@@ -531,6 +531,9 @@ struct mm_struct {
 	RH_KABI_RESERVE(7)
 	RH_KABI_RESERVE(8)
 
+#ifndef ARCH_NR_MM_CPUMASK
+#define ARCH_NR_MM_CPUMASK 1
+#endif
 	/*
 	 * The mm_cpumask needs to be at the end of mm_struct, because it
 	 * is dynamically sized based on nr_cpu_ids.
@@ -544,15 +547,25 @@ extern struct mm_struct init_mm;
 static inline void mm_init_cpumask(struct mm_struct *mm)
 {
 	unsigned long cpu_bitmap = (unsigned long)mm;
+	int i;
 
 	cpu_bitmap += offsetof(struct mm_struct, cpu_bitmap);
-	cpumask_clear((struct cpumask *)cpu_bitmap);
+	for (i = 0; i < ARCH_NR_MM_CPUMASK; i++) {
+		cpumask_clear((struct cpumask *)cpu_bitmap);
+		cpu_bitmap += cpumask_size();
+	}
 }
 
 /* Future-safe accessor for struct mm_struct's cpu_vm_mask. */
+static inline cpumask_t *__mm_cpumask(int index, struct mm_struct *mm)
+{
+	return (struct cpumask *)((unsigned long)&mm->cpu_bitmap +
+				  cpumask_size() * index);
+}
+
 static inline cpumask_t *mm_cpumask(struct mm_struct *mm)
 {
-	return (struct cpumask *)&mm->cpu_bitmap;
+	return __mm_cpumask(0, mm);
 }
 
 struct mmu_gather;
diff --git a/kernel/fork.c b/kernel/fork.c
index 1dad2f91fac3..a6cbbc1b6008 100644
--- a/kernel/fork.c
+++ b/kernel/fork.c
@@ -2418,7 +2418,8 @@ void __init proc_caches_init(void)
 	 * dynamically sized based on the maximum CPU number this system
 	 * can have, taking hotplug into account (nr_cpu_ids).
 	 */
-	mm_size = sizeof(struct mm_struct) + cpumask_size();
+	mm_size = sizeof(struct mm_struct) + cpumask_size() * \
+		ARCH_NR_MM_CPUMASK;
 
 	mm_cachep = kmem_cache_create_usercopy("mm_struct",
 			mm_size, ARCH_MIN_MMSTRUCT_ALIGN,
diff --git a/mm/init-mm.c b/mm/init-mm.c
index a787a319211e..d975f8ce270e 100644
--- a/mm/init-mm.c
+++ b/mm/init-mm.c
@@ -35,6 +35,6 @@ struct mm_struct init_mm = {
 	.arg_lock	=  __SPIN_LOCK_UNLOCKED(init_mm.arg_lock),
 	.mmlist		= LIST_HEAD_INIT(init_mm.mmlist),
 	.user_ns	= &init_user_ns,
-	.cpu_bitmap	= { [BITS_TO_LONGS(NR_CPUS)] = 0},
+	.cpu_bitmap	= { [BITS_TO_LONGS(NR_CPUS) * ARCH_NR_MM_CPUMASK] = 0},
 	INIT_MM_CONTEXT(init_mm)
 };


[bitmap version depending on the above follows]

@@ -248,6 +260,42 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 		cpu_switch_mm(mm->pgd, mm);
 }
 
+enum tlb_flush_types tlb_flush_check(struct mm_struct *mm, unsigned int cpu)
+{
+	if (cpumask_any_but(mm_cpumask(mm), cpu) >= nr_cpu_ids) {
+		bool is_local = cpumask_test_cpu(cpu, mm_cpumask(mm));
+		cpumask_t *stale_cpumask = __mm_cpumask(1, mm);
+		int next_zero = cpumask_next_zero(-1, stale_cpumask);
+		bool local_is_clear = false;
+		if (next_zero < nr_cpu_ids &&
+		    (is_local && next_zero == cpu)) {
+			next_zero = cpumask_next_zero(next_zero, stale_cpumask);
+			local_is_clear = true;
+		}
+		if (next_zero < nr_cpu_ids) {
+			cpumask_setall(stale_cpumask);
+			local_is_clear = false;
+		}
+
+		/*
+		 * Enforce CPU ordering between the
+		 * cpumask_setall() and cpumask_any_but().
+		 */
+		smp_mb();
+
+		if (likely(cpumask_any_but(mm_cpumask(mm),
+					   cpu) >= nr_cpu_ids)) {
+			if (is_local) {
+				if (!local_is_clear)
+					cpumask_clear_cpu(cpu, stale_cpumask);
+				return TLB_FLUSH_LOCAL;
+			}
+			return TLB_FLUSH_NO;
+		}
+	}
+	return TLB_FLUSH_BROADCAST;
+}
+
 /* Errata workaround post TTBRx_EL1 update. */
 asmlinkage void post_ttbr_update_workaround(void)
 {


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
