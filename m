Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1964CE59
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 15:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/TBLuqw+dkQo+xI0w86sh1JPgJCqoKkMsc0m1EaSjug=; b=c74f+YJ6j9oHT53F1LTy/f/lC1
	fqr059FJfwjDp2MOmoj3H+sMzW4MQ2PHjpjhivRn1BWb96sQjzC9sNAAZ7CroI1BATXjznNjUUduE
	7lfd0hm3QTU44OEC7nmRHCw8Vj9PG/L1DIg2g/zHpCtA6dSAYrdOBodQ/aXMXqNVzhKyofhp/9htJ
	vm9S0YD8/3XHAA8Kccjx/OLsD5UnGT1wwRuBFF+xfi50kK2d+vj0cft2o+gOApwTiZbO/8vkyPNmY
	N2YvUGzonXmCrzxcFR7mNt9s+Ftmbsak48aL73sFt+nVj17viyKPdr+D2jfRudzBnxb7/deUY3VZh
	JSbowUWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdwpU-0008Kc-A2; Thu, 20 Jun 2019 13:10:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdwm0-0005Nm-Bq
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 13:06:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3AAE9C0A;
 Thu, 20 Jun 2019 06:06:40 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BF9283F718;
 Thu, 20 Jun 2019 06:06:38 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
