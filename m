Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 520C21234FF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 19:35:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5OT+KNEScvvP8MsZ4Rz4upSavBfxFHQM38kD+iZoeoM=; b=c9we6k0hIPP+bU
	xdu1fxOxW4nRnz8S164oRpAaK1Nvt9kVy3J0KCz15dJa9QihkFPKNdY7dt+roXCvnsv4NxNw3iFvG
	MJcb0VtthEX5hpSrxzy2kFArH7JhUDyzuOOu3gQapMZR307rhMwu1Wf3V3akutTgLaBToEje3mHGG
	m/h5K8wcsyLd/xxyeRHr2QLgENrwCw+EgbA8+8uBmlNiK3DHvC3zymBO02UV+wWzTxf4je/jXLx/k
	eMQvLLSLvaxiDhy99SCy4NwQ2SPyDuqSJ03z7X73sMV8RVpFoqTg50HkFxp7zIbP1pd9r3TWLoZ4m
	33AkHNDV7doSPASvhgNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihHgd-00085B-Gn; Tue, 17 Dec 2019 18:35:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihHfo-0007cw-VQ
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 18:34:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F384330E;
 Tue, 17 Dec 2019 10:34:19 -0800 (PST)
Received: from ewhatever.cambridge.arm.com (ewhatever.cambridge.arm.com
 [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8A6283F67D;
 Tue, 17 Dec 2019 10:34:18 -0800 (PST)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/7] arm64: fpsimd: Make sure SVE setup is complete before
 SIMD is used
Date: Tue, 17 Dec 2019 18:33:57 +0000
Message-Id: <20191217183402.2259904-3-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191217183402.2259904-1-suzuki.poulose@arm.com>
References: <20191217183402.2259904-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_103421_065870_150A08EA 
X-CRM114-Status: GOOD (  12.49  )
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
Cc: mark.rutland@arm.com, ard.biesheuvel@linaro.org, maz@kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, christoffer.dall@arm.com,
 catalin.marinas@arm.com, will@kernel.org, dave.martin@arm.com
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
Cc: Will Deacon <will.deacon@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
Discussion here : https://lkml.kernel.org/r/20191014145204.GS27757@arm.com
---
 arch/arm64/include/asm/simd.h | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/simd.h b/arch/arm64/include/asm/simd.h
index 7434844036d3..afce6409be51 100644
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
+	return system_capabilities_finalized() &&
+	       system_supports_fpsimd() &&
+	       !in_irq() && !irqs_disabled() && !in_nmi() &&
+	       !this_cpu_read(fpsimd_context_busy);
 }
 
 #else /* ! CONFIG_KERNEL_MODE_NEON */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
