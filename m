Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C831FA699
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 05:10:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=E90MgQmIbGn7m1pxyh+jYxuVRiBSxUHUXUbmpv/37rU=; b=cwN
	tpQhx2Dn3G/JxIEfhoY8Yfaygt8JlPRip2oYJAirxVPjg3pnEKd2u3u8pbbKSw+QLQ8FVfjBO0Xdi
	LHHCbNbbIQDPF92QPqnqR/MwHDsT/VOK05bwihA3SNu/oeRRoij8nCF/cdhD96Ws/xh5tfOP/8XYn
	GA3prtimOMSfVEL4KXNy4bZnjdTpedYRetlLfyy+EqfgJN1PgTwCGNrB6Kvz8A+jNJ/zc/2ODyjfb
	pZaTVZURjxoW1RTRY0POShjHl5Fb801jh7H1DTOdq5Nvc51w7b+2jKHf3g3vMDMiYot2bO3Pi5TNa
	C8ZhKUuU2Eqm47KobYgzJ0eWEDFw/Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl1zu-0005xL-IC; Tue, 16 Jun 2020 03:10:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl1zm-0005wv-8Y
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 03:10:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B0A81FB;
 Mon, 15 Jun 2020 20:10:40 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.80.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BE0DC3F6CF;
 Mon, 15 Jun 2020 20:10:37 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/panic: Unify all three existing notifier blocks
Date: Tue, 16 Jun 2020 08:40:17 +0530
Message-Id: <1592277017-31784-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_201042_400161_B2CF8D47 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Steve Capper <steve.capper@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently there are three different registered panic notifier blocks. This
unifies all of them into a single one i.e arm64_panic_block, hence reducing
code duplication and required calling sequence during panic. This preserves
the existing dump sequence.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Steve Capper <steve.capper@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
Applies on 5.8-rc1.

 arch/arm64/include/asm/cpufeature.h |  1 +
 arch/arm64/include/asm/memory.h     |  1 +
 arch/arm64/kernel/cpufeature.c      | 15 +--------------
 arch/arm64/kernel/setup.c           | 24 ++++++++++++++----------
 arch/arm64/mm/init.c                | 18 +-----------------
 5 files changed, 18 insertions(+), 41 deletions(-)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 5d1f4ae42799..e375529ca9fc 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -774,6 +774,7 @@ static inline unsigned int get_vmid_bits(u64 mmfr1)
 }
 
 u32 get_kvm_ipa_limit(void);
+void dump_cpu_features(void);
 
 #endif /* __ASSEMBLY__ */
 
diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index a1871bb32bb1..2a88cb734d06 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -322,6 +322,7 @@ static inline void *phys_to_virt(phys_addr_t x)
 	__is_lm_address(__addr) && pfn_valid(virt_to_pfn(__addr));	\
 })
 
+void dump_mem_limit(void);
 #endif /* !ASSEMBLY */
 
 /*
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 2270eda9a7fb..756775f4b7d4 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -119,24 +119,11 @@ static inline void finalize_system_capabilities(void)
 	static_branch_enable(&arm64_const_caps_ready);
 }
 
-static int dump_cpu_hwcaps(struct notifier_block *self, unsigned long v, void *p)
+void dump_cpu_features(void)
 {
 	/* file-wide pr_fmt adds "CPU features: " prefix */
 	pr_emerg("0x%*pb\n", ARM64_NCAPS, &cpu_hwcaps);
-	return 0;
-}
-
-static struct notifier_block cpu_hwcaps_notifier = {
-	.notifier_call = dump_cpu_hwcaps
-};
-
-static int __init register_cpu_hwcaps_dumper(void)
-{
-	atomic_notifier_chain_register(&panic_notifier_list,
-				       &cpu_hwcaps_notifier);
-	return 0;
 }
-__initcall(register_cpu_hwcaps_dumper);
 
 DEFINE_STATIC_KEY_ARRAY_FALSE(cpu_hwcap_keys, ARM64_NCAPS);
 EXPORT_SYMBOL(cpu_hwcap_keys);
diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 93b3844cf442..312b19263cb7 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -400,11 +400,7 @@ static int __init topology_init(void)
 }
 subsys_initcall(topology_init);
 
-/*
- * Dump out kernel offset information on panic.
- */
-static int dump_kernel_offset(struct notifier_block *self, unsigned long v,
-			      void *p)
+void dump_kernel_offset(void)
 {
 	const unsigned long offset = kaslr_offset();
 
@@ -415,17 +411,25 @@ static int dump_kernel_offset(struct notifier_block *self, unsigned long v,
 	} else {
 		pr_emerg("Kernel Offset: disabled\n");
 	}
+}
+
+static int arm64_panic_block_dump(struct notifier_block *self,
+				  unsigned long v, void *p)
+{
+	dump_kernel_offset();
+	dump_cpu_features();
+	dump_mem_limit();
 	return 0;
 }
 
-static struct notifier_block kernel_offset_notifier = {
-	.notifier_call = dump_kernel_offset
+static struct notifier_block arm64_panic_block = {
+	.notifier_call = arm64_panic_block_dump
 };
 
-static int __init register_kernel_offset_dumper(void)
+static int __init register_arm64_panic_block(void)
 {
 	atomic_notifier_chain_register(&panic_notifier_list,
-				       &kernel_offset_notifier);
+				       &arm64_panic_block);
 	return 0;
 }
-__initcall(register_kernel_offset_dumper);
+__initcall(register_arm64_panic_block);
diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index e631e6425165..b88ef04033de 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -558,27 +558,11 @@ void free_initmem(void)
 	unmap_kernel_range((u64)__init_begin, (u64)(__init_end - __init_begin));
 }
 
-/*
- * Dump out memory limit information on panic.
- */
-static int dump_mem_limit(struct notifier_block *self, unsigned long v, void *p)
+void dump_mem_limit(void)
 {
 	if (memory_limit != PHYS_ADDR_MAX) {
 		pr_emerg("Memory Limit: %llu MB\n", memory_limit >> 20);
 	} else {
 		pr_emerg("Memory Limit: none\n");
 	}
-	return 0;
-}
-
-static struct notifier_block mem_limit_notifier = {
-	.notifier_call = dump_mem_limit,
-};
-
-static int __init register_mem_limit_dumper(void)
-{
-	atomic_notifier_chain_register(&panic_notifier_list,
-				       &mem_limit_notifier);
-	return 0;
 }
-__initcall(register_mem_limit_dumper);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
