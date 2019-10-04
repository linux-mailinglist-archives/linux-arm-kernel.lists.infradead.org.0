Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 969C9CBA05
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:10:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7lRDoFa/pcMqWGIT4rqmS8Ezifs3ZGY31OvOitzQQCk=; b=e7l7aNxaSq5pDo
	Lx54wd/XqONtzMWiUKmbgd96uq59ON+Uf+qgq1S2vUXbP2d/OYILE6JDlKQ1uPYbBrgfdnI9C+Y5C
	ibH/hV1QZnULylzqgqGCZHwQtiEYiMGe45/F4CDOByKSGv7fALCQ4IYAchv8Jkr4FgI17o+JSr6Rs
	zmjyIkWUNNjF2zJFFQgkW9q+1zctveYVi352octisDIJKE5KVGtOMF679UUh2SEZ31AC87Bxb9Zhm
	pLu59mSLe4am5rDk2P3Hrj99FhXYWMCgQow5HZrBxZsIcho4qC4fEpavq2Fu/hBufgI0NGZhVEzve
	SR3Lri8WJRqB72qwEsJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMQ8-0000uh-EG; Fri, 04 Oct 2019 12:10:52 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMKF-0001qR-PR
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:04:50 +0000
Received: by mail-wr1-x441.google.com with SMTP id y19so6890075wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 05:04:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FAtbDeWjPlKkFNUFITEx0/p3Vh2NGLFot6q73BBvfrs=;
 b=YtxiqArpScdYa6I9iPo5QbXkBiWbNHIyc2ilgsdvbc2UL6G8h0NxL0+OLtdrK0/6qK
 HgbDV8P+gK2baq5cpXV3wI3/oiOj6bfR6dogI30B8gld4LqeAx5BKtqQpMguLCjzcDFG
 xf82TxmqDEsmiDG7JCWiu1Htvqif/rJr4e/NI80yqzDd6CfZmVgZ51rJwS+4l1Q+gtTr
 ilRjHBcPzDpE2cKIPXJzFzujSsyvJ7Am47wBaQQBmV1c2ghIGYiBxmOwrxPSIo7YLXnR
 7gHLXcQBh0kKtHke0fgs9AAKRFqoXo8deGqAC+68rzzoqkt/OGJaooUKj06iZf+o3JvZ
 s2Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FAtbDeWjPlKkFNUFITEx0/p3Vh2NGLFot6q73BBvfrs=;
 b=MUCmgQ44oSJB88D0pbgoWlS6g/9R6RBigYdxYWtedI4GhriM5mDPA12qgJkLxe6wur
 YR93WRrNMaQg2TA4kEz20yEc+tkrDRITEu+EY5nWWE0kS34kxTPM+rUoizW/L6rJmrUt
 J4FYut0NUirAQbf3R7IS7zm5IvOQvBfiQo6VSN2rvkSFt3+vFoWQzV9cVAtQALBeCGCC
 /mlfSZ4xlA//1vSRFRlY+R717xfc98RG0RD8dLI2Pzh8bV8dP2dXdQX2m/7VwSgSBq5K
 nY7Fqtp0uuD3Bc5Tw8USyA2WrmYOXgpbxgTSWEpyF51sVacuYplTTIAF/DZTfjLhvSAn
 8hPA==
X-Gm-Message-State: APjAAAVMeOF+SpvCSLyZtdYDG68ucUIyiWSNGEeI3zMrUKrPKfi/TYvo
 xETZLNc6fXDqnTlWWLdUkwPIJ7ZG4cWKO030
X-Google-Smtp-Source: APXvYqznMVLiyDuOchQ7CeXVcd4v8/xRZGSmLl7pz2sEYKXd1IFrIQvbZo58hLQyd/hAU6dRJPEzNw==
X-Received: by 2002:adf:cc0a:: with SMTP id x10mr7548980wrh.195.1570190685438; 
 Fri, 04 Oct 2019 05:04:45 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:b51e:3d9d:ec16:def5])
 by smtp.gmail.com with ESMTPSA id f8sm5019628wmb.37.2019.10.04.05.04.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 04 Oct 2019 05:04:44 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC/RFT PATCH 07/16] arm64: add sysfs vulnerability show for meltdown
Date: Fri,  4 Oct 2019 14:04:21 +0200
Message-Id: <20191004120430.11929-8-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
References: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050447_892527_CE0A016D 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Stefan Wahren <stefan.wahren@i2se.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Jeremy Linton <jeremy.linton@arm.com>, Andre Przywara <andre.przywara@arm.com>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jeremy Linton <jeremy.linton@arm.com>

We implement page table isolation as a mitigation for meltdown.
Report this to userspace via sysfs.

Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
(cherry picked from commit 1b3ccf4be0e7be8c4bd8522066b6cbc92591e912)
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm64/kernel/cpufeature.c | 58 +++++++++++++++-----
 1 file changed, 44 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 18fd61f6d578..e93bbadc0cf1 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -889,7 +889,7 @@ static bool has_cache_dic(const struct arm64_cpu_capabilities *entry,
 	return ctr & BIT(CTR_DIC_SHIFT);
 }
 
-#ifdef CONFIG_UNMAP_KERNEL_AT_EL0
+static bool __meltdown_safe = true;
 static int __kpti_forced; /* 0: not forced, >0: forced on, <0: forced off */
 
 static bool unmap_kernel_at_el0(const struct arm64_cpu_capabilities *entry,
@@ -908,6 +908,16 @@ static bool unmap_kernel_at_el0(const struct arm64_cpu_capabilities *entry,
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
@@ -919,6 +929,19 @@ static bool unmap_kernel_at_el0(const struct arm64_cpu_capabilities *entry,
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
@@ -926,18 +949,10 @@ static bool unmap_kernel_at_el0(const struct arm64_cpu_capabilities *entry,
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
@@ -962,6 +977,12 @@ kpti_install_ng_mappings(const struct arm64_cpu_capabilities *__unused)
 
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
@@ -1196,7 +1216,6 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 		.field_pos = ID_AA64PFR0_EL0_SHIFT,
 		.min_field_value = ID_AA64PFR0_EL0_32BIT_64BIT,
 	},
-#ifdef CONFIG_UNMAP_KERNEL_AT_EL0
 	{
 		.desc = "Kernel page table isolation (KPTI)",
 		.capability = ARM64_UNMAP_KERNEL_AT_EL0,
@@ -1212,7 +1231,6 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 		.matches = unmap_kernel_at_el0,
 		.cpu_enable = kpti_install_ng_mappings,
 	},
-#endif
 	{
 		/* FP/SIMD is not implemented */
 		.capability = ARM64_HAS_NO_FPSIMD,
@@ -1853,3 +1871,15 @@ void cpu_clear_disr(const struct arm64_cpu_capabilities *__unused)
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
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
