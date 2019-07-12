Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 067EE6666F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:40:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oj7JrtYS1CUNDqinSc0kNkx/RLjQPdcL+7WB8XEckus=; b=n7LYJ0clRNQhhn
	JGkymbQEJAubStY0CPmMXjNr/jVw1WIwUOz1eEdRf5+E2yv/rLKY5j0lkXi4TtcTsdjmyHzPMK40G
	x6yVjW0qJdRpIrE8b9sGa7HrhRTwUVTErHl+DFRtBwJekWBOKcPXGLz8oAnJnWsCwZ83zHPrP4nO1
	yDWc20tKBJ6nZL4y48MPamB8M+HjTVVaNiJ95eBT1KOTaKGLgj9QTzt1NhmVD0Cf6JmzikO3hm4Fb
	MNMheASjLn1pcp2sOvt6t4FRD+h19RLvmwXhSvc/692HjcNu1YvUOM2hlL+AtEsfnAleRZ3BdlXB0
	5OhnmiFF+cmqPlFXI//Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloHg-0000S0-HB; Fri, 12 Jul 2019 05:39:52 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo8A-000138-EK
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:30:06 +0000
Received: by mail-pg1-x542.google.com with SMTP id w10so4000591pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FJU6AKZYmaWbov8SdJbQnRPRbYy33d5KJviuZzujVLk=;
 b=oTIW5muK69AdMouGYZaAMlK4ixcRjKc300NdxL++0acaOTqPjxquvKY7YsdTL9AC+B
 V+VLf6JLk3mcGcNgKatuXiHW1TfF61Jeip6tBgU65a2JsHVwYt/e4ZgPGv5gi3a+7OFJ
 YKCMOcIup9XvQ0B2uAfcsJdpbjpW04F/TZvjR1b07hZhDqKBM39RA0uN6gHTUbWPMoPC
 NMBH/lfsVBTID+k/O2ADpzawZ0f3ltnbd7zr3xHWuul40WbLvsF0k6OZeYtB5T/aT33W
 JJSbow1Whs0d1fYqZOdY4pN7d9dtWQrJ9C7ycz8djHRTu9tQHSPxhuV0Tt+yu3N989WY
 QslQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FJU6AKZYmaWbov8SdJbQnRPRbYy33d5KJviuZzujVLk=;
 b=sI/ktQVkaI2PjK/mUDntZrVRU027PSy1ugqTyRjvcjLDaTe+rmp/0KGP7tSed2y94i
 8eMkFxKoFPVvfgZkSc7MF2/sDCQwCiBxEpiX8D0GOjZIrKtudwuF4J6A24ou6EoiYzxa
 olz9tPbcS6kk/yxKDO3PhDK/+AN2B8vispRJQZp4/Jx/eF0qJ/mXZvcfCGI1JVaFHEzz
 VmF8Wov4huHreKsY+xG5whke87C+mxvPg6F/TgSdDdrT4y9yOeQVTd9rpu9em+oZ8Sz9
 Q2kXdFLVIiCnooQK2xTOHyNyRldUYj1Vk6tsCPxsGAT4LjrB0QBdLlhe5W9uj3ygVM32
 A88Q==
X-Gm-Message-State: APjAAAVJNSrrAWQainDj4oAm0pUs1GKfPFwGoJ6MQ0ME/9Z0IxHm9j5u
 2Jw4a1KH840IWd4qKddaT2ca+pQy4VU=
X-Google-Smtp-Source: APXvYqyd2eTBndw3HNQi/J7oWKkj4d0i8FiZzOONfRIsUgFf2Xkw2bRQXcNdXIPpw+H1vRn8QgjLgA==
X-Received: by 2002:a17:90a:cb8e:: with SMTP id
 a14mr9246370pju.124.1562909401554; 
 Thu, 11 Jul 2019 22:30:01 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id q1sm7566238pfg.84.2019.07.11.22.30.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:30:00 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 23/43] arm64: Move post_ttbr_update_workaround to C
 code
Date: Fri, 12 Jul 2019 10:58:11 +0530
Message-Id: <158a87f9ed59c4e39c1e52dc771d0803ea7c7b2d.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_223003_302802_13354A05 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 mark.brown@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
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
