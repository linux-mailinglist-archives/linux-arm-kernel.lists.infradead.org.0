Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7088733DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 18:27:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6PkfJf9JfZtSIymzygE4Wa/G45+jNnhTsa5q6kXj414=; b=UQ/uJ0Cn5iqi7WtJEuLIKGzRf3
	QjJ3odMMkTchWV7e83AvWBYqaMO7WJcqD/9I6K5TKRXtU7anbWWoy0AlQJAT5da/Cbxd8VlT0L7vm
	8TuqNh1+Fsx2ocKadvTomcthj6h1YtZSQTI6YM1zh+GYMPDh9d0M501XOu0QLlLjcvdDxhqYg+NU9
	ngN2ruvMs0BSnSUrGnaEkj+srvlqPetA/oMw/yVej8Xp70vxkGrScN2gsvhkhEbzD0yHS4yNtXxtU
	6QjnmAIQTGUslRg5i2Mglu2EhlafkV4K+KQ8PbMdPoVfW7LA9G3SI33ZQNpFKhUXAaaLtwU3hNOoh
	wE1Ci58g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqK7J-0001eq-6O; Wed, 24 Jul 2019 16:27:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqK5V-000065-1R
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 16:25:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8580A28;
 Wed, 24 Jul 2019 09:25:56 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3197B3F71F;
 Wed, 24 Jul 2019 09:25:55 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
Subject: [PATCH v3 06/15] arm64/mm: Store the number of asid allocated per
 context
Date: Wed, 24 Jul 2019 17:25:25 +0100
Message-Id: <20190724162534.7390-7-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190724162534.7390-1-julien.grall@arm.com>
References: <20190724162534.7390-1-julien.grall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_092557_289956_F952BA13 
X-CRM114-Status: GOOD (  14.25  )
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

Currently the number of ASID allocated per context is determined at
compilation time. As the algorithm is becoming generic, the user may
want to instantiate the ASID allocator multiple time with different
number of ASID allocated.

Add a field in asid_info to track the number ASID allocated per context.
This is stored in term of shift amount to avoid division in the code.

This means the number of ASID allocated per context should be a power of
two.

At the same time rename NUM_USERS_ASIDS to NUM_CTXT_ASIDS to make the
name more generic.

Signed-off-by: Julien Grall <julien.grall@arm.com>
---
 arch/arm64/mm/context.c | 31 +++++++++++++++++--------------
 1 file changed, 17 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index dfb0da35a541..2e1e495cd1d8 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -26,6 +26,8 @@ static struct asid_info
 	raw_spinlock_t		lock;
 	/* Which CPU requires context flush on next call */
 	cpumask_t		flush_pending;
+	/* Number of ASID allocated by context (shift value) */
+	unsigned int		ctxt_shift;
 } asid_info;
 
 #define active_asid(info, cpu)	*per_cpu_ptr((info)->active, cpu)
@@ -38,15 +40,15 @@ static DEFINE_PER_CPU(u64, reserved_asids);
 #define ASID_FIRST_VERSION(info)	(1UL << ((info)->bits))
 
 #ifdef CONFIG_UNMAP_KERNEL_AT_EL0
-#define NUM_USER_ASIDS(info)		(ASID_FIRST_VERSION(info) >> 1)
-#define asid2idx(info, asid)		(((asid) & ~ASID_MASK(info)) >> 1)
-#define idx2asid(info, idx)		(((idx) << 1) & ~ASID_MASK(info))
+#define ASID_PER_CONTEXT		2
 #else
-#define NUM_USER_ASIDS(info)		(ASID_FIRST_VERSION(info))
-#define asid2idx(info, asid)		((asid) & ~ASID_MASK(info))
-#define idx2asid(info, idx)		asid2idx(info, idx)
+#define ASID_PER_CONTEXT		1
 #endif
 
+#define NUM_CTXT_ASIDS(info)		(ASID_FIRST_VERSION(info) >> (info)->ctxt_shift)
+#define asid2idx(info, asid)		(((asid) & ~ASID_MASK(info)) >> (info)->ctxt_shift)
+#define idx2asid(info, idx)		(((idx) << (info)->ctxt_shift) & ~ASID_MASK(info))
+
 /* Get the ASIDBits supported by the current CPU */
 static u32 get_cpu_asid_bits(void)
 {
@@ -91,7 +93,7 @@ static void flush_context(struct asid_info *info)
 	u64 asid;
 
 	/* Update the list of reserved ASIDs and the ASID bitmap. */
-	bitmap_clear(info->map, 0, NUM_USER_ASIDS(info));
+	bitmap_clear(info->map, 0, NUM_CTXT_ASIDS(info));
 
 	for_each_possible_cpu(i) {
 		asid = atomic64_xchg_relaxed(&active_asid(info, i), 0);
@@ -171,8 +173,8 @@ static u64 new_context(struct asid_info *info, atomic64_t *pasid)
 	 * a reserved TTBR0 for the init_mm and we allocate ASIDs in even/odd
 	 * pairs.
 	 */
-	asid = find_next_zero_bit(info->map, NUM_USER_ASIDS(info), cur_idx);
-	if (asid != NUM_USER_ASIDS(info))
+	asid = find_next_zero_bit(info->map, NUM_CTXT_ASIDS(info), cur_idx);
+	if (asid != NUM_CTXT_ASIDS(info))
 		goto set_asid;
 
 	/* We're out of ASIDs, so increment the global generation count */
@@ -181,7 +183,7 @@ static u64 new_context(struct asid_info *info, atomic64_t *pasid)
 	flush_context(info);
 
 	/* We have more ASIDs than CPUs, so this will always succeed */
-	asid = find_next_zero_bit(info->map, NUM_USER_ASIDS(info), 1);
+	asid = find_next_zero_bit(info->map, NUM_CTXT_ASIDS(info), 1);
 
 set_asid:
 	__set_bit(asid, info->map);
@@ -261,17 +263,18 @@ static int asids_init(void)
 	struct asid_info *info = &asid_info;
 
 	info->bits = get_cpu_asid_bits();
+	info->ctxt_shift = ilog2(ASID_PER_CONTEXT);
 	/*
 	 * Expect allocation after rollover to fail if we don't have at least
 	 * one more ASID than CPUs. ASID #0 is reserved for init_mm.
 	 */
-	WARN_ON(NUM_USER_ASIDS(info) - 1 <= num_possible_cpus());
+	WARN_ON(NUM_CTXT_ASIDS(info) - 1 <= num_possible_cpus());
 	atomic64_set(&info->generation, ASID_FIRST_VERSION(info));
-	info->map = kcalloc(BITS_TO_LONGS(NUM_USER_ASIDS(info)),
+	info->map = kcalloc(BITS_TO_LONGS(NUM_CTXT_ASIDS(info)),
 			    sizeof(*info->map), GFP_KERNEL);
 	if (!info->map)
 		panic("Failed to allocate bitmap for %lu ASIDs\n",
-		      NUM_USER_ASIDS(info));
+		      NUM_CTXT_ASIDS(info));
 
 	info->active = &active_asids;
 	info->reserved = &reserved_asids;
@@ -279,7 +282,7 @@ static int asids_init(void)
 	raw_spin_lock_init(&info->lock);
 
 	pr_info("ASID allocator initialised with %lu entries\n",
-		NUM_USER_ASIDS(info));
+		NUM_CTXT_ASIDS(info));
 	return 0;
 }
 early_initcall(asids_init);
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
