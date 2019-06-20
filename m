Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D39704CE55
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 15:09:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=13oVKstfzJCKTD4ZChfy3RPobSC1WCDb7j5VS157YCM=; b=mMNjKRSu6GlhS8x4mOfTrbv1e+
	xiJ1gCpbVXTbt4yeLeuolBo+cZnGu9WGvH8kAEQJ53BZpl+Td6p+Hklvv4d8SD4sc52NvYiuSo2HP
	Qq6c7z0d3PT1DTt972GTysyRaieTGIDlAJFWpEJWJx2Gx//xH9zw3H3UlZ/HBbBfUmtKzfwvfgeeX
	6G3Nsih49t4TJjkek53TeaBQVHwUl5dEFoYsN3iVpBKjow7gsumZaSdHg4OqgD3vma6/vyVwYNqFz
	o74oP3vskyraJ+jGf627Ai6hkNJk/W29e3ztV0M5qH0ybZYkpNMYNLw1qVfmygd1uMHHIuOCNrOYk
	tBYXXUvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdwos-0007qw-A2; Thu, 20 Jun 2019 13:09:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdwlx-0005Nm-Aa
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 13:06:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 02CBFC0A;
 Thu, 20 Jun 2019 06:06:37 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A17143F718;
 Thu, 20 Jun 2019 06:06:35 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
Subject: [RFC v2 09/14] arm64/mm: Split the function check_and_switch_context
 in 3 parts
Date: Thu, 20 Jun 2019 14:06:03 +0100
Message-Id: <20190620130608.17230-10-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190620130608.17230-1-julien.grall@arm.com>
References: <20190620130608.17230-1-julien.grall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_060637_606163_9A84DBD8 
X-CRM114-Status: GOOD (  16.78  )
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

The function check_and_switch_context is used to:
    1) Check whether the ASID is still valid
    2) Generate a new one if it is not valid
    3) Switch the context

While the latter is specific to the MM subsystem, the rest could be part
of the generic ASID allocator.

After this patch, the function is now split in 3 parts which corresponds
to the use of the functions:
    1) asid_check_context: Check if the ASID is still valid
    2) asid_new_context: Generate a new ASID for the context
    3) check_and_switch_context: Call 1) and 2) and switch the context

1) and 2) have not been merged in a single function because we want to
avoid to add a branch in when the ASID is still valid. This will matter
when the code will be moved in separate file later on as 1) will reside
in the header as a static inline function.

Signed-off-by: Julien Grall <julien.grall@arm.com>

---

    Will wants to avoid to add a branch when the ASID is still valid. So
    1) and 2) are in separates function. The former will move to a new
    header and make static inline.
---
 arch/arm64/mm/context.c | 51 +++++++++++++++++++++++++++++++++++++------------
 1 file changed, 39 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index 81bc3d365436..fbef5a5c5624 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -204,16 +204,21 @@ static u64 new_context(struct asid_info *info, atomic64_t *pasid)
 	return idx2asid(info, asid) | generation;
 }
 
-void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
+static void asid_new_context(struct asid_info *info, atomic64_t *pasid,
+			     unsigned int cpu);
+
+/*
+ * Check the ASID is still valid for the context. If not generate a new ASID.
+ *
+ * @pasid: Pointer to the current ASID batch
+ * @cpu: current CPU ID. Must have been acquired throught get_cpu()
+ */
+static void asid_check_context(struct asid_info *info,
+			       atomic64_t *pasid, unsigned int cpu)
 {
-	unsigned long flags;
 	u64 asid, old_active_asid;
-	struct asid_info *info = &asid_info;
 
-	if (system_supports_cnp())
-		cpu_set_reserved_ttbr0();
-
-	asid = atomic64_read(&mm->context.id);
+	asid = atomic64_read(pasid);
 
 	/*
 	 * The memory ordering here is subtle.
@@ -234,14 +239,30 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 	    !((asid ^ atomic64_read(&info->generation)) >> info->bits) &&
 	    atomic64_cmpxchg_relaxed(&active_asid(info, cpu),
 				     old_active_asid, asid))
-		goto switch_mm_fastpath;
+		return;
+
+	asid_new_context(info, pasid, cpu);
+}
+
+/*
+ * Generate a new ASID for the context.
+ *
+ * @pasid: Pointer to the current ASID batch allocated. It will be updated
+ * with the new ASID batch.
+ * @cpu: current CPU ID. Must have been acquired through get_cpu()
+ */
+static void asid_new_context(struct asid_info *info, atomic64_t *pasid,
+			     unsigned int cpu)
+{
+	unsigned long flags;
+	u64 asid;
 
 	raw_spin_lock_irqsave(&info->lock, flags);
 	/* Check that our ASID belongs to the current generation. */
-	asid = atomic64_read(&mm->context.id);
+	asid = atomic64_read(pasid);
 	if ((asid ^ atomic64_read(&info->generation)) >> info->bits) {
-		asid = new_context(info, &mm->context.id);
-		atomic64_set(&mm->context.id, asid);
+		asid = new_context(info, pasid);
+		atomic64_set(pasid, asid);
 	}
 
 	if (cpumask_test_and_clear_cpu(cpu, &info->flush_pending))
@@ -249,8 +270,14 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 
 	atomic64_set(&active_asid(info, cpu), asid);
 	raw_spin_unlock_irqrestore(&info->lock, flags);
+}
+
+void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
+{
+	if (system_supports_cnp())
+		cpu_set_reserved_ttbr0();
 
-switch_mm_fastpath:
+	asid_check_context(&asid_info, &mm->context.id, cpu);
 
 	arm64_apply_bp_hardening();
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
