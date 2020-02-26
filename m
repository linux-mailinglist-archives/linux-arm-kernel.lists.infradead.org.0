Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF4C170006
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 14:31:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=33fSs5gW2hIBEtCJwPSlm/xE6Xb1vOCUp6g6jJv0ZvY=; b=tasu8uVEFigvyc3a80ZsapXaZW
	tQfaj7dK1f0P4/k+8SW/Ll9irjqt2gBvRalsuRepa3LoDkIB/ZkeJXGdVHR5QtOpfQYwJ7TB5Cs2H
	/QAciJSgSsDG4OeFT6ZfGiXeVuVHECG9jnPtivhmHMqgNPdxEVvQ2E9NsUjJt+9sxeApBNfwLz7r3
	XV3sa1maaFIcnTq2S/wNZONg9UGC5DTqtTy+NtgpOeppHXn9Vj/ElDUONFPyb4XG2+Z6fwhEEGA7W
	uZYpKb7984X3avoFZa0N2KcEaNpQWslAQO9s1W6ppoJcgtoLe63RbI3DHu9QOQ7fSkULT4SPrAwLs
	xDGnpDQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6wmR-0004PR-Ii; Wed, 26 Feb 2020 13:31:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6wlr-00046W-94
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 13:30:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BDD0030E;
 Wed, 26 Feb 2020 05:30:38 -0800 (PST)
Received: from e108754-lin.cambridge.arm.com (e108754-lin.cambridge.arm.com
 [10.1.198.53])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 16A463FA00;
 Wed, 26 Feb 2020 05:30:35 -0800 (PST)
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: catalin.marinas@arm.com, will@kernel.org, mark.rutland@arm.com,
 maz@kernel.org, suzuki.poulose@arm.com, sudeep.holla@arm.com,
 lukasz.luba@arm.com, valentin.schneider@arm.com, dietmar.eggemann@arm.com,
 rjw@rjwysocki.net, pkondeti@codeaurora.org, ionela.voinescu@arm.com
Subject: [PATCH v5 2/7] arm64: trap to EL1 accesses to AMU counters from EL0
Date: Wed, 26 Feb 2020 13:29:42 +0000
Message-Id: <20200226132947.29738-3-ionela.voinescu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200226132947.29738-1-ionela.voinescu@arm.com>
References: <20200226132947.29738-1-ionela.voinescu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_053039_459856_97757414 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
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
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Reviewed-by: Valentin Schneider <valentin.schneider@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Steve Capper <steve.capper@arm.com>
---
 arch/arm64/include/asm/assembler.h | 10 ++++++++++
 arch/arm64/mm/proc.S               |  3 +++
 2 files changed, 13 insertions(+)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index aca337d79d12..c5487806273f 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -430,6 +430,16 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
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
index aafed6902411..7103027b4e64 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -131,6 +131,7 @@ alternative_endif
 	ubfx	x11, x11, #1, #1
 	msr	oslar_el1, x11
 	reset_pmuserenr_el0 x0			// Disable PMU access from EL0
+	reset_amuserenr_el0 x0			// Disable AMU access from EL0
 
 alternative_if ARM64_HAS_RAS_EXTN
 	msr_s	SYS_DISR_EL1, xzr
@@ -423,6 +424,8 @@ SYM_FUNC_START(__cpu_setup)
 	isb					// Unmask debug exceptions now,
 	enable_dbg				// since this is per-cpu
 	reset_pmuserenr_el0 x0			// Disable PMU access from EL0
+	reset_amuserenr_el0 x0			// Disable AMU access from EL0
+
 	/*
 	 * Memory region attributes
 	 */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
