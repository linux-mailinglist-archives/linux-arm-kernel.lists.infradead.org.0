Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB0D139D56
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 00:31:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sa3e20XKAfQzUcLK5ZhKUXKGfprjH0njjXQkguclLaw=; b=q5m5LI5l6qSaFp
	lCt3SrJ1twHOHo5lnpSjiGZ2jMmnBhr/LIjfx1GpJP+C+oHgBwDeo/VKUxaa1IvDvooy0GznVVKSG
	XvRquV31LNcasGrU7VrfuzVUBL4/3Za7Lf0ElcEs+iUWvwuIfqgFHc3yy5nAmo3tYkPCs0Wy2eWV/
	FSpqAI+89sVC76JYegjyiAMo+zA75RQubottfd7P2hQXhWQfN07JV5/CnyNrt8MX5ZuGLXU39CFRz
	zre9hIRDohroaARFp2vF1WhyZVd1rKF9tVZ1fGRtugaELKwWnnJTsOIRh7U6iIx30BqPrD1aRJ0JD
	3M8Pp3ZLEjmPEWkWEJpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir9BF-0005hf-JS; Mon, 13 Jan 2020 23:31:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir9Av-0005bv-9H
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 23:31:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D953F11B3;
 Mon, 13 Jan 2020 15:31:12 -0800 (PST)
Received: from ewhatever.cambridge.arm.com (ewhatever.cambridge.arm.com
 [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BFBF73F68E;
 Mon, 13 Jan 2020 15:31:11 -0800 (PST)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/7] arm64: fpsimd: Make sure SVE setup is complete before
 SIMD is used
Date: Mon, 13 Jan 2020 23:30:18 +0000
Message-Id: <20200113233023.928028-3-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200113233023.928028-1-suzuki.poulose@arm.com>
References: <20200113233023.928028-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_153113_408384_A256C1EB 
X-CRM114-Status: GOOD (  12.77  )
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
Cc: mark.rutland@arm.com, ard.biesheuvel@linaro.org, maz@kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 catalin.marinas@arm.com, will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In-kernel users of NEON rely on may_use_simd() to check if the SIMD
can be used. However, we must initialize the SVE before SIMD can
be used. Add a sanity check to make sure that we have completed the
SVE setup before anyone uses the SIMD.

Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
Changes since v2:
  - Add WARN_ON() in may_use_simd() if invoked before caps
    are finalized()
---
 arch/arm64/include/asm/simd.h | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/simd.h b/arch/arm64/include/asm/simd.h
index 7434844036d3..89cba2622b79 100644
--- a/arch/arm64/include/asm/simd.h
+++ b/arch/arm64/include/asm/simd.h
@@ -26,6 +26,8 @@ DECLARE_PER_CPU(bool, fpsimd_context_busy);
 static __must_check inline bool may_use_simd(void)
 {
 	/*
+	 * We must make sure that the SVE has been initialized properly
+	 * before using the SIMD in kernel.
 	 * fpsimd_context_busy is only set while preemption is disabled,
 	 * and is clear whenever preemption is enabled. Since
 	 * this_cpu_read() is atomic w.r.t. preemption, fpsimd_context_busy
@@ -33,8 +35,10 @@ static __must_check inline bool may_use_simd(void)
 	 * migrated, and if it's clear we cannot be migrated to a CPU
 	 * where it is set.
 	 */
-	return !in_irq() && !irqs_disabled() && !in_nmi() &&
-		!this_cpu_read(fpsimd_context_busy);
+	return !WARN_ON(!system_capabilities_finalized()) &&
+	       system_supports_fpsimd() &&
+	       !in_irq() && !irqs_disabled() && !in_nmi() &&
+	       !this_cpu_read(fpsimd_context_busy);
 }
 
 #else /* ! CONFIG_KERNEL_MODE_NEON */
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
