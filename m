Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBAA3733D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 18:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hceRLSPcONP1LJKvCrafOTBcdxDMcwCq/51eDLFTsD4=; b=QXjhwHpOT3BdUlJqHOlfVxnLVx
	Y560ZPw/kAkBucFzLcp6IX437mQWVe5kH/uXd4kb5+O5v0pWd3M81SlNZYQNM1al8ADCzVjamxH3N
	AC1xP6nfegR1JygYzH9+RoPp/mVu4qZB8rfMNsMc0sVSHVMHZxuc+NmAGx+TKm5wF883sw39bEkj4
	pfhTMXw6OA69vvE07Zqxtv6sfMN2GBbL83yfK2BzyVRWUUHdGjzCHLjRXNfBEf6VYNggkX4Q7OwUc
	I9WbLiNqSB64esDXFgYewhX9HwUcVa2quWDSwYy9NzFPxrusBAxnSo13kCI2aIBZG82+XotfmR1QI
	imZZ50WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqK6J-0000h9-Ko; Wed, 24 Jul 2019 16:26:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqK5O-0008W6-Nt
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 16:25:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4C9DD15A1;
 Wed, 24 Jul 2019 09:25:50 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ED53B3F71F;
 Wed, 24 Jul 2019 09:25:48 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
Subject: [PATCH v3 02/15] arm64/mm: Move active_asids and reserved_asids to
 asid_info
Date: Wed, 24 Jul 2019 17:25:21 +0100
Message-Id: <20190724162534.7390-3-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190724162534.7390-1-julien.grall@arm.com>
References: <20190724162534.7390-1-julien.grall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_092550_862810_D6D3732A 
X-CRM114-Status: GOOD (  15.37  )
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

The variables active_asids and reserved_asids hold information for a
given ASID allocator. So move them to the structure asid_info.

At the same time, introduce wrappers to access the active and reserved
ASIDs to make the code clearer.

Signed-off-by: Julien Grall <julien.grall@arm.com>
---
 arch/arm64/mm/context.c | 34 ++++++++++++++++++++++------------
 1 file changed, 22 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index b0789f30d03b..3de028803284 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -23,10 +23,16 @@ static struct asid_info
 {
 	atomic64_t	generation;
 	unsigned long	*map;
+	atomic64_t __percpu	*active;
+	u64 __percpu		*reserved;
 } asid_info;
 
+#define active_asid(info, cpu)	*per_cpu_ptr((info)->active, cpu)
+#define reserved_asid(info, cpu) *per_cpu_ptr((info)->reserved, cpu)
+
 static DEFINE_PER_CPU(atomic64_t, active_asids);
 static DEFINE_PER_CPU(u64, reserved_asids);
+
 static cpumask_t tlb_flush_pending;
 
 #define ASID_MASK		(~GENMASK(asid_bits - 1, 0))
@@ -89,7 +95,7 @@ static void flush_context(struct asid_info *info)
 	bitmap_clear(info->map, 0, NUM_USER_ASIDS);
 
 	for_each_possible_cpu(i) {
-		asid = atomic64_xchg_relaxed(&per_cpu(active_asids, i), 0);
+		asid = atomic64_xchg_relaxed(&active_asid(info, i), 0);
 		/*
 		 * If this CPU has already been through a
 		 * rollover, but hasn't run another task in
@@ -98,9 +104,9 @@ static void flush_context(struct asid_info *info)
 		 * the process it is still running.
 		 */
 		if (asid == 0)
-			asid = per_cpu(reserved_asids, i);
+			asid = reserved_asid(info, i);
 		__set_bit(asid2idx(asid), info->map);
-		per_cpu(reserved_asids, i) = asid;
+		reserved_asid(info, i) = asid;
 	}
 
 	/*
@@ -110,7 +116,8 @@ static void flush_context(struct asid_info *info)
 	cpumask_setall(&tlb_flush_pending);
 }
 
-static bool check_update_reserved_asid(u64 asid, u64 newasid)
+static bool check_update_reserved_asid(struct asid_info *info, u64 asid,
+				       u64 newasid)
 {
 	int cpu;
 	bool hit = false;
@@ -125,9 +132,9 @@ static bool check_update_reserved_asid(u64 asid, u64 newasid)
 	 * generation.
 	 */
 	for_each_possible_cpu(cpu) {
-		if (per_cpu(reserved_asids, cpu) == asid) {
+		if (reserved_asid(info, cpu) == asid) {
 			hit = true;
-			per_cpu(reserved_asids, cpu) = newasid;
+			reserved_asid(info, cpu) = newasid;
 		}
 	}
 
@@ -147,7 +154,7 @@ static u64 new_context(struct asid_info *info, struct mm_struct *mm)
 		 * If our current ASID was active during a rollover, we
 		 * can continue to use it and this was just a false alarm.
 		 */
-		if (check_update_reserved_asid(asid, newasid))
+		if (check_update_reserved_asid(info, asid, newasid))
 			return newasid;
 
 		/*
@@ -196,8 +203,8 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 
 	/*
 	 * The memory ordering here is subtle.
-	 * If our active_asids is non-zero and the ASID matches the current
-	 * generation, then we update the active_asids entry with a relaxed
+	 * If our active_asid is non-zero and the ASID matches the current
+	 * generation, then we update the active_asid entry with a relaxed
 	 * cmpxchg. Racing with a concurrent rollover means that either:
 	 *
 	 * - We get a zero back from the cmpxchg and end up waiting on the
@@ -208,10 +215,10 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 	 *   relaxed xchg in flush_context will treat us as reserved
 	 *   because atomic RmWs are totally ordered for a given location.
 	 */
-	old_active_asid = atomic64_read(&per_cpu(active_asids, cpu));
+	old_active_asid = atomic64_read(&active_asid(info, cpu));
 	if (old_active_asid &&
 	    !((asid ^ atomic64_read(&info->generation)) >> asid_bits) &&
-	    atomic64_cmpxchg_relaxed(&per_cpu(active_asids, cpu),
+	    atomic64_cmpxchg_relaxed(&active_asid(info, cpu),
 				     old_active_asid, asid))
 		goto switch_mm_fastpath;
 
@@ -226,7 +233,7 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 	if (cpumask_test_and_clear_cpu(cpu, &tlb_flush_pending))
 		local_flush_tlb_all();
 
-	atomic64_set(&per_cpu(active_asids, cpu), asid);
+	atomic64_set(&active_asid(info, cpu), asid);
 	raw_spin_unlock_irqrestore(&cpu_asid_lock, flags);
 
 switch_mm_fastpath:
@@ -267,6 +274,9 @@ static int asids_init(void)
 		panic("Failed to allocate bitmap for %lu ASIDs\n",
 		      NUM_USER_ASIDS);
 
+	info->active = &active_asids;
+	info->reserved = &reserved_asids;
+
 	pr_info("ASID allocator initialised with %lu entries\n", NUM_USER_ASIDS);
 	return 0;
 }
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
