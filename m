Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E324CE5B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 15:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dI1vv1zNCFTBvTK2du2mrrJ4JInILdZj87Bqq6gUnqw=; b=mhgfR76SBaZ0Zu2jQ75O9XYwMT
	/x5LN8mxercafgQjNnC7S+bBciiKeMcWgIcRhtv8IdqGUazvsEJ+vyhXH0Q7FhZNphkHfvVya7RJ2
	Gp5B8gCPb1PJx1/IE5IdM/tPb9/D/oClMCeFK/BxrZl1qdGB6b8HGbfsJQvm7lWXqWbf669jhjoIY
	egpm3mbVHYalWOiCXLANQXyduBD6MTq2QesluMj0x3dpyGK4igdrUEY36KkbG+xJ7a3p/cVWHgNgs
	uA/Idb6C/rrj4AuYGQg1cSCb0A0VuXgjs4/Omac+zizmdXR0ZUfAneUWMfVvqRHqS+MRHFjncBM6E
	pC277fdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdwpn-0001L2-Ip; Thu, 20 Jun 2019 13:10:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdwm2-0005T8-Fn
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 13:06:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C32D3360;
 Thu, 20 Jun 2019 06:06:41 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6ED513F718;
 Thu, 20 Jun 2019 06:06:40 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
Subject: [RFC v2 12/14] arm64/lib: asid: Allow user to update the context
 under the lock
Date: Thu, 20 Jun 2019 14:06:06 +0100
Message-Id: <20190620130608.17230-13-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190620130608.17230-1-julien.grall@arm.com>
References: <20190620130608.17230-1-julien.grall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_060642_684503_D8D1AA50 
X-CRM114-Status: GOOD (  15.91  )
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

Some users of the ASID allocator (e.g VMID) will require to update the
context when a new ASID is generated. This has to be protected by a lock
to prevent concurrent modification.

Rather than introducing yet another lock, it is possible to re-use the
allocator lock for that purpose. This patch introduces a new callback
that will be call when updating the context.

Signed-off-by: Julien Grall <julien.grall@arm.com>
---
 arch/arm64/include/asm/lib_asid.h | 12 ++++++++----
 arch/arm64/lib/asid.c             | 10 ++++++++--
 arch/arm64/mm/context.c           | 11 ++++++++---
 3 files changed, 24 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/include/asm/lib_asid.h b/arch/arm64/include/asm/lib_asid.h
index c18e9eca500e..810f0b05a8da 100644
--- a/arch/arm64/include/asm/lib_asid.h
+++ b/arch/arm64/include/asm/lib_asid.h
@@ -23,6 +23,8 @@ struct asid_info
 	unsigned int		ctxt_shift;
 	/* Callback to locally flush the context. */
 	void			(*flush_cpu_ctxt_cb)(void);
+	/* Callback to call when a context is updated */
+	void			(*update_ctxt_cb)(void *ctxt);
 };
 
 #define NUM_ASIDS(info)			(1UL << ((info)->bits))
@@ -31,7 +33,7 @@ struct asid_info
 #define active_asid(info, cpu)	*per_cpu_ptr((info)->active, cpu)
 
 void asid_new_context(struct asid_info *info, atomic64_t *pasid,
-		      unsigned int cpu);
+		      unsigned int cpu, void *ctxt);
 
 /*
  * Check the ASID is still valid for the context. If not generate a new ASID.
@@ -40,7 +42,8 @@ void asid_new_context(struct asid_info *info, atomic64_t *pasid,
  * @cpu: current CPU ID. Must have been acquired throught get_cpu()
  */
 static inline void asid_check_context(struct asid_info *info,
-				      atomic64_t *pasid, unsigned int cpu)
+				       atomic64_t *pasid, unsigned int cpu,
+				       void *ctxt)
 {
 	u64 asid, old_active_asid;
 
@@ -67,11 +70,12 @@ static inline void asid_check_context(struct asid_info *info,
 				     old_active_asid, asid))
 		return;
 
-	asid_new_context(info, pasid, cpu);
+	asid_new_context(info, pasid, cpu, ctxt);
 }
 
 int asid_allocator_init(struct asid_info *info,
 			u32 bits, unsigned int asid_per_ctxt,
-			void (*flush_cpu_ctxt_cb)(void));
+			void (*flush_cpu_ctxt_cb)(void),
+			void (*update_ctxt_cb)(void *ctxt));
 
 #endif
diff --git a/arch/arm64/lib/asid.c b/arch/arm64/lib/asid.c
index 7252e4fdd5e9..dd2c6e4c1ff0 100644
--- a/arch/arm64/lib/asid.c
+++ b/arch/arm64/lib/asid.c
@@ -130,9 +130,10 @@ static u64 new_context(struct asid_info *info, atomic64_t *pasid)
  * @pasid: Pointer to the current ASID batch allocated. It will be updated
  * with the new ASID batch.
  * @cpu: current CPU ID. Must have been acquired through get_cpu()
+ * @ctxt: Context to update when calling update_context
  */
 void asid_new_context(struct asid_info *info, atomic64_t *pasid,
-		      unsigned int cpu)
+		      unsigned int cpu, void *ctxt)
 {
 	unsigned long flags;
 	u64 asid;
@@ -149,6 +150,9 @@ void asid_new_context(struct asid_info *info, atomic64_t *pasid,
 		info->flush_cpu_ctxt_cb();
 
 	atomic64_set(&active_asid(info, cpu), asid);
+
+	info->update_ctxt_cb(ctxt);
+
 	raw_spin_unlock_irqrestore(&info->lock, flags);
 }
 
@@ -163,11 +167,13 @@ void asid_new_context(struct asid_info *info, atomic64_t *pasid,
  */
 int asid_allocator_init(struct asid_info *info,
 			u32 bits, unsigned int asid_per_ctxt,
-			void (*flush_cpu_ctxt_cb)(void))
+			void (*flush_cpu_ctxt_cb)(void),
+			void (*update_ctxt_cb)(void *ctxt))
 {
 	info->bits = bits;
 	info->ctxt_shift = ilog2(asid_per_ctxt);
 	info->flush_cpu_ctxt_cb = flush_cpu_ctxt_cb;
+	info->update_ctxt_cb = update_ctxt_cb;
 	/*
 	 * Expect allocation after rollover to fail if we don't have at least
 	 * one more ASID than CPUs. ASID #0 is always reserved.
diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index b745cf356fe1..527ea82983d7 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -82,7 +82,7 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 	if (system_supports_cnp())
 		cpu_set_reserved_ttbr0();
 
-	asid_check_context(&asid_info, &mm->context.id, cpu);
+	asid_check_context(&asid_info, &mm->context.id, cpu, mm);
 
 	arm64_apply_bp_hardening();
 
@@ -108,12 +108,17 @@ static void asid_flush_cpu_ctxt(void)
 	local_flush_tlb_all();
 }
 
+static void asid_update_ctxt(void *ctxt)
+{
+	/* Nothing to do */
+}
+
 static int asids_init(void)
 {
 	u32 bits = get_cpu_asid_bits();
 
-	if (!asid_allocator_init(&asid_info, bits, ASID_PER_CONTEXT,
-				 asid_flush_cpu_ctxt))
+	if (asid_allocator_init(&asid_info, bits, ASID_PER_CONTEXT,
+				asid_flush_cpu_ctxt, asid_update_ctxt))
 		panic("Unable to initialize ASID allocator for %lu ASIDs\n",
 		      NUM_ASIDS(&asid_info));
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
