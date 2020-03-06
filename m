Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B1517B6CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 07:37:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ei453P7pZ0czfgWhHQmTV5HrQH4jf48si43J97qL3M8=; b=OwUa9MB1o16BVwTnf7dODjMIlz
	XQVTjIofr79/pMddXMOu6CaMk54q/4sJ/QqKcDaLVAZUZ1vSYU/z434AEmChDxRWFKurR9D+D0YxF
	PeNOKpJH+dq2qLupifSpoNm70b9lkrN7eu5MC3D0REgBeTwN+WInFkTJNZ3qITceWVgiyIuBizRBR
	rGlcxj6DaGcdMGcJGTrBjSmZ9P4yotwqK04rWpE33NpqoPUJ2vEcKe0CAXq8kq84KO7VnO23jskCQ
	9/xANyOdSEBcV5/X+opZLXPzEgadtESXzsuXbShM5dskpWfRFUglrC0bZxlQcScrKufkty0QBYniX
	Xdqm+w1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA6bp-0005uI-5H; Fri, 06 Mar 2020 06:37:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA6aW-0004pw-AZ
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 06:36:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6448C30E;
 Thu,  5 Mar 2020 22:35:59 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 65A663F6CF;
 Thu,  5 Mar 2020 22:39:51 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 05/18] arm64: create macro to park cpu in an infinite loop
Date: Fri,  6 Mar 2020 12:05:12 +0530
Message-Id: <1583476525-13505-6-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_223600_555786_0CC546E8 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A macro early_park_cpu is added to park the faulted cpu in an infinite
loop. Currently, this macro is substituted in two instances and may be
reused in future.

Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
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
