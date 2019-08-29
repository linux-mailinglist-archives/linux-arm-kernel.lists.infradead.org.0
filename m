Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8EADA1916
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:42:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oj7JrtYS1CUNDqinSc0kNkx/RLjQPdcL+7WB8XEckus=; b=T5MPSu/mdTWuma
	Tpbj/kM+qtavMvY6HGc1lNPyYWOD90xgbxMcLtJZ0zlX2K72LHrZPA5ofFdpETQhQ1maE78oEC8AI
	MloGBDRQpYu3zilrorjbt2QQBNrTicJIyZhP5VsTZw6j93Jl994oMtit0OoUYFNdRXcfrgTjk9H4b
	EFHb/Che+AWpQUTB1nm71Km99bBLYfJKwDqVeFmUQj9wvI8L3Z6uUK8gWaFUlPAB8fJtu8n0sWNdQ
	qnT8RU+RRlH7NKohtKgUN+VQh12JzSc8Y7B4ImUA9qognhh/LzYjzTxsHYkLc977MLvbBp7ZbfZQb
	lr4a5Bxfd2OpGJliuOCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IpE-0004eJ-Ly; Thu, 29 Aug 2019 11:42:48 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Iib-0006jt-EF
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:35:59 +0000
Received: by mail-pf1-x443.google.com with SMTP id y200so1865657pfb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FJU6AKZYmaWbov8SdJbQnRPRbYy33d5KJviuZzujVLk=;
 b=dqcvWNwwubf2tMZdjfDZVdEy20YtsPjDhDhWbmFRGhkS6M+0p8WhAHb1h9mJLlO5bB
 MXJ+Npy0rOlEgB40x1si1t5I1RjzIIXPKGU1DiemYgfre7ydctPf+tI530DGzmQuhMxf
 uEc2REBcDDWVPhog9xuQAxfG002E+4hr8p2aA2FB9ZMXRfj+XfudK5Kt0CjPeJ8xMn6S
 XpRWj8MnE5b9PKlb/pMxWLtC/UyYGG4DG/dZYcbc5awOUY0Xl8d7rqcIAnpVisM+7HOR
 ZNJG0LzsEZjPNg7MXYInnMaEIy86XNyAj/2j/JPL2Bw2YMF5CNTL17M0A178jlbp9jfj
 gJnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FJU6AKZYmaWbov8SdJbQnRPRbYy33d5KJviuZzujVLk=;
 b=dPVluiej6BYEYY9p+3n7PGn6nbyBJGxXQlGCRUtCIXkDgrwAwGap5gMc/RtAU7/S/O
 d/70JFTRxHTeGmmH1hPhXCLPkRap8ZFITxxPZABEs8xviyRrsLZxLbmntNlMJ/keXEPW
 e67Irhpr2UucxcYKt0Fu1vMkF2F22/yBNhE/wizifQ/cGqXTFtzLjO6eQutr7MZU/bA5
 FmI38X6TSgg7jxKJ5z+gX3AX+DSqXh7+uZnx5o01MnGD8j3WDTe7SjT4xLLfK9rsXxpP
 RGTSsagw4tMKEYL9snuuPVPFjFpdbTNi1TTZfcrPBhb/Z7O+W+c8mB0y2uCTxzygoP7j
 yzcA==
X-Gm-Message-State: APjAAAVlykNZiO2Cgm/Mor2iMFRP5P8o+eyd0rOIqsK1SsStT02Rnmf4
 2bapwZAOlbBcR7ta6/xD5LIHFg==
X-Google-Smtp-Source: APXvYqzh0snpEB4vcsb0EEfd9ciRcX/Eo3TF5s52aPdlIA05YLa6bpzGQwyOHHKm8kCkbQY/5XpEjw==
X-Received: by 2002:a17:90a:21eb:: with SMTP id
 q98mr9127441pjc.23.1567078556757; 
 Thu, 29 Aug 2019 04:35:56 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id v66sm5349202pfv.79.2019.08.29.04.35.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:35:56 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 24/44] arm64: Move post_ttbr_update_workaround
 to C code
Date: Thu, 29 Aug 2019 17:04:09 +0530
Message-Id: <cd3f2322d6cb635e542ebb14da01585259ac92bb.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043557_537832_D94D046A 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marc Zyngier <marc.zyngier@arm.com>

commit 95e3de3590e3f2358bb13f013911bc1bfa5d3f53 upstream.

We will soon need to invoke a CPU-specific function pointer after changing
page tables, so move post_ttbr_update_workaround out into C code to make
this possible.

Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ v4.4: Removed cpufeature.h, included alternative.h, dropped entry.S
	changes and adapted to drop alternative_if_not ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/assembler.h | 18 ------------------
 arch/arm64/mm/context.c            | 10 ++++++++++
 arch/arm64/mm/proc.S               |  3 +--
 3 files changed, 11 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index 8ab46508e836..2b30363a3a89 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -23,7 +23,6 @@
 #ifndef __ASM_ASSEMBLER_H
 #define __ASM_ASSEMBLER_H
 
-#include <asm/cpufeature.h>
 #include <asm/cputype.h>
 #include <asm/ptrace.h>
 #include <asm/thread_info.h>
@@ -283,21 +282,4 @@ lr	.req	x30		// link register
 .Ldone\@:
 	.endm
 
-/*
- * Errata workaround post TTBR0_EL1 update.
- */
-	.macro	post_ttbr0_update_workaround
-#ifdef CONFIG_CAVIUM_ERRATUM_27456
-alternative_if_not ARM64_WORKAROUND_CAVIUM_27456
-       ret
-       nop
-       nop
-       nop
-alternative_else
-       ic      iallu
-       dsb     nsh
-       isb
-#endif
-	.endm
-
 #endif	/* __ASM_ASSEMBLER_H */
diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index e87f53ff5f58..492d2968fa8f 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -22,6 +22,7 @@
 #include <linux/slab.h>
 #include <linux/mm.h>
 
+#include <asm/alternative.h>
 #include <asm/cpufeature.h>
 #include <asm/mmu_context.h>
 #include <asm/tlbflush.h>
@@ -185,6 +186,15 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 	cpu_switch_mm(mm->pgd, mm);
 }
 
+/* Errata workaround post TTBRx_EL1 update. */
+asmlinkage void post_ttbr_update_workaround(void)
+{
+	asm(ALTERNATIVE("nop; nop; nop",
+			"ic iallu; dsb nsh; isb",
+			ARM64_WORKAROUND_CAVIUM_27456,
+			CONFIG_CAVIUM_ERRATUM_27456));
+}
+
 static int asids_init(void)
 {
 	int fld = cpuid_feature_extract_field(read_cpuid(ID_AA64MMFR0_EL1), 4);
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index 4eb1084e203a..a70b712ca94a 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -139,8 +139,7 @@ ENTRY(cpu_do_switch_mm)
 	bfi	x0, x1, #48, #16		// set the ASID
 	msr	ttbr0_el1, x0			// set TTBR0
 	isb
-	post_ttbr0_update_workaround
-	ret
+	b	post_ttbr_update_workaround	// Back to C code...
 ENDPROC(cpu_do_switch_mm)
 
 	.section ".text.init", #alloc, #execinstr
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
