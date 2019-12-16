Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 511FC120039
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 09:49:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WRaoRHK+i/+KKnuvjp8lx0qdY9d6gg38MX8g0FVzgjQ=; b=jEvZKYJYHSNXO9hrqzRZE5c5Fv
	FhMKkA6/oWJnvggSEmdic3/pCPuT+j8JOMmLIzrz7SAIwIGl+j3mpwLPaVIup7mrC8Gg79mD2Gx/y
	/JEkIHIg5Py7n7P2USLaIvHBuJtQz1ZHpd8KV30GdsY1g2Y/DOJk5n1r4Dlkce6Q6mkVAPCCnYy6k
	0SKlS/wIb2pK5bQuYBHgDyPdEX/0D/sOjMW8OThMHmaf8i11B04Dw0+kqHEwbO0wYh96fCNMmT6LN
	gADdFtHldzXXnxfLFjq61bw7Z2rxbz73AKGSlcqhK69UxpM5dwJDITmpiVnVnCufDPlac0D/Il94m
	ujKwvq6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igm4W-0005dz-DY; Mon, 16 Dec 2019 08:49:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igm2i-0004MQ-JE
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 08:47:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1295A1007;
 Mon, 16 Dec 2019 00:47:52 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 532863F6CF;
 Mon, 16 Dec 2019 00:51:03 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 04/16] arm64: create macro to park cpu in an infinite loop
Date: Mon, 16 Dec 2019 14:17:06 +0530
Message-Id: <1576486038-9899-5-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_004753_789119_0DE8C5EE 
X-CRM114-Status: GOOD (  10.59  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Mark Brown <Mark.Brown@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A macro early_park_cpu is added to park the faulted cpu in an infinite
loop. Currently, this macro is substituted in two instances and is reused
in the subsequent pointer authentication patch.

Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Changes since last version:
* None.

 arch/arm64/kernel/head.S | 25 +++++++++++++------------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 989b194..3d18163 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -761,6 +761,17 @@ ENDPROC(__secondary_too_slow)
 	.endm
 
 /*
+ * Macro to park the cpu in an infinite loop.
+ */
+	.macro	early_park_cpu status
+	update_early_cpu_boot_status \status | CPU_STUCK_IN_KERNEL, x1, x2
+.Lepc_\@:
+	wfe
+	wfi
+	b	.Lepc_\@
+	.endm
+
+/*
  * Enable the MMU.
  *
  *  x0  = SCTLR_EL1 value for turning on the MMU.
@@ -808,24 +819,14 @@ ENTRY(__cpu_secondary_check52bitva)
 	and	x0, x0, #(0xf << ID_AA64MMFR2_LVA_SHIFT)
 	cbnz	x0, 2f
 
-	update_early_cpu_boot_status \
-		CPU_STUCK_IN_KERNEL | CPU_STUCK_REASON_52_BIT_VA, x0, x1
-1:	wfe
-	wfi
-	b	1b
-
+	early_park_cpu CPU_STUCK_REASON_52_BIT_VA
 #endif
 2:	ret
 ENDPROC(__cpu_secondary_check52bitva)
 
 __no_granule_support:
 	/* Indicate that this CPU can't boot and is stuck in the kernel */
-	update_early_cpu_boot_status \
-		CPU_STUCK_IN_KERNEL | CPU_STUCK_REASON_NO_GRAN, x1, x2
-1:
-	wfe
-	wfi
-	b	1b
+	early_park_cpu CPU_STUCK_REASON_NO_GRAN
 ENDPROC(__no_granule_support)
 
 #ifdef CONFIG_RELOCATABLE
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
