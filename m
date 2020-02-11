Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B1F159912
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:47:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=l0eceehSjtVKyiCyynMg7bGZGuBP8Nu0zA1oQ47KkQs=; b=qzAW226MCjJlN/V/oUFFnoLKwB
	xry4Mr20G6xVM+PDR3bzwBSLDhfdnOH7TLbU+Cmag8Y3u9qLu1JSilLR2SdoR8itNMBvnHgwX6ERf
	wxQjHDxyKjJqsFlZNmpyG2k5MiAUz6i4Dc4eDhy7ldtpi4YD3W9/94oWYlAxEarFxJHDlHClENJ9L
	wXPDCkjNmeQUNKYfAz0EeaXIcgBVaQqWUFDi63qWgYBveeO5soO0o8B70phzGHeRbfSYihv7Nl9BO
	ptWEBrA+6vh83M7OF7GTcJdnoiN0cOxhnerFSUTDUmn14tbGwzm3VA8eKregarq/bejT7q3IBxCQ9
	SGRRFlgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1aYi-0005Ag-Sg; Tue, 11 Feb 2020 18:46:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1aYD-0004q4-JT
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 18:46:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 904F71FB;
 Tue, 11 Feb 2020 10:46:22 -0800 (PST)
Received: from e108754-lin.cambridge.arm.com (e108754-lin.cambridge.arm.com
 [10.1.198.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 464C23F68F;
 Tue, 11 Feb 2020 10:46:20 -0800 (PST)
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: catalin.marinas@arm.com, will@kernel.org, mark.rutland@arm.com,
 maz@kernel.org, suzuki.poulose@arm.com, sudeep.holla@arm.com,
 lukasz.luba@arm.com, valentin.schneider@arm.com, rjw@rjwysocki.net,
 ionela.voinescu@arm.com
Subject: [PATCH v3 2/7] arm64: trap to EL1 accesses to AMU counters from EL0
Date: Tue, 11 Feb 2020 18:45:37 +0000
Message-Id: <20200211184542.29585-3-ionela.voinescu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200211184542.29585-1-ionela.voinescu@arm.com>
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_104625_891682_5A9AAC93 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-doc@vger.kernel.org, peterz@infradead.org, viresh.kumar@linaro.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org, Steve Capper <steve.capper@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The activity monitors extension is an optional extension introduced
by the ARMv8.4 CPU architecture. In order to access the activity
monitors counters safely, if desired, the kernel should detect the
presence of the extension through the feature register, and mediate
the access.

Therefore, disable direct accesses to activity monitors counters
from EL0 (userspace) and trap them to EL1 (kernel).

To be noted that the ARM64_AMU_EXTN kernel config and the disable_amu
kernel parameter do not have an effect on this code. Given that the
amuserenr_el0 resets to an UNKNOWN value, setting the trap of EL0
accesses to EL1 is always attempted for safety and security
considerations. Therefore firmware should still ensure accesses to
AMU registers are not trapped in EL2/EL3 as this code cannot be
bypassed if the CPU implements the Activity Monitors Unit.

Signed-off-by: Ionela Voinescu <ionela.voinescu@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Steve Capper <steve.capper@arm.com>
---
 arch/arm64/include/asm/assembler.h | 10 ++++++++++
 arch/arm64/mm/proc.S               |  3 +++
 2 files changed, 13 insertions(+)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index 2cc0dd8bd9f7..2dc6d7b19831 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -443,6 +443,16 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
 9000:
 	.endm
 
+/*
+ * reset_amuserenr_el0 - reset AMUSERENR_EL0 if AMUv1 present
+ */
+	.macro	reset_amuserenr_el0, tmpreg
+	mrs	\tmpreg, id_aa64pfr0_el1	// Check ID_AA64PFR0_EL1
+	ubfx	\tmpreg, \tmpreg, #ID_AA64PFR0_AMU_SHIFT, #4
+	cbz	\tmpreg, .Lskip_\@		// Skip if no AMU present
+	msr_s	SYS_AMUSERENR_EL0, xzr		// Disable AMU access from EL0
+.Lskip_\@:
+	.endm
 /*
  * copy_page - copy src to dest using temp registers t1-t8
  */
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index a1e0592d1fbc..d8aae1152c08 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -124,6 +124,7 @@ alternative_endif
 	ubfx	x11, x11, #1, #1
 	msr	oslar_el1, x11
 	reset_pmuserenr_el0 x0			// Disable PMU access from EL0
+	reset_amuserenr_el0 x0			// Disable AMU access from EL0
 
 alternative_if ARM64_HAS_RAS_EXTN
 	msr_s	SYS_DISR_EL1, xzr
@@ -415,6 +416,8 @@ ENTRY(__cpu_setup)
 	isb					// Unmask debug exceptions now,
 	enable_dbg				// since this is per-cpu
 	reset_pmuserenr_el0 x0			// Disable PMU access from EL0
+	reset_amuserenr_el0 x0			// Disable AMU access from EL0
+
 	/*
 	 * Memory region attributes for LPAE:
 	 *
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