Subject: [RFC v2 11/14] arm64: Move the ASID allocator code in a separate file
Date: Thu, 20 Jun 2019 14:06:05 +0100
Message-Id: <20190620130608.17230-12-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190620130608.17230-1-julien.grall@arm.com>
References: <20190620130608.17230-1-julien.grall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_060640_574767_7181175F 
X-CRM114-Status: GOOD (  28.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: suzuki.poulose@arm.com, marc.zyngier@arm.com, catalin.marinas@arm.com,
 julien.thierry@arm.com, will.deacon@arm.com,
 Julien Grall <julien.grall@arm.com>, james.morse@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We will want to re-use the ASID allocator in a separate context (e.g
allocating VMID). So move the code in a new file.

The function asid_check_context has been moved in the header as a static
inline function because we want to avoid add a branch when checking if the
ASID is still valid.

Signed-off-by: Julien Grall <julien.grall@arm.com>

---

This code will be used in the virt code for allocating VMID. I am not
entirely sure where to place it. Lib could potentially be a good place but I
am not entirely convinced the algo as it is could be used by other
architecture.

Looking at x86, it seems that it will not be possible to re-use because
the number of PCID (aka ASID) could be smaller than the number of CPUs.
See commit message 10af6235e0d327d42e1bad974385197817923dc1 "x86/mm:
Implement PCID based optimization: try to preserve old TLB entries using
PCI".

    Changes in v2:
        - Rename the header from asid.h to lib_asid.h
---
 arch/arm64/include/asm/lib_asid.h |  77 +++++++++++++
 arch/arm64/lib/Makefile           |   2 +
 arch/arm64/lib/asid.c             | 185 ++++++++++++++++++++++++++++++
 arch/arm64/mm/context.c           | 235 +-------------------------------------
 4 files changed, 267 insertions(+), 232 deletions(-)
 create mode 100644 arch/arm64/include/asm/lib_asid.h
 create mode 100644 arch/arm64/lib/asid.c

diff --git a/arch/arm64/include/asm/lib_asid.h b/arch/arm64/include/asm/lib_asid.h
new file mode 100644
index 000000000000..c18e9eca500e
--- /dev/null
+++ b/arch/arm64/include/asm/lib_asid.h
@@ -0,0 +1,77 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_ASM_LIB_ASID_H
+#define __ASM_ASM_LIB_ASID_H
+
+#include <linux/atomic.h>
+#include <linux/compiler.h>
+#include <linux/cpumask.h>
+#include <linux/percpu.h>
+#include <linux/spinlock.h>
+
+struct asid_info
+{
+	atomic64_t	generation;
+	unsigned long	*map;
+	atomic64_t __percpu	*active;
+	u64 __percpu		*reserved;
+	u32			bits;
+	/* Lock protecting the structure */
+	raw_spinlock_t		lock;
+	/* Which CPU requires context flush on next call */
+	cpumask_t		flush_pending;
+	/* Number of ASID allocated by context (shift value) */
+	unsigned int		ctxt_shift;
+	/* Callback to locally flush the context. */
+	void			(*flush_cpu_ctxt_cb)(void);
+};
+
+#define NUM_ASIDS(info)			(1UL << ((info)->bits))
+#define NUM_CTXT_ASIDS(info)		(NUM_ASIDS(info) >> (info)->ctxt_shift)
+
+#define active_asid(info, cpu)	*per_cpu_ptr((info)->active, cpu)
+
+void asid_new_context(struct asid_info *info, atomic64_t *pasid,
+		      unsigned int cpu);
+
+/*
+ * Check the ASID is still valid for the context. If not generate a new ASID.
+ *
+ * @pasid: Pointer to the current ASID batch
+ * @cpu: current CPU ID. Must have been acquired throught get_cpu()
+ */
+static inline void asid_check_context(struct asid_info *info,
+				      atomic64_t *pasid, unsigned int cpu)
+{
+	u64 asid, old_active_asid;
+
+	asid = atomic64_read(pasid);
+
+	/*
+	 * The memory ordering here is subtle.
+	 * If our active_asid is non-zero and the ASID matches the current
+	 * generation, then we update the active_asid entry with a relaxed
+	 * cmpxchg. Racing with a concurrent rollover means that either:
+	 *
+	 * - We get a zero back from the cmpxchg and end up waiting on the
+	 *   lock. Taking the lock synchronises with the rollover and so
+	 *   we are forced to see the updated generation.
+	 *
+	 * - We get a valid ASID back from the cmpxchg, which means the
+	 *   relaxed xchg in flush_context will treat us as reserved
+	 *   because atomic RmWs are totally ordered for a given location.
+	 */
+	old_active_asid = atomic64_read(&active_asid(info, cpu));
+	if (old_active_asid &&
+	    !((asid ^ atomic64_read(&info->generation)) >> info->bits) &&
+	    atomic64_cmpxchg_relaxed(&active_asid(info, cpu),
+				     old_active_asid, asid))
+		return;
+
+	asid_new_context(info, pasid, cpu);
+}
+
+int asid_allocator_init(struct asid_info *info,
+			u32 bits, unsigned int asid_per_ctxt,
+			void (*flush_cpu_ctxt_cb)(void));
+
+#endif
diff --git a/arch/arm64/lib/Makefile b/arch/arm64/lib/Makefile
index 33c2a4abda04..37169d541ab5 100644
--- a/arch/arm64/lib/Makefile
+++ b/arch/arm64/lib/Makefile
@@ -5,6 +5,8 @@ lib-y		:= clear_user.o delay.o copy_from_user.o		\
 		   memcmp.o strcmp.o strncmp.o strlen.o strnlen.o	\
 		   strchr.o strrchr.o tishift.o
 
+lib-y		+= asid.o
+
 ifeq ($(CONFIG_KERNEL_MODE_NEON), y)
 obj-$(CONFIG_XOR_BLOCKS)	+= xor-neon.o
 CFLAGS_REMOVE_xor-neon.o	+= -mgeneral-regs-only
diff --git a/arch/arm64/lib/asid.c b/arch/arm64/lib/asid.c
new file mode 100644
index 000000000000..7252e4fdd5e9
--- /dev/null
+++ b/arch/arm64/lib/asid.c
@@ -0,0 +1,185 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Generic ASID allocator.
+ *
+ * Based on arch/arm/mm/context.c
+ *
+ * Copyright (C) 2002-2003 Deep Blue Solutions Ltd, all rights reserved.
+ * Copyright (C) 2012 ARM Ltd.
+ */
+
+#include <linux/slab.h>
+
+#include <asm/lib_asid.h>
+
+#define reserved_asid(info, cpu) *per_cpu_ptr((info)->reserved, cpu)
+
+#define ASID_MASK(info)			(~GENMASK((info)->bits - 1, 0))
+#define ASID_FIRST_VERSION(info)	(1UL << ((info)->bits))
+
+#define asid2idx(info, asid)		(((asid) & ~ASID_MASK(info)) >> (info)->ctxt_shift)
+#define idx2asid(info, idx)		(((idx) << (info)->ctxt_shift) & ~ASID_MASK(info))
+
+static void flush_context(struct asid_info *info)
+{
+	int i;
+	u64 asid;
+
+	/* Update the list of reserved ASIDs and the ASID bitmap. */
+	bitmap_clear(info->map, 0, NUM_CTXT_ASIDS(info));
+
+	for_each_possible_cpu(i) {
+		asid = atomic64_xchg_relaxed(&active_asid(info, i), 0);
+		/*
+		 * If this CPU has already been through a
+		 * rollover, but hasn't run another task in
+		 * the meantime, we must preserve its reserved
+		 * ASID, as this is the only trace we have of
+		 * the process it is still running.
+		 */
+		if (asid == 0)
+			asid = reserved_asid(info, i);
+		__set_bit(asid2idx(info, asid), info->map);
+		reserved_asid(info, i) = asid;
+	}
+
+	/*
+	 * Queue a TLB invalidation for each CPU to perform on next
+	 * context-switch
+	 */
+	cpumask_setall(&info->flush_pending);
+}
+
+static bool check_update_reserved_asid(struct asid_info *info, u64 asid,
+				       u64 newasid)
+{
+	int cpu;
+	bool hit = false;
+
+	/*
+	 * Iterate over the set of reserved ASIDs looking for a match.
+	 * If we find one, then we can update our mm to use newasid
+	 * (i.e. the same ASID in the current generation) but we can't
+	 * exit the loop early, since we need to ensure that all copies
+	 * of the old ASID are updated to reflect the mm. Failure to do
+	 * so could result in us missing the reserved ASID in a future
+	 * generation.
+	 */
+	for_each_possible_cpu(cpu) {
+		if (reserved_asid(info, cpu) == asid) {
+			hit = true;
+			reserved_asid(info, cpu) = newasid;
+		}
+	}
+
+	return hit;
+}
+
+static u64 new_context(struct asid_info *info, atomic64_t *pasid)
+{
+	static u32 cur_idx = 1;
+	u64 asid = atomic64_read(pasid);
+	u64 generation = atomic64_read(&info->generation);
+
+	if (asid != 0) {
+		u64 newasid = generation | (asid & ~ASID_MASK(info));
+
+		/*
+		 * If our current ASID was active during a rollover, we
+		 * can continue to use it and this was just a false alarm.
+		 */
+		if (check_update_reserved_asid(info, asid, newasid))
+			return newasid;
+
+		/*
+		 * We had a valid ASID in a previous life, so try to re-use
+		 * it if possible.
+		 */
+		if (!__test_and_set_bit(asid2idx(info, asid), info->map))
+			return newasid;
+	}
+
+	/*
+	 * Allocate a free ASID. If we can't find one, take a note of the
+	 * currently active ASIDs and mark the TLBs as requiring flushes.  We
+	 * always count from ASID #2 (index 1), as we use ASID #0 when setting
+	 * a reserved TTBR0 for the init_mm and we allocate ASIDs in even/odd
+	 * pairs.
+	 */
+	asid = find_next_zero_bit(info->map, NUM_CTXT_ASIDS(info), cur_idx);
+	if (asid != NUM_CTXT_ASIDS(info))
+		goto set_asid;
+
+	/* We're out of ASIDs, so increment the global generation count */
+	generation = atomic64_add_return_relaxed(ASID_FIRST_VERSION(info),
+						 &info->generation);
+	flush_context(info);
+
+	/* We have more ASIDs than CPUs, so this will always succeed */
+	asid = find_next_zero_bit(info->map, NUM_CTXT_ASIDS(info), 1);
+
+set_asid:
+	__set_bit(asid, info->map);
+	cur_idx = asid;
+	return idx2asid(info, asid) | generation;
+}
+
+/*
+ * Generate a new ASID for the context.
+ *
+ * @pasid: Pointer to the current ASID batch allocated. It will be updated
+ * with the new ASID batch.
+ * @cpu: current CPU ID. Must have been acquired through get_cpu()
+ */
+void asid_new_context(struct asid_info *info, atomic64_t *pasid,
+		      unsigned int cpu)
+{
+	unsigned long flags;
+	u64 asid;
+
+	raw_spin_lock_irqsave(&info->lock, flags);
+	/* Check that our ASID belongs to the current generation. */
+	asid = atomic64_read(pasid);
+	if ((asid ^ atomic64_read(&info->generation)) >> info->bits) {
+		asid = new_context(info, pasid);
+		atomic64_set(pasid, asid);
+	}
+
+	if (cpumask_test_and_clear_cpu(cpu, &info->flush_pending))
+		info->flush_cpu_ctxt_cb();
+
+	atomic64_set(&active_asid(info, cpu), asid);
+	raw_spin_unlock_irqrestore(&info->lock, flags);
+}
+
+/*
+ * Initialize the ASID allocator
+ *
+ * @info: Pointer to the asid allocator structure
+ * @bits: Number of ASIDs available
+ * @asid_per_ctxt: Number of ASIDs to allocate per-context. ASIDs are
+ * allocated contiguously for a given context. This value should be a power of
+ * 2.
+ */
+int asid_allocator_init(struct asid_info *info,
+			u32 bits, unsigned int asid_per_ctxt,
+			void (*flush_cpu_ctxt_cb)(void))
+{
+	info->bits = bits;
+	info->ctxt_shift = ilog2(asid_per_ctxt);
+	info->flush_cpu_ctxt_cb = flush_cpu_ctxt_cb;
+	/*
+	 * Expect allocation after rollover to fail if we don't have at least
+	 * one more ASID than CPUs. ASID #0 is always reserved.
+	 */
+	WARN_ON(NUM_CTXT_ASIDS(info) - 1 <= num_possible_cpus());
+	atomic64_set(&info->generation, ASID_FIRST_VERSION(info));
+	info->map = kcalloc(BITS_TO_LONGS(NUM_CTXT_ASIDS(info)),
+			    sizeof(*info->map), GFP_KERNEL);
+	if (!info->map)
+		return -ENOMEM;
+
+	raw_spin_lock_init(&info->lock);
+
+	return 0;
+}
diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index 3df63a28856c..b745cf356fe1 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -23,46 +23,21 @@
 #include <linux/mm.h>
 
 #include <asm/cpufeature.h>
+#include <asm/lib_asid.h>
 #include <asm/mmu_context.h>
 #include <asm/smp.h>
 #include <asm/tlbflush.h>
 
-static struct asid_info
-{
-	atomic64_t	generation;
-	unsigned long	*map;
-	atomic64_t __percpu	*active;
-	u64 __percpu		*reserved;
-	u32			bits;
-	raw_spinlock_t		lock;
-	/* Which CPU requires context flush on next call */
-	cpumask_t		flush_pending;
-	/* Number of ASID allocated by context (shift value) */
-	unsigned int		ctxt_shift;
-	/* Callback to locally flush the context. */
-	void			(*flush_cpu_ctxt_cb)(void);
-} asid_info;
-
-#define active_asid(info, cpu)	*per_cpu_ptr((info)->active, cpu)
-#define reserved_asid(info, cpu) *per_cpu_ptr((info)->reserved, cpu)
-
 static DEFINE_PER_CPU(atomic64_t, active_asids);
 static DEFINE_PER_CPU(u64, reserved_asids);
 
-#define ASID_MASK(info)			(~GENMASK((info)->bits - 1, 0))
-#define NUM_ASIDS(info)			(1UL << ((info)->bits))
-
-#define ASID_FIRST_VERSION(info)	NUM_ASIDS(info)
-
 #ifdef CONFIG_UNMAP_KERNEL_AT_EL0
 #define ASID_PER_CONTEXT		2
 #else
 #define ASID_PER_CONTEXT		1
 #endif
 
-#define NUM_CTXT_ASIDS(info)		(NUM_ASIDS(info) >> (info)->ctxt_shift)
-#define asid2idx(info, asid)		(((asid) & ~ASID_MASK(info)) >> (info)->ctxt_shift)
-#define idx2asid(info, idx)		(((idx) << (info)->ctxt_shift) & ~ASID_MASK(info))
+static struct asid_info asid_info;
 
 /* Get the ASIDBits supported by the current CPU */
 static u32 get_cpu_asid_bits(void)
@@ -102,178 +77,6 @@ void verify_cpu_asid_bits(void)
 	}
 }
 
