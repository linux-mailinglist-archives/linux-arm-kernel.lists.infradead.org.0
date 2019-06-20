Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1BF4CE46
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 15:07:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=M7nIQ3cCB6UZmzgungvV8iuxy5249hmhuP3asLcV1J0=; b=k64ZK9NgJudUm9o4X3cOwLnz0N
	UKtWYyGGOLVKGTUty9TotfehqJQcVRqFlO+DIuEe/nbu+7jQKqUgCEuXzLCMemMcCmUYob4kcS66j
	nFKj/NYwnS8zrXc0TGdE7ogj6mJ8NSL/xSbnjULmnlnx/GMr/5tQ5eyITILvesagEsuCdLih7UKod
	JqFGRg6UvKsTB1zhyjJmw6kLHQB0TK/tXacQZfUJa9xmRMZgqxZQqKvIvqi1BmCgjX6H7OmRfMR0/
	fRMN+YifS+9rUpgEVQjzW/PZcL6RTqE3qDnhlB6aolht3zToqSR7+axUQT+1/KxY2wZB4JqT6WW0R
	cANW/NkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdwmN-0005VI-KH; Thu, 20 Jun 2019 13:07:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdwlm-0005Ed-T9
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 13:06:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 80349C0A;
 Thu, 20 Jun 2019 06:06:24 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2BA713F718;
 Thu, 20 Jun 2019 06:06:23 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
Subject: [RFC v2 01/14] arm64/mm: Introduce asid_info structure and move
 asid_generation/asid_map to it
Date: Thu, 20 Jun 2019 14:05:55 +0100
Message-Id: <20190620130608.17230-2-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190620130608.17230-1-julien.grall@arm.com>
References: <20190620130608.17230-1-julien.grall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_060627_037064_0DB20A37 
X-CRM114-Status: GOOD (  15.56  )
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

In an attempt to make the ASID allocator generic, create a new structure
asid_info to store all the information necessary for the allocator.

For now, move the variables asid_generation and asid_map to the new structure
asid_info. Follow-up patches will move more variables.

Note to avoid more renaming aftwards, a local variable 'info' has been
created and is a pointer to the ASID allocator structure.

Signed-off-by: Julien Grall <julien.grall@arm.com>

---
    Changes in v2:
        - Add turn asid_info to a static variable
---
 arch/arm64/mm/context.c | 46 ++++++++++++++++++++++++++--------------------
 1 file changed, 26 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index 1f0ea2facf24..8167c369172d 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -30,8 +30,11 @@
 static u32 asid_bits;
 static DEFINE_RAW_SPINLOCK(cpu_asid_lock);
 
-static atomic64_t asid_generation;
-static unsigned long *asid_map;
+static struct asid_info
+{
+	atomic64_t	generation;
+	unsigned long	*map;
+} asid_info;
 
 static DEFINE_PER_CPU(atomic64_t, active_asids);
 static DEFINE_PER_CPU(u64, reserved_asids);
@@ -88,13 +91,13 @@ void verify_cpu_asid_bits(void)
 	}
 }
 
-static void flush_context(void)
+static void flush_context(struct asid_info *info)
 {
 	int i;
 	u64 asid;
 
 	/* Update the list of reserved ASIDs and the ASID bitmap. */
-	bitmap_clear(asid_map, 0, NUM_USER_ASIDS);
+	bitmap_clear(info->map, 0, NUM_USER_ASIDS);
 
 	for_each_possible_cpu(i) {
 		asid = atomic64_xchg_relaxed(&per_cpu(active_asids, i), 0);
@@ -107,7 +110,7 @@ static void flush_context(void)
 		 */
 		if (asid == 0)
 			asid = per_cpu(reserved_asids, i);
-		__set_bit(asid2idx(asid), asid_map);
+		__set_bit(asid2idx(asid), info->map);
 		per_cpu(reserved_asids, i) = asid;
 	}
 
@@ -142,11 +145,11 @@ static bool check_update_reserved_asid(u64 asid, u64 newasid)
 	return hit;
 }
 
