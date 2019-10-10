Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09279D2387
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 10:49:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jX2cS/Ch50dBGJ6TuT2ZngnaVH2GBRG2Ffh/WRUwrRE=; b=MObU8hezC5TYma
	8E6J7lfEGLa3IslXVOcf5NsT0aleiLmHfj+KuUR0kklbeD3g2v/dc57briacpbIPRVqtLxu+BZIGw
	gmzIHdIYBsB+mMhGIKUusb3zDeYiynfrAvdGrFPK//G4XrRdWYgeR09ZqmB8BiXJv/0iqCDuEWsaU
	1afAI/HF8zLyrLCkGNnQbyBPzli5IAvAlguA0Hs8OUV/US9iy3lLqiToilTcYLz+5F6qNbehhNge5
	pI8OsrsMiNlMgAd8nKH3OEsJ0GBgs602ScGRUSg2L5Q1cRnJR+W2LQ7AHSW7VykrSxeiQ0f/ZOHM1
	x6FuSRFluRe/dR/vgBEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIU86-00045S-5q; Thu, 10 Oct 2019 08:49:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIU7W-0003sS-0z
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 08:48:27 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3B50E208C3;
 Thu, 10 Oct 2019 08:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570697304;
 bh=oao8EGCviC1uG/vEmaLziTEieGml2DsRK5XwBRMeSjI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Wzt4W63e5aEs8+tagvcGuRu+xpgd3IxESPsj8tFtF0GvHyEMzAE8pDbIjMUdJtbxH
 VmUJ6ziI1wWLzZon3XYhPenzC6eJk6d8Siec0IzKxXaFgX8nwFbme22Q4hskYOYQAz
 TwaZaIp0QiQtdOwz50kAQXQUTpcG2WHjfh9mnTjg=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4.19 094/114] arm64: add sysfs vulnerability show for meltdown
Date: Thu, 10 Oct 2019 10:36:41 +0200
Message-Id: <20191010083613.091754245@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191010083544.711104709@linuxfoundation.org>
References: <20191010083544.711104709@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_014826_183026_7120EC35 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Jeremy Linton <jeremy.linton@arm.com>, stable@vger.kernel.org,
 Andre Przywara <andre.przywara@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jeremy Linton <jeremy.linton@arm.com>

[ Upstream commit 1b3ccf4be0e7be8c4bd8522066b6cbc92591e912 ]

We implement page table isolation as a mitigation for meltdown.
Report this to userspace via sysfs.

Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/arm64/kernel/cpufeature.c |   58 +++++++++++++++++++++++++++++++----------
 1 file changed, 44 insertions(+), 14 deletions(-)

--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -889,7 +889,7 @@ static bool has_cache_dic(const struct a
 	return ctr & BIT(CTR_DIC_SHIFT);
 }
 
-#ifdef CONFIG_UNMAP_KERNEL_AT_EL0
+static bool __meltdown_safe = true;
 static int __kpti_forced; /* 0: not forced, >0: forced on, <0: forced off */
 
 static bool unmap_kernel_at_el0(const struct arm64_cpu_capabilities *entry,
@@ -908,6 +908,16 @@ static bool unmap_kernel_at_el0(const st
 		{ /* sentinel */ }
 	};
 	char const *str = "command line option";
+	bool meltdown_safe;
+
+	meltdown_safe = is_midr_in_range_list(read_cpuid_id(), kpti_safe_list);
+
+	/* Defer to CPU feature registers */
+	if (has_cpuid_feature(entry, scope))
+		meltdown_safe = true;
+
+	if (!meltdown_safe)
+		__meltdown_safe = false;
 
 	/*
 	 * For reasons that aren't entirely clear, enabling KPTI on Cavium
@@ -919,6 +929,19 @@ static bool unmap_kernel_at_el0(const st
 		__kpti_forced = -1;
 	}
 
+	/* Useful for KASLR robustness */
+	if (IS_ENABLED(CONFIG_RANDOMIZE_BASE) && kaslr_offset() > 0) {
+		if (!__kpti_forced) {
+			str = "KASLR";
+			__kpti_forced = 1;
+		}
+	}
+
+	if (!IS_ENABLED(CONFIG_UNMAP_KERNEL_AT_EL0)) {
+		pr_info_once("kernel page table isolation disabled by kernel configuration\n");
+		return false;
+	}
+
 	/* Forced? */
 	if (__kpti_forced) {
 		pr_info_once("kernel page table isolation forced %s by %s\n",
@@ -926,18 +949,10 @@ static bool unmap_kernel_at_el0(const st
 		return __kpti_forced > 0;
 	}
 
-	/* Useful for KASLR robustness */
-	if (IS_ENABLED(CONFIG_RANDOMIZE_BASE))
-		return true;
-
-	/* Don't force KPTI for CPUs that are not vulnerable */
-	if (is_midr_in_range_list(read_cpuid_id(), kpti_safe_list))
-		return false;
-
-	/* Defer to CPU feature registers */
-	return !has_cpuid_feature(entry, scope);
+	return !meltdown_safe;
 }
 
+#ifdef CONFIG_UNMAP_KERNEL_AT_EL0
 static void
 kpti_install_ng_mappings(const struct arm64_cpu_capabilities *__unused)
 {
@@ -962,6 +977,12 @@ kpti_install_ng_mappings(const struct ar
 
 	return;
 }
+#else
+static void
+kpti_install_ng_mappings(const struct arm64_cpu_capabilities *__unused)
+{
+}
+#endif	/* CONFIG_UNMAP_KERNEL_AT_EL0 */
 
 static int __init parse_kpti(char *str)
 {
@@ -975,7 +996,6 @@ static int __init parse_kpti(char *str)
 	return 0;
 }
 early_param("kpti", parse_kpti);
-#endif	/* CONFIG_UNMAP_KERNEL_AT_EL0 */
 
 #ifdef CONFIG_ARM64_HW_AFDBM
 static inline void __cpu_enable_hw_dbm(void)
@@ -1196,7 +1216,6 @@ static const struct arm64_cpu_capabiliti
 		.field_pos = ID_AA64PFR0_EL0_SHIFT,
 		.min_field_value = ID_AA64PFR0_EL0_32BIT_64BIT,
 	},
-#ifdef CONFIG_UNMAP_KERNEL_AT_EL0
 	{
 		.desc = "Kernel page table isolation (KPTI)",
 		.capability = ARM64_UNMAP_KERNEL_AT_EL0,
@@ -1212,7 +1231,6 @@ static const struct arm64_cpu_capabiliti
 		.matches = unmap_kernel_at_el0,
 		.cpu_enable = kpti_install_ng_mappings,
 	},
-#endif
 	{
 		/* FP/SIMD is not implemented */
 		.capability = ARM64_HAS_NO_FPSIMD,
@@ -1853,3 +1871,15 @@ void cpu_clear_disr(const struct arm64_c
 	/* Firmware may have left a deferred SError in this register. */
 	write_sysreg_s(0, SYS_DISR_EL1);
 }
+
+ssize_t cpu_show_meltdown(struct device *dev, struct device_attribute *attr,
+			  char *buf)
+{
+	if (__meltdown_safe)
+		return sprintf(buf, "Not affected\n");
+
+	if (arm64_kernel_unmapped_at_el0())
+		return sprintf(buf, "Mitigation: PTI\n");
+
+	return sprintf(buf, "Vulnerable\n");
+}



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