-static void flush_context(struct asid_info *info)
-{
-	int i;
-	u64 asid;
-
-	/* Update the list of reserved ASIDs and the ASID bitmap. */
-	bitmap_clear(info->map, 0, NUM_CTXT_ASIDS(info));
-
-	for_each_possible_cpu(i) {
-		asid = atomic64_xchg_relaxed(&active_asid(info, i), 0);
-		/*
-		 * If this CPU has already been through a
-		 * rollover, but hasn't run another task in
-		 * the meantime, we must preserve its reserved
-		 * ASID, as this is the only trace we have of
-		 * the process it is still running.
-		 */
-		if (asid == 0)
-			asid = reserved_asid(info, i);
-		__set_bit(asid2idx(info, asid), info->map);
-		reserved_asid(info, i) = asid;
-	}
-
-	/*
-	 * Queue a TLB invalidation for each CPU to perform on next
-	 * context-switch
-	 */
-	cpumask_setall(&info->flush_pending);
-}
-
-static bool check_update_reserved_asid(struct asid_info *info, u64 asid,
-				       u64 newasid)
-{
-	int cpu;
-	bool hit = false;
-
-	/*
-	 * Iterate over the set of reserved ASIDs looking for a match.
-	 * If we find one, then we can update our mm to use newasid
-	 * (i.e. the same ASID in the current generation) but we can't
-	 * exit the loop early, since we need to ensure that all copies
-	 * of the old ASID are updated to reflect the mm. Failure to do
-	 * so could result in us missing the reserved ASID in a future
-	 * generation.
-	 */
-	for_each_possible_cpu(cpu) {
-		if (reserved_asid(info, cpu) == asid) {
-			hit = true;
-			reserved_asid(info, cpu) = newasid;
-		}
-	}
-
-	return hit;
-}
-
-static u64 new_context(struct asid_info *info, atomic64_t *pasid)
-{
-	static u32 cur_idx = 1;
-	u64 asid = atomic64_read(pasid);
-	u64 generation = atomic64_read(&info->generation);
-
-	if (asid != 0) {
-		u64 newasid = generation | (asid & ~ASID_MASK(info));
-
-		/*
-		 * If our current ASID was active during a rollover, we
-		 * can continue to use it and this was just a false alarm.
-		 */
-		if (check_update_reserved_asid(info, asid, newasid))
-			return newasid;
-
-		/*
-		 * We had a valid ASID in a previous life, so try to re-use
-		 * it if possible.
-		 */
-		if (!__test_and_set_bit(asid2idx(info, asid), info->map))
-			return newasid;
-	}
-
-	/*
-	 * Allocate a free ASID. If we can't find one, take a note of the
-	 * currently active ASIDs and mark the TLBs as requiring flushes.  We
-	 * always count from ASID #2 (index 1), as we use ASID #0 when setting
-	 * a reserved TTBR0 for the init_mm and we allocate ASIDs in even/odd
-	 * pairs.
-	 */
-	asid = find_next_zero_bit(info->map, NUM_CTXT_ASIDS(info), cur_idx);
-	if (asid != NUM_CTXT_ASIDS(info))
-		goto set_asid;
-
-	/* We're out of ASIDs, so increment the global generation count */
-	generation = atomic64_add_return_relaxed(ASID_FIRST_VERSION(info),
-						 &info->generation);
-	flush_context(info);
-
-	/* We have more ASIDs than CPUs, so this will always succeed */
-	asid = find_next_zero_bit(info->map, NUM_CTXT_ASIDS(info), 1);
-
-set_asid:
-	__set_bit(asid, info->map);
-	cur_idx = asid;
-	return idx2asid(info, asid) | generation;
-}
-
-static void asid_new_context(struct asid_info *info, atomic64_t *pasid,
-			     unsigned int cpu);
-
-/*
- * Check the ASID is still valid for the context. If not generate a new ASID.
- *
- * @pasid: Pointer to the current ASID batch
- * @cpu: current CPU ID. Must have been acquired throught get_cpu()
- */
-static void asid_check_context(struct asid_info *info,
-			       atomic64_t *pasid, unsigned int cpu)
-{
-	u64 asid, old_active_asid;
-
-	asid = atomic64_read(pasid);
-
-	/*
-	 * The memory ordering here is subtle.
-	 * If our active_asid is non-zero and the ASID matches the current
-	 * generation, then we update the active_asid entry with a relaxed
-	 * cmpxchg. Racing with a concurrent rollover means that either:
-	 *
-	 * - We get a zero back from the cmpxchg and end up waiting on the
-	 *   lock. Taking the lock synchronises with the rollover and so
-	 *   we are forced to see the updated generation.
-	 *
-	 * - We get a valid ASID back from the cmpxchg, which means the
-	 *   relaxed xchg in flush_context will treat us as reserved
-	 *   because atomic RmWs are totally ordered for a given location.
-	 */
-	old_active_asid = atomic64_read(&active_asid(info, cpu));
-	if (old_active_asid &&
-	    !((asid ^ atomic64_read(&info->generation)) >> info->bits) &&
-	    atomic64_cmpxchg_relaxed(&active_asid(info, cpu),
-				     old_active_asid, asid))
-		return;
-
-	asid_new_context(info, pasid, cpu);
-}
-
-/*
- * Generate a new ASID for the context.
- *
- * @pasid: Pointer to the current ASID batch allocated. It will be updated
- * with the new ASID batch.
- * @cpu: current CPU ID. Must have been acquired through get_cpu()
- */
-static void asid_new_context(struct asid_info *info, atomic64_t *pasid,
-			     unsigned int cpu)
-{
-	unsigned long flags;
-	u64 asid;
-
-	raw_spin_lock_irqsave(&info->lock, flags);
-	/* Check that our ASID belongs to the current generation. */
-	asid = atomic64_read(pasid);
-	if ((asid ^ atomic64_read(&info->generation)) >> info->bits) {
-		asid = new_context(info, pasid);
-		atomic64_set(pasid, asid);
-	}
-
-	if (cpumask_test_and_clear_cpu(cpu, &info->flush_pending))
-		info->flush_cpu_ctxt_cb();
-
-	atomic64_set(&active_asid(info, cpu), asid);
-	raw_spin_unlock_irqrestore(&info->lock, flags);
-}
-
 void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 {
 	if (system_supports_cnp())
@@ -305,38 +108,6 @@ static void asid_flush_cpu_ctxt(void)
 	local_flush_tlb_all();
 }
 
