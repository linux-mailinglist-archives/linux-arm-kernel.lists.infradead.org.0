Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A740313238D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 11:28:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YiCAs6jhQAZFUAFRthZanNUv5hz5Tspr3871YBjISwI=; b=kq6VrdjLRrCE3y
	4htxuP+9ui/23ZqtRQuACswvW/J6jC1cazXiySJmwYixmsRkG7QjsK59+KGHipj+g5qB520gZ3rjJ
	OwcnVcuDqRMhM+x4156p3Wh6hLpCJ3eqWpy79wt54R8dZb7+1YRudKJ8h/rQI/d+6SG+0/scX4xLB
	PC4ttxpSNXy6pDXwc09h8PE2bkGEmn2OIZVYdKN3kGr0jyCO+YtO4KHYO1yBEvCD9xrq7SQGcYbdP
	/ZUxmnvmDTvWAwcgckouHAxTELb4ytQ0hqS2AT6XXmILmS8qPVhLXgUjWNhh6oFZIILbvLWqI01dw
	B/bjSvLodtLwEYTzrMgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iom67-0000me-Ak; Tue, 07 Jan 2020 10:28:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iom60-0000ly-Oq
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 10:28:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4212A328
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 Jan 2020 02:28:17 -0800 (PST)
Received: from login2.euhpc.arm.com (login2.euhpc.arm.com [10.6.27.34])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D69193F534
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 Jan 2020 02:28:16 -0800 (PST)
From: Vladimir Murzin <vladimir.murzin@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: context: Free up kernel ASIDs if KPTI is not in use
Date: Tue,  7 Jan 2020 10:28:03 +0000
Message-Id: <1578392883-13294-1-git-send-email-vladimir.murzin@arm.com>
X-Mailer: git-send-email 2.0.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_022820_850888_8E075E48 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We can extend user ASID space if it turns out that system does not
require KPTI. We start with kernel ASIDs reserved because CPU caps are
not finalized yet and free them up lazily on the next rollover if we
confirm than KPTI is not in use.

Signed-off-by: Vladimir Murzin <vladimir.murzin@arm.com>
---
 arch/arm64/mm/context.c | 38 ++++++++++++++++++++++++++++++--------
 1 file changed, 30 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index b5e329f..8ef73e8 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -29,15 +29,9 @@ static cpumask_t tlb_flush_pending;
 #define ASID_MASK		(~GENMASK(asid_bits - 1, 0))
 #define ASID_FIRST_VERSION	(1UL << asid_bits)
 
-#ifdef CONFIG_UNMAP_KERNEL_AT_EL0
-#define NUM_USER_ASIDS		(ASID_FIRST_VERSION >> 1)
-#define asid2idx(asid)		(((asid) & ~ASID_MASK) >> 1)
-#define idx2asid(idx)		(((idx) << 1) & ~ASID_MASK)
-#else
-#define NUM_USER_ASIDS		(ASID_FIRST_VERSION)
+#define NUM_USER_ASIDS		ASID_FIRST_VERSION
 #define asid2idx(asid)		((asid) & ~ASID_MASK)
 #define idx2asid(idx)		asid2idx(idx)
-#endif
 
 /* Get the ASIDBits supported by the current CPU */
 static u32 get_cpu_asid_bits(void)
@@ -77,13 +71,33 @@ void verify_cpu_asid_bits(void)
 	}
 }
 
+static void set_kpti_asid_bits(void)
+{
+	unsigned int len = BITS_TO_LONGS(NUM_USER_ASIDS) * sizeof(unsigned long);
+	/*
+	 * In case of KPTI kernel/user ASIDs are allocated in
+	 * pairs, the bottom bit distinguishes the two: if it
+	 * is set, then the ASID will map only userspace. Thus
+	 * mark even as reserved for kernel.
+	 */
+	memset(asid_map, 0xaa, len);
+}
+
+static void set_reserved_asid_bits(void)
+{
+	if (arm64_kernel_unmapped_at_el0())
+		set_kpti_asid_bits();
+	else
+		bitmap_clear(asid_map, 0, NUM_USER_ASIDS);
+}
+
 static void flush_context(void)
 {
 	int i;
 	u64 asid;
 
 	/* Update the list of reserved ASIDs and the ASID bitmap. */
-	bitmap_clear(asid_map, 0, NUM_USER_ASIDS);
+	set_reserved_asid_bits();
 
 	for_each_possible_cpu(i) {
 		asid = atomic64_xchg_relaxed(&per_cpu(active_asids, i), 0);
@@ -261,6 +275,14 @@ static int asids_init(void)
 		panic("Failed to allocate bitmap for %lu ASIDs\n",
 		      NUM_USER_ASIDS);
 
+	/*
+	 * We cannot call set_reserved_asid_bits() here because CPU
+	 * caps are not finalized yet, so it is safer to assume KPTI
+	 * and reserve kernel ASID's from beginning.
+	 */
+	if (IS_ENABLED(CONFIG_UNMAP_KERNEL_AT_EL0))
+		set_kpti_asid_bits();
+
 	pr_info("ASID allocator initialised with %lu entries\n", NUM_USER_ASIDS);
 	return 0;
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
