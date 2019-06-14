Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 819844529E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:18:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oj7JrtYS1CUNDqinSc0kNkx/RLjQPdcL+7WB8XEckus=; b=UffnYM3/CVIOOz
	/Z48NHrt7FrUZP6rkw7wGQRkW1UfkDgt5MzTCVPDOulv5NQjS82DThwtWoPGcZ248xaFthQh0D2aP
	TlEOQTsDmbaZZVwLM4rFZywXlde7PCzho0/XH9HZuzMG/ZkVeewXr4zFfXidWU5Vnxt5cL4NYiQHx
	wLAq2WHffWs4NEjmdfzxSbSO4+WqAlAZ+EhQndZQYbIS8HVWHpGjBolUSV1WUoDPRLe0vu9GaoFFu
	TnhBcMDS5WZddD41vwBtXUfHI2T27Oa2NJLZeq4iQq/k/7xdy085ASGYwyC39t6MxVqeXDf4R/BCZ
	nj7lcBkQllwzd9//sV1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcjK-0006N3-KB; Fri, 14 Jun 2019 03:18:18 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcdp-0000RB-Su
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:12:40 +0000
Received: by mail-pg1-x544.google.com with SMTP id d30so671931pgm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FJU6AKZYmaWbov8SdJbQnRPRbYy33d5KJviuZzujVLk=;
 b=YrcvAeSGhO45tP17Rj0WtR5s4BK3jEYUh+NId6My01EnBc6fQOndzVVJcCKlZPE2sv
 AlQwDjj6xSPf9flbs2HG1+hEd661VSkzhWlQK/h3zMp5Pq7SG2Ow6UQ5P82Qte7XZyOh
 /p5/Y/dMH9ybqE6m4ws6cqKEaegYm6Xh7fC4jivkqpTJoB0hDGQP1aXo6RK6WNYGGCht
 8MN6NHlgIhl3XzSqPXCCspLAQ/1Wjx+Yo7BEpV0L2NmIofv8gWJnupmYazoGkvEg3ShG
 8oQDdplctgWkaKaUmIsAJVf8q/LWWoWRLO6JczPvHL4xVwrDGCfd1I2j4dhbi0Mlr99X
 WT4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FJU6AKZYmaWbov8SdJbQnRPRbYy33d5KJviuZzujVLk=;
 b=EHXIxV/EdbzdHw+x46cDLxaglIMRmZqynxFmh+RYhmcEjXblbFZnHV84Ibp/tDFiPD
 wr+MkyyrsnpS/Hrqq+kbhJHcKxQ0Eab2TvTI0/TY56KTPUBiC/uftxbEPNzE7z3JzwSb
 Mb62SaLEpctbe8rAG5xRPNo/CiJuVK9R0gJrVvqlZ5DUFoMzRvNJd4JRLeK+tqbfFBq/
 M1Qegb8y4ZaChi2n86a0IkJ7kTYbVFb05nouROrTIQNBLFJav/WGR8xs/NFaLdQsv68N
 bCI6rlt/wyjUF5qVLNrzYA/Wuc5TVkQvA+opy+u+hTktm6jh7YusGKKBXy++7yfeHdSH
 bOnw==
X-Gm-Message-State: APjAAAXOvk9mrq/B3CWM5B+f7QHjUA5uir2u2hKTErNybg67X1ddn5IQ
 okGoXBnIaOjJ6Xak/FROYfcBCKycMwE=
X-Google-Smtp-Source: APXvYqy+Qor9YksPPwljQlQQ6K2Ur1FZpSd7AAt7mUVgH3K8wVHk409FP9xAx/VeWdPCnT1Y+P0quQ==
X-Received: by 2002:a62:6143:: with SMTP id v64mr59569090pfb.42.1560481956440; 
 Thu, 13 Jun 2019 20:12:36 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id 85sm1140276pgb.52.2019.06.13.20.12.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:12:35 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 16/45] arm64: Move post_ttbr_update_workaround to C code
Date: Fri, 14 Jun 2019 08:37:59 +0530
Message-Id: <c87b218ba730c0600d2b011b656ee4a8b556fd30.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201238_042234_A386735E 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>
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
