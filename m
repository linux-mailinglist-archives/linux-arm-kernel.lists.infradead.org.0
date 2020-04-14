Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 200281A86F3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:07:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4o8po/q+gAykQ/G3EXcLPbGC8qxY4XTqj0djKW1lMGA=; b=pVlLwN/WQHbbTo
	hUFgn9QDRrVPbvBIPC1BQmSzWy2oniteIRH0RDfJx1KnTbEo9qYpyZoOIX42Ry/4uGHhuCIQw582S
	yis+Mu1eR9m/RBuf2lREFwh5j5JLFqyhlP6kD13hsMmnsoZQKYUeeAlowrSOjfRxhMw1/kja0SPp8
	cJK0GrZfnrHLKTYNNhgCW2s5ZyQrIEfuwKmU+B3qcPDUSCcR+gMRjH/XEP7Q2HT/kFbT2V9aQt9lH
	xsd3+yWeWSMUR5na/mW48bYdT7ZfqMCAdVzJFEDDLvyqdn+MWn3bh1kkqpHV8luQVb55d9HqiEups
	CG9r/nCNKGc122oqQe0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOP1j-0006zO-3E; Tue, 14 Apr 2020 17:07:11 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOz8-00027a-AB
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:04:34 +0000
Received: by mail-wm1-x342.google.com with SMTP id g12so7074903wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 10:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XVnU/a+9kiTjgyJABvxlIUtTDbUHnlU3sn0za3P4+KE=;
 b=y4TOb2qtjvNBIJUd8KcyU9EEjwdkr9J7mvW9hXz+F0XZmim7g+pYOYHb96aca0KdFW
 44QBmP2GffC25/NpySyArRaBAu8Bm/U2oJuskkWo8CgAuMVAZdjlvl6r+uD0J6tcAvtL
 eRaMGRFt8DcaMTdXaNJAjwYOGdyr/DYezCc6h2lFUzpgk1eFvFidug0Wv9kYpv7ChbAk
 QNNItq4KMpflBIeWZFmjzcnZuCaGHqFrlwabWOpw1rbG1zJgqUY0ZNLJ3qukiinWagkN
 zp+DyNqQkMFa3040PRUNdXz1LMkoaOtNfD4+3oaBBc44OS2FQFt4kOdYrqzVRyGKxRsl
 9dJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XVnU/a+9kiTjgyJABvxlIUtTDbUHnlU3sn0za3P4+KE=;
 b=kXrBjhij0810GvMcwWGx0Oi9UHXK74XwRPNoQ7eLX07FolL8zSL0nPLLIqKSOFQk29
 8a5KD/t8dvrVDFKaIHR5FvyQ5SnQ5ZlmsEBJMcGJhq5QsXRbJPuei8Sfj/GhU1pw01Z0
 JRiQSTiB2wqhrP0c4f/8Tyz4BDrteWDMrMDd2S2Pq3rx2vC3IogEHC92QONzwh76XSXP
 DYNFadmhj7Xn7vE3Lkd7dLKq3ayBtrE5BQ9Mr8DUGMwomgbWgSxqBCP1izoWCbp6WhxQ
 kz9AML8TQSG9eSGwZKaYbhRWbk09PypVbwR9OwRRDkqXinbPB2rgQt+arbzJPT5aiTGa
 sAdg==
X-Gm-Message-State: AGi0Pua5LocYDdk/V2i9CBdPSsHvb15kvB1rrmXgjsx0g0rtX5rYxZCC
 qcYVP+SEwlSCKYkvM/BG261u0g==
X-Google-Smtp-Source: APiQypJXgDOnDjgeo1jUjf+ryj+C67fPxPR/45K6mtX7NMuGtOOFfjEt1SlUseEiGGPQRxoI9Aaa5w==
X-Received: by 2002:a1c:4603:: with SMTP id t3mr763909wma.103.1586883868805;
 Tue, 14 Apr 2020 10:04:28 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id x18sm19549147wrs.11.2020.04.14.10.04.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 10:04:27 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v5 08/25] arm64: mm: Pin down ASIDs for sharing mm with devices
