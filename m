Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C329ECFDF9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:44:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9/qIMS78CZ3ignXTEMyl9GVBlEczsyxXgufTBX9imos=; b=h8KMHGQzHDo6IV
	frSNl9uO/rBaioxUU1nwYndbe4aLESTI0VAPrOlrat1jarqF8DA38ANgoQqNzKw3qC1YsqMiI+dMu
	wdkIV7b9L8Pe6J9KDGoAbi/cH8NDh/0ScQKgkhNi015nfcWDm3D/uKJOE1YIqDc6Jk2gtSBECW1wY
	XB8edN1kYvd7THkNMGJ1oNFStXh8ywqW3TYtIEBcIlg5wBnKBUXiq+2unCOuGRWAVIutrj7HMdZlP
	RC/b/TWokMq2ctH9ix4eRHwrZpT273Ch2xatd7fE5ARgi/2XOVJiTnbIuGdqRmL1xtL/pIRLjFO0n
	jgWO2o0S4wPwRatWCyLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrev-0001od-5Y; Tue, 08 Oct 2019 15:44:21 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHrbC-00073j-1a
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:40:32 +0000
Received: by mail-wr1-x442.google.com with SMTP id y19so19989030wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 08:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JOvKy1GbTi20JqNMvkeKTi1lW+5+cqwwGpuEUI/Ysxc=;
 b=eSXtLXRfB+u5AM5fRljB1O24I3P9mF3ckg4wSyaX2RllVZNKKj6xFkvYsKcsSOQs7l
 AXf+eYQqTFeu0M1XsKmUgJ7h+kXXYtOMbtNeSiGi7LdA+8a+jAgMtW4OL2lcP4yt+WQc
 L7rIoqAO3WA7c5CbGlbO7GqPcOzDBBC225I8bvA/QCZNm3AY0jBF9VusKAaE+/KQjzEf
 LC+gAx5Tb0Q4xW2QggmTlkTdL0194r40UIyG0M4cX/jhLp58EwC9PFfmXHpPV8rN1nbh
 v5AaHFpttizItBIhe4Dt0WTo1he9ZkZV6o+Jq5nG+YObDyR/z0nJ6JCRBFUeLPXBQbPh
 HrKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JOvKy1GbTi20JqNMvkeKTi1lW+5+cqwwGpuEUI/Ysxc=;
 b=OIUXdGXhipPgtP32y2/ofZsP2oGFWkOuQCmCCJwoo3HE7oxcIz8r8RaxrLG9RSsjvZ
 H3OMksw0XG5zToad+eWFa9EnbUht/7wAn3DPaCIIExX/IBXjiwi/fMq8TeAQ3c/XaVLU
 KDqWSbcsy4pfT04BkHqJ8aj93Rn64Bh1Zzm83XgrsSFRgiLn8bpfgcTlig8Jz3jx+y/y
 gWcjL/i1Uef9nHdFvTyYSO/Juyv5MEiwSJQhIFXpbaarIu4LbogxAL7Lbm6X6pIEkqIV
 j5aKqhPUFkyh2GPugCMipAwPbR5p3Knr7Tz+Ii+0Z/CHgLtdAVKsiYJ+AwQuf7rHcXOX
 MdfA==
X-Gm-Message-State: APjAAAV75hDWrI71cuuRCKe19In3eI7wmD3wLVQMFwrJo4bq6HraJnsc
 afksX8ds/dxAzHvLUiebLFtdo34m1ipAgg==
X-Google-Smtp-Source: APXvYqy1WJDJi3jkSv1voXPul1RP8xbi3zp+c4KQSv6elr4Mw5n57P3dQmnS9eGzcP0I5TXc12FNNg==
X-Received: by 2002:a5d:61c1:: with SMTP id q1mr14045394wrv.235.1570549227501; 
 Tue, 08 Oct 2019 08:40:27 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id x16sm16784723wrl.32.2019.10.08.08.40.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 08:40:26 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.19 14/16] arm64: add sysfs vulnerability show
 for speculative store bypass
Date: Tue,  8 Oct 2019 17:39:28 +0200
Message-Id: <20191008153930.15386-15-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
References: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_084030_198036_F0653696 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, Will Deacon <will.deacon@arm.com>,
 Jeremy Linton <jeremy.linton@arm.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jeremy Linton <jeremy.linton@arm.com>

[ Upstream commit 526e065dbca6df0b5a130b84b836b8b3c9f54e21 ]

Return status based on ssbd_state and __ssb_safe. If the
mitigation is disabled, or the firmware isn't responding then
return the expected machine state based on a whitelist of known
good cores.

