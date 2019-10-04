Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0C6CBA11
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:12:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kdyHhPMmwZ3JXw4A0aTJiNvT14/iIXmJoZUDVr38ssk=; b=K7YnAeqe+dc758
	PKCUBB1EKJr3mMqTdWbIzEArzD3lg3RL2y9k5CIwcn0+ba46qOp87wRlFvHBcewlo+1+FvBi0dlGb
	AHCt45Gs9C5gHPvuEU5KYlNS6veTxYCTTKafMthIGqKRqoWwSnaPrruk36p0kTxE0eosFQRqL7qq6
	W4ARka1H61QUkf4m3d2fWToQs69v79xl5IF1IfGQo8AgCIoVrosDpz5BlgcXkkoV0N1k7z+fjzfPh
	UShpT+e5W5Za+R3z3ZxgNL6BV9EHbfpEHdxDRer/NyVrSSfSPFc1Z7VPVdg8vjkLHIuPEHy9kZQ8g
	GZy+orY8iXhXfMmp4dNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMRh-0002V3-Cv; Fri, 04 Oct 2019 12:12:29 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMKN-0001wd-4I
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:04:58 +0000
Received: by mail-wr1-x444.google.com with SMTP id j11so1080023wrp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 05:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Z3yfkGPPDxwuc3Iyqi5NnIEB57DgeJDhHrId4yOa5Ag=;
 b=x3r0rNABzw8FQK5n8Kg+8Ti1kcRm7M/M3Ue1e1GdtCwV1oMhs7d+lvW+odW9wt5EtD
 MMAItiQAHQnNM4IRkKd3mYY/PSGVfmQ6bQe9fwHLTP/tjpDyBljc6rDWCljXw491cF/3
 YgB2emtKQjepGdJbE+2p9UEC8k5jWKlJaV3jf4Vxf1Ytx4rDAUxYHUY8LGIEvvxBPelS
 EnyeFGswdtYbRmdt54PJQiTm68/eAHk1wnVC2EkNNh5/4XqNt/H6u3p6kRFUaeolaAEb
 XTCfj06bdbSHhfai43LWFGcxlj4MlQVp2TbQ6gTh/kUtqi96yPnAW8dmgcY301BuqeUS
 K9Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Z3yfkGPPDxwuc3Iyqi5NnIEB57DgeJDhHrId4yOa5Ag=;
 b=jNrB4NGPK5Nw3ZNaTvxNVwtf7lTRpeQNXn9JJX2IxUlUJGABUvfkHncwfn/pz0G9ZX
 5gX9DVhmauJYCFkPz5HWWL5USGkW/2WK4SRAKCpSphmtvYaKg+ljZCz2beY/RCEAGL1p
 XqwbAr9FpsYeawe/ljAgGLjynnksDQIogkDTvNP26VV9o0/9v4I+Z0QdZO49hQ5J7rR+
 i4jCi/UlwIhjXUbuEkmAn962bBeZ7Ov+kpJkia18JHpwx+KDHizyF2EUOc9hptY14h3x
 60fZroJyj3TIc2h41bZFKwBiIy9U4C/uHdFhRYJR3MidizCux9mdSMtYGW276LguRhSE
 5n8A==
X-Gm-Message-State: APjAAAXouiplQhj72T9hDNnxwYVEke/MoqJaE3XVffufe+bfFnl9fSXe
 HqYB9MB6UNmSEgSdKwe91rqz7dB5B/Aq6jEL
X-Google-Smtp-Source: APXvYqzHG904BjtgZR93K5y9l9xIJdFEOtQV850OUN+PVpYpOemUrM/9YN1w3CNj7qbhPhts9NfLPg==
X-Received: by 2002:adf:9d88:: with SMTP id p8mr10934277wre.391.1570190693434; 
 Fri, 04 Oct 2019 05:04:53 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:b51e:3d9d:ec16:def5])
 by smtp.gmail.com with ESMTPSA id f8sm5019628wmb.37.2019.10.04.05.04.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 04 Oct 2019 05:04:52 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC/RFT PATCH 13/16] arm64: add sysfs vulnerability show for
 spectre-v2
Date: Fri,  4 Oct 2019 14:04:27 +0200
Message-Id: <20191004120430.11929-14-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
References: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050455_242918_97D53AAC 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Track whether all the cores in the machine are vulnerable to Spectre-v2,
and whether all the vulnerable cores have been mitigated. We then expose
this information to userspace via sysfs.

Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
(cherry picked from commit d2532e27b5638bb2e2dd52b80b7ea2ec65135377)
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm64/kernel/cpu_errata.c | 27 +++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 78ce2e27396d..6c8e8a5bfabf 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -480,6 +480,10 @@ has_cortex_a76_erratum_1463225(const struct arm64_cpu_capabilities *entry,
 	.type = ARM64_CPUCAP_LOCAL_CPU_ERRATUM,			\
 	CAP_MIDR_RANGE_LIST(midr_list)
 
+/* Track overall mitigation state. We are only mitigated if all cores are ok */
+static bool __hardenbp_enab = true;
+static bool __spectrev2_safe = true;
+
 /*
  * List of CPUs that do not need any Spectre-v2 mitigation at all.
  */
@@ -490,6 +494,10 @@ static const struct midr_range spectre_v2_safe_list[] = {
 	{ /* sentinel */ }
 };
 
+/*
+ * Track overall bp hardening for all heterogeneous cores in the machine.
+ * We are only considered "safe" if all booted cores are known safe.
+ */
 static bool __maybe_unused
 check_branch_predictor(const struct arm64_cpu_capabilities *entry, int scope)
 {
@@ -511,6 +519,8 @@ check_branch_predictor(const struct arm64_cpu_capabilities *entry, int scope)
 	if (!need_wa)
 		return false;
 
+	__spectrev2_safe = false;
+
 	if (!IS_ENABLED(CONFIG_HARDEN_BRANCH_PREDICTOR)) {
 		pr_warn_once("spectrev2 mitigation disabled by kernel configuration\n");
 		__hardenbp_enab = false;
@@ -520,11 +530,14 @@ check_branch_predictor(const struct arm64_cpu_capabilities *entry, int scope)
 	/* forced off */
 	if (__nospectre_v2) {
 		pr_info_once("spectrev2 mitigation disabled by command line option\n");
+		__hardenbp_enab = false;
 		return false;
 	}
 
-	if (need_wa < 0)
+	if (need_wa < 0) {
 		pr_warn_once("ARM_SMCCC_ARCH_WORKAROUND_1 missing from firmware\n");
+		__hardenbp_enab = false;
+	}
 
 	return (need_wa > 0);
 }
@@ -721,3 +734,15 @@ ssize_t cpu_show_spectre_v1(struct device *dev, struct device_attribute *attr,
 {
 	return sprintf(buf, "Mitigation: __user pointer sanitization\n");
 }
+
+ssize_t cpu_show_spectre_v2(struct device *dev, struct device_attribute *attr,
+		char *buf)
+{
+	if (__spectrev2_safe)
+		return sprintf(buf, "Not affected\n");
+
+	if (__hardenbp_enab)
+		return sprintf(buf, "Mitigation: Branch predictor hardening\n");
+
+	return sprintf(buf, "Vulnerable\n");
+}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