-/*
- * Initialize the ASID allocator
- *
- * @info: Pointer to the asid allocator structure
- * @bits: Number of ASIDs available
- * @asid_per_ctxt: Number of ASIDs to allocate per-context. ASIDs are
- * allocated contiguously for a given context. This value should be a power of
- * 2.
- */
-static int asid_allocator_init(struct asid_info *info,
-			       u32 bits, unsigned int asid_per_ctxt,
-			       void (*flush_cpu_ctxt_cb)(void))
-{
-	info->bits = bits;
-	info->ctxt_shift = ilog2(asid_per_ctxt);
-	info->flush_cpu_ctxt_cb = flush_cpu_ctxt_cb;
-	/*
-	 * Expect allocation after rollover to fail if we don't have at least
-	 * one more ASID than CPUs. ASID #0 is always reserved.
-	 */
-	WARN_ON(NUM_CTXT_ASIDS(info) - 1 <= num_possible_cpus());
-	atomic64_set(&info->generation, ASID_FIRST_VERSION(info));
-	info->map = kcalloc(BITS_TO_LONGS(NUM_CTXT_ASIDS(info)),
-			    sizeof(*info->map), GFP_KERNEL);
-	if (!info->map)
-		return -ENOMEM;
-
-	raw_spin_lock_init(&info->lock);
-
-	return 0;
-}
-
 static int asids_init(void)
 {
 	u32 bits = get_cpu_asid_bits();
@@ -344,7 +115,7 @@ static int asids_init(void)
 	if (!asid_allocator_init(&asid_info, bits, ASID_PER_CONTEXT,
 				 asid_flush_cpu_ctxt))
 		panic("Unable to initialize ASID allocator for %lu ASIDs\n",
-		      1UL << bits);
+		      NUM_ASIDS(&asid_info));
 
 	asid_info.active = &active_asids;
 	asid_info.reserved = &reserved_asids;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