-static u64 new_context(struct mm_struct *mm)
+static u64 new_context(struct asid_info *info, struct mm_struct *mm)
 {
 	static u32 cur_idx = 1;
 	u64 asid = atomic64_read(&mm->context.id);
-	u64 generation = atomic64_read(&asid_generation);
+	u64 generation = atomic64_read(&info->generation);
 
 	if (asid != 0) {
 		u64 newasid = generation | (asid & ~ASID_MASK);
@@ -162,7 +165,7 @@ static u64 new_context(struct mm_struct *mm)
 		 * We had a valid ASID in a previous life, so try to re-use
 		 * it if possible.
 		 */
-		if (!__test_and_set_bit(asid2idx(asid), asid_map))
+		if (!__test_and_set_bit(asid2idx(asid), info->map))
 			return newasid;
 	}
 
@@ -173,20 +176,20 @@ static u64 new_context(struct mm_struct *mm)
 	 * a reserved TTBR0 for the init_mm and we allocate ASIDs in even/odd
 	 * pairs.
 	 */
-	asid = find_next_zero_bit(asid_map, NUM_USER_ASIDS, cur_idx);
+	asid = find_next_zero_bit(info->map, NUM_USER_ASIDS, cur_idx);
 	if (asid != NUM_USER_ASIDS)
 		goto set_asid;
 
 	/* We're out of ASIDs, so increment the global generation count */
 	generation = atomic64_add_return_relaxed(ASID_FIRST_VERSION,
-						 &asid_generation);
-	flush_context();
+						 &info->generation);
+	flush_context(info);
 
 	/* We have more ASIDs than CPUs, so this will always succeed */
-	asid = find_next_zero_bit(asid_map, NUM_USER_ASIDS, 1);
+	asid = find_next_zero_bit(info->map, NUM_USER_ASIDS, 1);
 
 set_asid:
-	__set_bit(asid, asid_map);
+	__set_bit(asid, info->map);
 	cur_idx = asid;
 	return idx2asid(asid) | generation;
 }
@@ -195,6 +198,7 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 {
 	unsigned long flags;
 	u64 asid, old_active_asid;
+	struct asid_info *info = &asid_info;
 
 	if (system_supports_cnp())
 		cpu_set_reserved_ttbr0();
@@ -217,7 +221,7 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 	 */
 	old_active_asid = atomic64_read(&per_cpu(active_asids, cpu));
 	if (old_active_asid &&
-	    !((asid ^ atomic64_read(&asid_generation)) >> asid_bits) &&
+	    !((asid ^ atomic64_read(&info->generation)) >> asid_bits) &&
 	    atomic64_cmpxchg_relaxed(&per_cpu(active_asids, cpu),
 				     old_active_asid, asid))
 		goto switch_mm_fastpath;
@@ -225,8 +229,8 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 	raw_spin_lock_irqsave(&cpu_asid_lock, flags);
 	/* Check that our ASID belongs to the current generation. */
 	asid = atomic64_read(&mm->context.id);
-	if ((asid ^ atomic64_read(&asid_generation)) >> asid_bits) {
-		asid = new_context(mm);
+	if ((asid ^ atomic64_read(&info->generation)) >> asid_bits) {
+		asid = new_context(info, mm);
 		atomic64_set(&mm->context.id, asid);
 	}
 
@@ -259,16 +263,18 @@ asmlinkage void post_ttbr_update_workaround(void)
 
 static int asids_init(void)
 {
+	struct asid_info *info = &asid_info;
+
 	asid_bits = get_cpu_asid_bits();
 	/*
 	 * Expect allocation after rollover to fail if we don't have at least
 	 * one more ASID than CPUs. ASID #0 is reserved for init_mm.
 	 */
 	WARN_ON(NUM_USER_ASIDS - 1 <= num_possible_cpus());
-	atomic64_set(&asid_generation, ASID_FIRST_VERSION);
-	asid_map = kcalloc(BITS_TO_LONGS(NUM_USER_ASIDS), sizeof(*asid_map),
-			   GFP_KERNEL);
-	if (!asid_map)
+	atomic64_set(&info->generation, ASID_FIRST_VERSION);
+	info->map = kcalloc(BITS_TO_LONGS(NUM_USER_ASIDS), sizeof(*info->map),
+			    GFP_KERNEL);
+	if (!info->map)
 		panic("Failed to allocate bitmap for %lu ASIDs\n",
 		      NUM_USER_ASIDS);
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
