Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B910733E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 18:28:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PJxqLTprB0jkwGa4YFqgkSqYX/z0Seb87bpjDn4JtNE=; b=XGIYVO+Z4tSxYJ5YaOybp/Phw2
	xQnVkU25F0PHEx89wMOf5a7dj6rrPDoo/IkN6nDYCJoBFL5VCUSxAJ7lMquvnEDLqqnF2O0rgV2A0
	JDm6jopVlEGW45vpln+9pQQGx6EuyghQxFcDsbe7jR9dlqYojJFBgs5jV6A7fnwvouy6tDZZRY9Ad
	6jfrQJ50Bu6r0f2MNd0CScHYDk8hkV+uP/aNMjE/HVjNToPitMqbdg20U0nGhjWJ9vZlilYcE6K89
	pHYfNVSecPE2kM/2PJStnTVvL1EOyL50I3U49S7zAnEA0vwuRTiApseVv1t2Klc+m7IobSNLjRLzU
	IjFfgecg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqK7k-0002AI-1N; Wed, 24 Jul 2019 16:28:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqK5X-000065-Py
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 16:26:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A2BBB28;
 Wed, 24 Jul 2019 09:25:59 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4DC6E3F71F;
 Wed, 24 Jul 2019 09:25:58 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
Subject: [PATCH v3 08/15] arm64/mm: Split asid_inits in 2 parts
Date: Wed, 24 Jul 2019 17:25:27 +0100
Message-Id: <20190724162534.7390-9-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190724162534.7390-1-julien.grall@arm.com>
References: <20190724162534.7390-1-julien.grall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_092559_900378_597893C5 
X-CRM114-Status: GOOD (  11.37  )
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

Move out the common initialization of the ASID allocator in a separate
function.

Signed-off-by: Julien Grall <julien.grall@arm.com>

---
    Changes in v3:
        - Allow bisection (asid_allocator_init() return 0 on success not
          error!).
---
 arch/arm64/mm/context.c | 43 +++++++++++++++++++++++++++++++------------
 1 file changed, 31 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index 3b40ac4a2541..27e328fffdb1 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -260,31 +260,50 @@ asmlinkage void post_ttbr_update_workaround(void)
 			CONFIG_CAVIUM_ERRATUM_27456));
 }
 
-static int asids_init(void)
+/*
+ * Initialize the ASID allocator
+ *
+ * @info: Pointer to the asid allocator structure
+ * @bits: Number of ASIDs available
+ * @asid_per_ctxt: Number of ASIDs to allocate per-context. ASIDs are
+ * allocated contiguously for a given context. This value should be a power of
+ * 2.
+ */
+static int asid_allocator_init(struct asid_info *info,
+			       u32 bits, unsigned int asid_per_ctxt)
 {
-	struct asid_info *info = &asid_info;
-
-	info->bits = get_cpu_asid_bits();
-	info->ctxt_shift = ilog2(ASID_PER_CONTEXT);
+	info->bits = bits;
+	info->ctxt_shift = ilog2(asid_per_ctxt);
 	/*
 	 * Expect allocation after rollover to fail if we don't have at least
-	 * one more ASID than CPUs. ASID #0 is reserved for init_mm.
+	 * one more ASID than CPUs. ASID #0 is always reserved.
 	 */
 	WARN_ON(NUM_CTXT_ASIDS(info) - 1 <= num_possible_cpus());
 	atomic64_set(&info->generation, ASID_FIRST_VERSION(info));
 	info->map = kcalloc(BITS_TO_LONGS(NUM_CTXT_ASIDS(info)),
 			    sizeof(*info->map), GFP_KERNEL);
 	if (!info->map)
-		panic("Failed to allocate bitmap for %lu ASIDs\n",
-		      NUM_CTXT_ASIDS(info));
-
-	info->active = &active_asids;
-	info->reserved = &reserved_asids;
+		return -ENOMEM;
 
 	raw_spin_lock_init(&info->lock);
 
+	return 0;
+}
+
+static int asids_init(void)
+{
+	u32 bits = get_cpu_asid_bits();
+
+	if (asid_allocator_init(&asid_info, bits, ASID_PER_CONTEXT))
+		panic("Unable to initialize ASID allocator for %lu ASIDs\n",
+		      1UL << bits);
+
+	asid_info.active = &active_asids;
+	asid_info.reserved = &reserved_asids;
+
 	pr_info("ASID allocator initialised with %lu entries\n",
-		NUM_CTXT_ASIDS(info));
+		NUM_CTXT_ASIDS(&asid_info));
+
 	return 0;
 }
 early_initcall(asids_init);
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
