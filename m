Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A152D733E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 18:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DWmwp75n77INsMskcWTwIL3lpJFq+nD/ZPZCAGE/zlw=; b=SBYglBgCQFZB+ydX4Ac6wjZOhe
	Zw4ZZKaSQC52R9aEkNEBLGphkKqpLY02FD2/tlODoHHjTg86wy3YnLqOittawKk32hPrqIoH8e19+
	pW5vWUPFnDjcPV3MzD/3kUDmAN1XiFILE0kWOEdT0DgFL8mdskV/+8tMKg4ELdQ5DFG1Jf/SCJrFD
	Lnd/0XZa993XiP+j6Tn0lyEoD5B4Jees5JgvewDgEff78fUgm3D8A+rIeiYOqSjqbkknFbwwBHJNZ
	Hz6HcRyJ7IGnyQr82n7x/mBT1oXhd97lJoVBTHFRvbVONQ9oJVeVJKnxJjcfvkdxwR+6jIyHYLHi1
	k7f/gdAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqK8M-0002sf-LK; Wed, 24 Jul 2019 16:28:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqK5g-0000LK-Vn
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 16:26:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A72CB15A1;
 Wed, 24 Jul 2019 09:26:07 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 380CF3F71F;
 Wed, 24 Jul 2019 09:26:06 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
Subject: [PATCH v3 13/15] arm/kvm: Introduce a new VMID allocator
Date: Wed, 24 Jul 2019 17:25:32 +0100
Message-Id: <20190724162534.7390-14-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190724162534.7390-1-julien.grall@arm.com>
References: <20190724162534.7390-1-julien.grall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_092609_200930_2EA86F3D 
X-CRM114-Status: GOOD (  17.28  )
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
Cc: suzuki.poulose@arm.com, marc.zyngier@arm.com, catalin.marinas@arm.com,
 julien.thierry@arm.com, will.deacon@arm.com,
 Russell King <linux@armlinux.org.uk>, Julien Grall <julien.grall@arm.com>,
 james.morse@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A follow-up patch will replace the KVM VMID allocator with the arm64 ASID
allocator.

To avoid as much as possible duplication, the arm KVM code will directly
compile arch/arm64/lib/asid.c. The header is a verbatim to copy to
avoid breaking the assumption that architecture port has self-containers
headers.

Signed-off-by: Julien Grall <julien.grall@arm.com>
Cc: Russell King <linux@armlinux.org.uk>

---
    I hit a warning when compiling the ASID code:

linux/arch/arm/kvm/../../arm64/lib/asid.c:17: warning: "ASID_MASK" redefined
 #define ASID_MASK(info)   (~GENMASK((info)->bits - 1, 0))

In file included from linux/include/linux/mm_types.h:18,
                 from linux/include/linux/mmzone.h:21,
                 from linux/include/linux/gfp.h:6,
                 from linux/include/linux/slab.h:15,
                 from linux/arch/arm/kvm/../../arm64/lib/asid.c:11:
linux/arch/arm/include/asm/mmu.h:26: note: this is the location of the previous definition
 #define ASID_MASK ((~0ULL) << ASID_BITS)

I haven't yet resolved because I am not sure of the best way to go.
AFAICT ASID_MASK is only used in mm/context.c. So I am wondering whether
it would be acceptable to move the define.

    Changes in v3:
        - Resync arm32 with the arm64 header

    Changes in v2:
        - Re-use arm64/lib/asid.c rather than duplication the code.
---
 arch/arm/include/asm/lib_asid.h | 79 +++++++++++++++++++++++++++++++++++++++++
 arch/arm/kvm/Makefile           |  1 +
 2 files changed, 80 insertions(+)
 create mode 100644 arch/arm/include/asm/lib_asid.h

diff --git a/arch/arm/include/asm/lib_asid.h b/arch/arm/include/asm/lib_asid.h
new file mode 100644
index 000000000000..e3233d37f5db
--- /dev/null
+++ b/arch/arm/include/asm/lib_asid.h
@@ -0,0 +1,79 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ARM_LIB_ASID_H__
+#define __ARM_LIB_ASID_H__
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
+void asid_allocator_free(struct asid_info *info);
+
+#endif /* __ARM_LIB_ASID_H__ */
diff --git a/arch/arm/kvm/Makefile b/arch/arm/kvm/Makefile
index 531e59f5be9c..6ab49bd84531 100644
--- a/arch/arm/kvm/Makefile
+++ b/arch/arm/kvm/Makefile
@@ -40,3 +40,4 @@ obj-y += $(KVM)/arm/vgic/vgic-its.o
 obj-y += $(KVM)/arm/vgic/vgic-debug.o
 obj-y += $(KVM)/irqchip.o
 obj-y += $(KVM)/arm/arch_timer.o
+obj-y += ../../arm64/lib/asid.o
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