Date: Tue, 14 Apr 2020 19:02:36 +0200
Message-Id: <20200414170252.714402-9-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200414170252.714402-1-jean-philippe@linaro.org>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_100430_440002_D8A7D795 
X-CRM114-Status: GOOD (  25.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, catalin.marinas@arm.com, joro@8bytes.org,
 robin.murphy@arm.com, jgg@ziepe.ca, Jonathan.Cameron@huawei.com,
 zhangfei.gao@linaro.org, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To enable address space sharing with the IOMMU, introduce mm_context_get()
and mm_context_put(), that pin down a context and ensure that it will keep
its ASID after a rollover. Export the symbols to let the modular SMMUv3
driver use them.

Pinning is necessary because a device constantly needs a valid ASID,
unlike tasks that only require one when running. Without pinning, we would
need to notify the IOMMU when we're about to use a new ASID for a task,
and it would get complicated when a new task is assigned a shared ASID.
Consider the following scenario with no ASID pinned:

1. Task t1 is running on CPUx with shared ASID (gen=1, asid=1)
2. Task t2 is scheduled on CPUx, gets ASID (1, 2)
3. Task tn is scheduled on CPUy, a rollover occurs, tn gets ASID (2, 1)
   We would now have to immediately generate a new ASID for t1, notify
   the IOMMU, and finally enable task tn. We are holding the lock during
   all that time, since we can't afford having another CPU trigger a
   rollover. The IOMMU issues invalidation commands that can take tens of
   milliseconds.

It gets needlessly complicated. All we wanted to do was schedule task tn,
that has no business with the IOMMU. By letting the IOMMU pin tasks when
needed, we avoid stalling the slow path, and let the pinning fail when
we're out of shareable ASIDs.

After a rollover, the allocator expects at least one ASID to be available
in addition to the reserved ones (one per CPU). So (NR_ASIDS - NR_CPUS -
1) is the maximum number of ASIDs that can be shared with the IOMMU.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
v4->v5: extract helper macro
---
 arch/arm64/include/asm/mmu.h         |  1 +
 arch/arm64/include/asm/mmu_context.h | 11 +++-
 arch/arm64/mm/context.c              | 95 +++++++++++++++++++++++++++-
 3 files changed, 104 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
index 68140fdd89d6b..bbdd291e31d59 100644
--- a/arch/arm64/include/asm/mmu.h
+++ b/arch/arm64/include/asm/mmu.h
@@ -19,6 +19,7 @@
 
 typedef struct {
 	atomic64_t	id;
+	unsigned long	pinned;
 	void		*vdso;
 	unsigned long	flags;
 } mm_context_t;
diff --git a/arch/arm64/include/asm/mmu_context.h b/arch/arm64/include/asm/mmu_context.h
index ab46187c63001..69599a64945b0 100644
--- a/arch/arm64/include/asm/mmu_context.h
+++ b/arch/arm64/include/asm/mmu_context.h
@@ -177,7 +177,13 @@ static inline void cpu_replace_ttbr1(pgd_t *pgdp)
 #define destroy_context(mm)		do { } while(0)
 void check_and_switch_context(struct mm_struct *mm, unsigned int cpu);
 
-#define init_new_context(tsk,mm)	({ atomic64_set(&(mm)->context.id, 0); 0; })
+static inline int
+init_new_context(struct task_struct *tsk, struct mm_struct *mm)
+{
+	atomic64_set(&mm->context.id, 0);
+	mm->context.pinned = 0;
+	return 0;
+}
 
 #ifdef CONFIG_ARM64_SW_TTBR0_PAN
 static inline void update_saved_ttbr0(struct task_struct *tsk,
@@ -250,6 +256,9 @@ switch_mm(struct mm_struct *prev, struct mm_struct *next,
 void verify_cpu_asid_bits(void);
 void post_ttbr_update_workaround(void);
 
+unsigned long mm_context_get(struct mm_struct *mm);
+void mm_context_put(struct mm_struct *mm);
+
 #endif /* !__ASSEMBLY__ */
 
 #endif /* !__ASM_MMU_CONTEXT_H */
diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index d702d60e64dab..d0ddd413f5645 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -27,6 +27,10 @@ static DEFINE_PER_CPU(atomic64_t, active_asids);
 static DEFINE_PER_CPU(u64, reserved_asids);
 static cpumask_t tlb_flush_pending;
 
+static unsigned long max_pinned_asids;
+static unsigned long nr_pinned_asids;
+static unsigned long *pinned_asid_map;
+
 #define ASID_MASK		(~GENMASK(asid_bits - 1, 0))
 #define ASID_FIRST_VERSION	(1UL << asid_bits)
 
@@ -74,6 +78,9 @@ void verify_cpu_asid_bits(void)
 
 static void set_kpti_asid_bits(void)
 {
+	unsigned int k;
+	u8 *dst = (u8 *)asid_map;
+	u8 *src = (u8 *)pinned_asid_map;
 	unsigned int len = BITS_TO_LONGS(NUM_USER_ASIDS) * sizeof(unsigned long);
 	/*
 	 * In case of KPTI kernel/user ASIDs are allocated in
@@ -81,7 +88,8 @@ static void set_kpti_asid_bits(void)
 	 * is set, then the ASID will map only userspace. Thus
 	 * mark even as reserved for kernel.
 	 */
-	memset(asid_map, 0xaa, len);
+	for (k = 0; k < len; k++)
+		dst[k] = src[k] | 0xaa;
 }
 
 static void set_reserved_asid_bits(void)
@@ -89,7 +97,7 @@ static void set_reserved_asid_bits(void)
 	if (arm64_kernel_unmapped_at_el0())
 		set_kpti_asid_bits();
 	else
-		bitmap_clear(asid_map, 0, NUM_USER_ASIDS);
+		bitmap_copy(asid_map, pinned_asid_map, NUM_USER_ASIDS);
 }
 
 #define asid_gen_match(asid) \
@@ -165,6 +173,14 @@ static u64 new_context(struct mm_struct *mm)
 		if (check_update_reserved_asid(asid, newasid))
 			return newasid;
 
+		/*
+		 * If it is pinned, we can keep using it. Note that reserved
+		 * takes priority, because even if it is also pinned, we need to
+		 * update the generation into the reserved_asids.
+		 */
+		if (mm->context.pinned)
+			return newasid;
+
 		/*
 		 * We had a valid ASID in a previous life, so try to re-use
 		 * it if possible.
@@ -254,6 +270,68 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 		cpu_switch_mm(mm->pgd, mm);
 }
 
+unsigned long mm_context_get(struct mm_struct *mm)
+{
+	unsigned long flags;
+	u64 asid;
+
+	raw_spin_lock_irqsave(&cpu_asid_lock, flags);
+
+	asid = atomic64_read(&mm->context.id);
+
+	if (mm->context.pinned) {
+		mm->context.pinned++;
+		asid &= ~ASID_MASK;
+		goto out_unlock;
+	}
+
+	if (nr_pinned_asids >= max_pinned_asids) {
+		asid = 0;
+		goto out_unlock;
+	}
+
+	if (!asid_gen_match(asid)) {
+		/*
+		 * We went through one or more rollover since that ASID was
+		 * used. Ensure that it is still valid, or generate a new one.
+		 */
+		asid = new_context(mm);
+		atomic64_set(&mm->context.id, asid);
+	}
+
+	asid &= ~ASID_MASK;
+
+	nr_pinned_asids++;
+	__set_bit(asid2idx(asid), pinned_asid_map);
+	mm->context.pinned++;
+
+out_unlock:
+	raw_spin_unlock_irqrestore(&cpu_asid_lock, flags);
+
+	/* Set the equivalent of USER_ASID_BIT */
+	if (asid && IS_ENABLED(CONFIG_UNMAP_KERNEL_AT_EL0))
+		asid |= 1;
+
+	return asid;
+}
+EXPORT_SYMBOL_GPL(mm_context_get);
+
+void mm_context_put(struct mm_struct *mm)
+{
+	unsigned long flags;
+	u64 asid = atomic64_read(&mm->context.id) & ~ASID_MASK;
+
+	raw_spin_lock_irqsave(&cpu_asid_lock, flags);
+
+	if (--mm->context.pinned == 0) {
+		__clear_bit(asid2idx(asid), pinned_asid_map);
+		nr_pinned_asids--;
+	}
+
+	raw_spin_unlock_irqrestore(&cpu_asid_lock, flags);
+}
+EXPORT_SYMBOL_GPL(mm_context_put);
+
 /* Errata workaround post TTBRx_EL1 update. */
 asmlinkage void post_ttbr_update_workaround(void)
 {
@@ -303,6 +381,13 @@ static int asids_update_limit(void)
 	WARN_ON(num_available_asids - 1 <= num_possible_cpus());
 	pr_info("ASID allocator initialised with %lu entries\n",
 		num_available_asids);
+
+	/*
+	 * We assume that an ASID is always available after a rollover. This
+	 * means that even if all CPUs have a reserved ASID, there still is at
+	 * least one slot available in the asid map.
+	 */
+	max_pinned_asids = num_available_asids - num_possible_cpus() - 2;
 	return 0;
 }
 arch_initcall(asids_update_limit);
@@ -317,6 +402,12 @@ static int asids_init(void)
 		panic("Failed to allocate bitmap for %lu ASIDs\n",
 		      NUM_USER_ASIDS);
 
+	pinned_asid_map = kcalloc(BITS_TO_LONGS(NUM_USER_ASIDS),
+				  sizeof(*pinned_asid_map), GFP_KERNEL);
+	if (!pinned_asid_map)
+		panic("Failed to allocate pinned ASID bitmap\n");
+	nr_pinned_asids = 0;
+
 	/*
 	 * We cannot call set_reserved_asid_bits() here because CPU
 	 * caps are not finalized yet, so it is safer to assume KPTI
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