Given a heterogeneous machine, the overall machine vulnerability
defaults to safe but is reset to unsafe when we miss the whitelist
and the firmware doesn't explicitly tell us the core is safe.
In order to make that work we delay transitioning to vulnerable
until we know the firmware isn't responding to avoid a case
where we miss the whitelist, but the firmware goes ahead and
reports the core is not vulnerable. If all the cores in the
machine have SSBS, then __ssb_safe will remain true.

Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
---
 arch/arm64/kernel/cpu_errata.c | 42 ++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index b29d0b3b18b2..0ce4a6aaf6fc 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -233,6 +233,7 @@ static int detect_harden_bp_fw(void)
 DEFINE_PER_CPU_READ_MOSTLY(u64, arm64_ssbd_callback_required);
 
 int ssbd_state __read_mostly = ARM64_SSBD_KERNEL;
+static bool __ssb_safe = true;
 
 static const struct ssbd_options {
 	const char	*str;
@@ -336,6 +337,7 @@ static bool has_ssbd_mitigation(const struct arm64_cpu_capabilities *entry,
 	struct arm_smccc_res res;
 	bool required = true;
 	s32 val;
+	bool this_cpu_safe = false;
 
 	WARN_ON(scope != SCOPE_LOCAL_CPU || preemptible());
 
@@ -344,8 +346,14 @@ static bool has_ssbd_mitigation(const struct arm64_cpu_capabilities *entry,
 		goto out_printmsg;
 	}
 
+	/* delay setting __ssb_safe until we get a firmware response */
+	if (is_midr_in_range_list(read_cpuid_id(), entry->midr_range_list))
+		this_cpu_safe = true;
+
 	if (psci_ops.smccc_version == SMCCC_VERSION_1_0) {
 		ssbd_state = ARM64_SSBD_UNKNOWN;
+		if (!this_cpu_safe)
+			__ssb_safe = false;
 		return false;
 	}
 
@@ -362,6 +370,8 @@ static bool has_ssbd_mitigation(const struct arm64_cpu_capabilities *entry,
 
 	default:
 		ssbd_state = ARM64_SSBD_UNKNOWN;
+		if (!this_cpu_safe)
+			__ssb_safe = false;
 		return false;
 	}
 
@@ -370,14 +380,18 @@ static bool has_ssbd_mitigation(const struct arm64_cpu_capabilities *entry,
 	switch (val) {
 	case SMCCC_RET_NOT_SUPPORTED:
 		ssbd_state = ARM64_SSBD_UNKNOWN;
+		if (!this_cpu_safe)
+			__ssb_safe = false;
 		return false;
 
+	/* machines with mixed mitigation requirements must not return this */
 	case SMCCC_RET_NOT_REQUIRED:
 		pr_info_once("%s mitigation not required\n", entry->desc);
 		ssbd_state = ARM64_SSBD_MITIGATED;
 		return false;
 
 	case SMCCC_RET_SUCCESS:
+		__ssb_safe = false;
 		required = true;
 		break;
 
@@ -387,6 +401,8 @@ static bool has_ssbd_mitigation(const struct arm64_cpu_capabilities *entry,
 
 	default:
 		WARN_ON(1);
+		if (!this_cpu_safe)
+			__ssb_safe = false;
 		return false;
 	}
 
@@ -427,6 +443,14 @@ static bool has_ssbd_mitigation(const struct arm64_cpu_capabilities *entry,
 	return required;
 }
 
+/* known invulnerable cores */
+static const struct midr_range arm64_ssb_cpus[] = {
+	MIDR_ALL_VERSIONS(MIDR_CORTEX_A35),
+	MIDR_ALL_VERSIONS(MIDR_CORTEX_A53),
+	MIDR_ALL_VERSIONS(MIDR_CORTEX_A55),
+	{},
+};
+
 #ifdef CONFIG_ARM64_ERRATUM_1463225
 DEFINE_PER_CPU(int, __in_cortex_a76_erratum_1463225_wa);
 
@@ -748,6 +772,7 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 		.capability = ARM64_SSBD,
 		.type = ARM64_CPUCAP_LOCAL_CPU_ERRATUM,
 		.matches = has_ssbd_mitigation,
+		.midr_range_list = arm64_ssb_cpus,
 	},
 #ifdef CONFIG_ARM64_ERRATUM_1463225
 	{
@@ -778,3 +803,20 @@ ssize_t cpu_show_spectre_v2(struct device *dev, struct device_attribute *attr,
 
 	return sprintf(buf, "Vulnerable\n");
 }
+
+ssize_t cpu_show_spec_store_bypass(struct device *dev,
+		struct device_attribute *attr, char *buf)
+{
+	if (__ssb_safe)
+		return sprintf(buf, "Not affected\n");
+
+	switch (ssbd_state) {
+	case ARM64_SSBD_KERNEL:
+	case ARM64_SSBD_FORCE_ENABLE:
+		if (IS_ENABLED(CONFIG_ARM64_SSBD))
+			return sprintf(buf,
+			    "Mitigation: Speculative Store Bypass disabled via prctl\n");
+	}
+
+	return sprintf(buf, "Vulnerable\n");
+}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
