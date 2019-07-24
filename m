Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0546733DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 18:27:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wxLM6alY9/9NLDm0kXPr4iktr52SzO9OxM3z91jmKUw=; b=hlR6MQNTos1jZrzBIPVgE8X2Jb
	XeHQuPYsfFdc0sN2XQgXMxYIZy2r3gUJYs/FZFfRwYZkv0O+YyuM/9mVcyDBaYgZfutOX8NThqS5Z
	u3A/jRBQt6g6QzFbhDw8qnqt9zZenAtUpFE+B9JTjgvD/l6O4f5qA89kp9Qnyx9c8EMmeYLc4eGPc
	4nuYTDQTZBm9nJ90OxW7fDdBDduhpy7QYHhb65Jt9CPvkVnG8CGf7iShAlSkqVGoLyrHv3tdGm7TJ
	6okp4AMl0XFNrpE+1w7oSUovlQbGcPNFWp90fj07F76rqlR/JE3hZGZXI7gY3JZXr5VlDfSTgAKzT
	nRN0fe7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqK6r-0001AP-7r; Wed, 24 Jul 2019 16:27:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqK5S-000065-3U
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 16:25:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 691CE28;
 Wed, 24 Jul 2019 09:25:53 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 156643F71F;
 Wed, 24 Jul 2019 09:25:51 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
Subject: [PATCH v3 04/15] arm64/mm: Move the variable lock and
 tlb_flush_pending to asid_info
Date: Wed, 24 Jul 2019 17:25:23 +0100
Message-Id: <20190724162534.7390-5-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190724162534.7390-1-julien.grall@arm.com>
References: <20190724162534.7390-1-julien.grall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_092554_306694_4801A9C4 
X-CRM114-Status: GOOD (  12.70  )
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
 Julien Grall <julien.grall@arm.com>, james.morse@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The variables lock and tlb_flush_pending holds information for a given
ASID allocator. So move them to the asid_info structure.

Signed-off-by: Julien Grall <julien.grall@arm.com>
---
 arch/arm64/mm/context.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index 49fff350e12f..b50f52a09baf 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -16,8 +16,6 @@
 #include <asm/smp.h>
 #include <asm/tlbflush.h>
 
-static DEFINE_RAW_SPINLOCK(cpu_asid_lock);
-
 static struct asid_info
 {
 	atomic64_t	generation;
@@ -25,6 +23,9 @@ static struct asid_info
 	atomic64_t __percpu	*active;
 	u64 __percpu		*reserved;
 	u32			bits;
+	raw_spinlock_t		lock;
+	/* Which CPU requires context flush on next call */
+	cpumask_t		flush_pending;
 } asid_info;
 
 #define active_asid(info, cpu)	*per_cpu_ptr((info)->active, cpu)
@@ -33,8 +34,6 @@ static struct asid_info
 static DEFINE_PER_CPU(atomic64_t, active_asids);
 static DEFINE_PER_CPU(u64, reserved_asids);
 
-static cpumask_t tlb_flush_pending;
-
 #define ASID_MASK(info)			(~GENMASK((info)->bits - 1, 0))
 #define ASID_FIRST_VERSION(info)	(1UL << ((info)->bits))
 
@@ -113,7 +112,7 @@ static void flush_context(struct asid_info *info)
 	 * Queue a TLB invalidation for each CPU to perform on next
 	 * context-switch
 	 */
-	cpumask_setall(&tlb_flush_pending);
+	cpumask_setall(&info->flush_pending);
 }
 
 static bool check_update_reserved_asid(struct asid_info *info, u64 asid,
@@ -222,7 +221,7 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 				     old_active_asid, asid))
 		goto switch_mm_fastpath;
 
-	raw_spin_lock_irqsave(&cpu_asid_lock, flags);
+	raw_spin_lock_irqsave(&info->lock, flags);
 	/* Check that our ASID belongs to the current generation. */
 	asid = atomic64_read(&mm->context.id);
 	if ((asid ^ atomic64_read(&info->generation)) >> info->bits) {
@@ -230,11 +229,11 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 		atomic64_set(&mm->context.id, asid);
 	}
 
-	if (cpumask_test_and_clear_cpu(cpu, &tlb_flush_pending))
+	if (cpumask_test_and_clear_cpu(cpu, &info->flush_pending))
 		local_flush_tlb_all();
 
 	atomic64_set(&active_asid(info, cpu), asid);
-	raw_spin_unlock_irqrestore(&cpu_asid_lock, flags);
+	raw_spin_unlock_irqrestore(&info->lock, flags);
 
 switch_mm_fastpath:
 
@@ -277,6 +276,8 @@ static int asids_init(void)
 	info->active = &active_asids;
 	info->reserved = &reserved_asids;
 
+	raw_spin_lock_init(&info->lock);
+
 	pr_info("ASID allocator initialised with %lu entries\n",
 		NUM_USER_ASIDS(info));
 	return 0;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
