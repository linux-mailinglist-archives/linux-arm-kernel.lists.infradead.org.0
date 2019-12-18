Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A82E912509D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 19:27:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ewue3clJkDsEnppWaFCW6Z/rp+pL4tyy3iVvV62mqmY=; b=SnCaTCrW9GI2h8PFsQehb9qE8S
	tjD0b8ZuQxy6onGu/EBadOBZymZcYUBzZnW81hTf3vLyXUTX3SPmrshrv+Qt+BYnTbEvkdCW/UcxX
	c9irs5GcK5GQcH2TqI/s3wNgE+cudtDTOtIMzb50c4Dq3fGkxNv7uZwXqy7iovvDDGJLWsK7CrIoN
	An5jRXCfI0sROLueT77sgv2ssywsiKlqndEJ6rRXzkAJAmaGM5yh/2dbWuzCjKsjdaf8bX6p6CZJw
	4i0Z3YrJfx0RLYhGt5aY+Khb6PepntGT+h1gqhW0gzsEwnocxgricSQ7AcyWRjm1LUYEWQxBPujxT
	mWwyEG2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihe2r-0007p0-DA; Wed, 18 Dec 2019 18:27:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihe2P-0007k4-Us
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 18:27:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 684051FB;
 Wed, 18 Dec 2019 10:27:09 -0800 (PST)
Received: from e108754-lin.cambridge.arm.com (unknown [10.1.198.81])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6A1383F67D;
 Wed, 18 Dec 2019 10:27:07 -0800 (PST)
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: catalin.marinas@arm.com, will@kernel.org, mark.rutland@arm.com,
 maz@kernel.org, suzuki.poulose@arm.com, sudeep.holla@arm.com,
 dietmar.eggemann@arm.com, ionela.voinescu@arm.com
Subject: [PATCH v2 2/6] arm64: trap to EL1 accesses to AMU counters from EL0
Date: Wed, 18 Dec 2019 18:26:03 +0000
Message-Id: <20191218182607.21607-3-ionela.voinescu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191218182607.21607-1-ionela.voinescu@arm.com>
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_102710_058504_392165F3 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-doc@vger.kernel.org, peterz@infradead.org,
 Steve Capper <steve.capper@arm.com>, linux-kernel@vger.kernel.org,
 mingo@redhat.com, ggherdovich@suse.cz, linux-arm-kernel@lists.infradead.org
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
index 2cc0dd8bd9f7..83bb499e8916 100644
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
+	cbz	\tmpreg, 9000f			// Skip if no AMU present
+	msr_s	SYS_AMUSERENR_EL0, xzr		// Disable AMU access from EL0
+9000:
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
