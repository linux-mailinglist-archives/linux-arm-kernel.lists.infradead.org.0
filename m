Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4AD48574
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 16:34:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BzQ4xO3Sz5hTdkCnhnQRFmL+KJxR+Vrvv6hboB+ZkW0=; b=uuAtLTtqaifhQC
	6SJER8FUrokPQqlppwHkkeGhNjc4ZPXarmlfsz03x8VcF1NjZLFiE/titd4R7eHy8rdNrBkLo0WMj
	ZXWB3NqrszqjVkTHkzIsaQEsYR/yEt++GNZ43bZB3hT1xS5dhM/zDYEOMubilEfIZWbv2vPbcherL
	BjO1XFupJLGrB04J8+a3kTXr/+1KLhX+5olDnU2+rD+c4Y8A2jsE0G6aFV/XCz9CjkPu7CoH5i6GM
	KFbHA12y+EGNaxZYj8CleufmrBPWZlN8Sml9zqpn5bMLcUHMYI2pUhUqfFVqmcKr7Fvp4Z1GMvQPL
	K03y6jHIMpQNnYPmUjwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcshv-0004Dw-7o; Mon, 17 Jun 2019 14:34:03 +0000
Received: from mgwkm04.jp.fujitsu.com ([202.219.69.171])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcshK-000404-R9
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 14:33:28 +0000
Received: from kw-mxoi1.gw.nic.fujitsu.com (unknown [192.168.231.131]) by
 mgwkm04.jp.fujitsu.com with smtp
 id 7838_3886_96943935_9539_4b8f_b668_c9f59cf7d399;
 Mon, 17 Jun 2019 23:32:57 +0900
Received: from g01jpfmpwkw03.exch.g01.fujitsu.local
 (g01jpfmpwkw03.exch.g01.fujitsu.local [10.0.193.57])
 by kw-mxoi1.gw.nic.fujitsu.com (Postfix) with ESMTP id C5A11AC00EC
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 23:32:57 +0900 (JST)
Received: from G01JPEXCHKW15.g01.fujitsu.local
 (G01JPEXCHKW15.g01.fujitsu.local [10.0.194.54])
 by g01jpfmpwkw03.exch.g01.fujitsu.local (Postfix) with ESMTP id A8711BD66E6;
 Mon, 17 Jun 2019 23:32:56 +0900 (JST)
Received: from localhost.localdomain (10.17.204.146) by
 G01JPEXCHKW15.g01.fujitsu.local (10.0.194.54) with Microsoft SMTP Server id
 14.3.439.0; Mon, 17 Jun 2019 23:32:55 +0900
From: Takao Indoh <indou.takao@jp.fujitsu.com>
To: Jonathan Corbet <corbet@lwn.net>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>
Subject: [PATCH 1/2] arm64: mm: Restore mm_cpumask (revert commit 38d96287504a
 ("arm64: mm: kill mm_cpumask usage"))
Date: Mon, 17 Jun 2019 23:32:54 +0900
Message-ID: <20190617143255.10462-2-indou.takao@jp.fujitsu.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190617143255.10462-1-indou.takao@jp.fujitsu.com>
References: <20190617143255.10462-1-indou.takao@jp.fujitsu.com>
MIME-Version: 1.0
X-SecurityPolicyCheck-GC: OK by FENCE-Mail
X-TM-AS-GCONF: 00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_073327_118632_117D5A32 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.219.69.171 listed in list.dnswl.org]
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
Cc: Takao Indoh <indou.takao@fujitsu.com>, QI Fuli <qi.fuli@fujitsu.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Takao Indoh <indou.takao@fujitsu.com>

mm_cpumask was deleted by the commit 38d96287504a ("arm64: mm: kill
mm_cpumask usage") because it was not used at that time. Now this is needed
to find appropriate CPUs for TLB flush, so this patch reverts this commit.

Signed-off-by: QI Fuli <qi.fuli@fujitsu.com>
Signed-off-by: Takao Indoh <indou.takao@fujitsu.com>
---
 arch/arm64/include/asm/mmu_context.h | 7 ++++++-
 arch/arm64/kernel/smp.c              | 6 ++++++
 arch/arm64/mm/context.c              | 2 ++
 3 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/mmu_context.h b/arch/arm64/include/asm/mmu_context.h
index 2da3e478fd8f..21ef11590bcb 100644
--- a/arch/arm64/include/asm/mmu_context.h
+++ b/arch/arm64/include/asm/mmu_context.h
@@ -241,8 +241,13 @@ static inline void
 switch_mm(struct mm_struct *prev, struct mm_struct *next,
 	  struct task_struct *tsk)
 {
-	if (prev != next)
+	unsigned int cpu = smp_processor_id();
+
+	if (prev != next) {
 		__switch_mm(next);
+		cpumask_clear_cpu(cpu, mm_cpumask(prev));
+		local_flush_tlb_mm(prev);
+	}
 
 	/*
 	 * Update the saved TTBR0_EL1 of the scheduled-in task as the previous
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index bb4b3f07761a..12a922d1cdd7 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -218,6 +218,7 @@ asmlinkage notrace void secondary_start_kernel(void)
 	 */
 	mmgrab(mm);
 	current->active_mm = mm;
+	cpumask_set_cpu(cpu, mm_cpumask(mm));
 
 	/*
 	 * TTBR0 is only used for the identity mapping at this stage. Make it
@@ -320,6 +321,11 @@ int __cpu_disable(void)
 	 */
 	irq_migrate_all_off_this_cpu();
 
+	/*
+	 * Remove this CPU from the vm mask set of all processes.
+	 */
+	clear_tasks_mm_cpumask(cpu);
+
 	return 0;
 }
 
diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index 1f0ea2facf24..ff3ab2924074 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -188,6 +188,7 @@ static u64 new_context(struct mm_struct *mm)
 set_asid:
 	__set_bit(asid, asid_map);
 	cur_idx = asid;
+	cpumask_clear(mm_cpumask(mm));
 	return idx2asid(asid) | generation;
 }
 
@@ -239,6 +240,7 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 switch_mm_fastpath:
 
 	arm64_apply_bp_hardening();
+	cpumask_set_cpu(cpu, mm_cpumask(mm));
 
 	/*
 	 * Defer TTBR0_EL1 setting for user threads to uaccess_enable() when
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
