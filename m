Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E81ECFDEC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:42:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8OIk8x4oo0wR2NSTAAfB2heOkFreW0SOq2Pu3SSCrNc=; b=Tg7xk1ow17UVlN
	GzbrdrSPSyvqETw8sgJ2k+A05QxNYe8bNAl/EmWdh1Y6ers4wGXgYznPodPOqLlkry7oa6GuxvdhM
	YEnosW0VDutNHBMCeMrxTD7drZf2RxLgS8GdnJVoe9wYX0zLbhnbc37atoI7zeb0GOXr3HdM616F+
	Cr/p6sAHaS1JX7QtesuUWCPg2TU/HvCsnJClGpqloHygLQPtj7txTeGrap1Z8OdVGKWB/rLZUCqO8
	VMiYt17R+wFVm5AIsKjRed+X7CYtWcxnIF8OppGPT6xma0Oy2uCTw57bwdk7QKU5XpTcLGnwQXcmz
	2vOcPujqNFvqwV/agbrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrd1-00009S-3u; Tue, 08 Oct 2019 15:42:23 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHrb0-0006u2-Sh
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:40:20 +0000
Received: by mail-wr1-x444.google.com with SMTP id o18so19925886wrv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 08:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kbzBcWnld/N54945YghT0NSVpVg+3HASkkBRpykqA4g=;
 b=AOjgSQ5UM5dZI8mnyvs1Buj1mSIR4IiEF5MT3WaNMNGDjKY/zDzdcXs6wzbvvEGyqa
 tc9ul4fdH/d3vR4vMFj+CEK7p2Tu6WXu3wjQ/pxPxnfz0rzczFgJKe55673RTq8VF0aV
 Ad5xKj/ZUJ2ISNX02vCdwCq83flR5ZtloCrrH6LDksK1TK+H9lV/pyHAMpBlyYtANC3w
 mIGZH7llT4Pz98QM0E9yZwlF6kg6Z31iQtkR/QSldpfSISpFcuaHRNtV+67qDeEiKKC/
 U54qqrfjkPPBt/2loB9AEDBpveQQyFEew6vahtJppXmJ16ugzT4XzXOQ9h+Lj5SY6NDA
 pcdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kbzBcWnld/N54945YghT0NSVpVg+3HASkkBRpykqA4g=;
 b=WJSMFtmh74oedwPXF0419of05eNgJlZADTQqRCMFip345iBgjxIMk6MeKw9vRyuVrk
 DE8jTo+wFb0aDjVWrj4tlDGV+W5n6ejoyM9SskagVTCMdCFnuawe+WWee3CiJQBOG2cJ
 +uCFExWwIVvzhamSmA1DC0nMLMGsZ5EfCmQjzW6K429nP2vHiOp9xEG1SP5nJtnz2hEJ
 mtEmGiFmsMz1kxQg0qztZdgsJLXR/qa7Fluu474gRXc6VmGOJuCyw/si3VFllh4dx86d
 7CyBb5RDQZWxlVbgmsi2kPja8URSMiLKx4lmYxIOXQQcomRo6G22Lo9GaGtHNQfODQ8+
 2auw==
X-Gm-Message-State: APjAAAVpjrOKIPlEuc2r/Ar/oYqGsjtmbgkEYy8/UlUQ/NNkhjFaqdZd
 AdlhAZ9i9KzKQmfuDcXC0nGdAi0/WdZL/A==
X-Google-Smtp-Source: APXvYqw8A5aVYGVWA2WGBoHoKxRbamgkLIL62HlIFOoM0hRhqAgDqHKKp6Du8OXl1x4E2JpEc/8ulg==
X-Received: by 2002:a5d:45cb:: with SMTP id b11mr28845784wrs.109.1570549216953; 
 Tue, 08 Oct 2019 08:40:16 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id x16sm16784723wrl.32.2019.10.08.08.40.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 08:40:16 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.19 07/16] arm64: add sysfs vulnerability show
 for meltdown
Date: Tue,  8 Oct 2019 17:39:21 +0200
Message-Id: <20191008153930.15386-8-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
References: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_084018_979316_E0C1A059 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Jeremy Linton <jeremy.linton@arm.com>, stable@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>
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
---
 arch/arm64/kernel/cpufeature.c | 58 +++++++++++++++-----
 1 file changed, 44 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 9c756a1657aa..e636d37d7087 100644
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
