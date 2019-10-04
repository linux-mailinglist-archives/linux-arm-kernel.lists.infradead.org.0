Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B409CBA0D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:11:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fCvR9NYdLl9t7Kl5c3jCTl1InFD0v3o/NqweK7jdLEo=; b=qbHeKbnMwBsQtr
	BI3rPLNzhry5XjlgJYDxN8oI5aLDh/q0WI61bVqTaFOzEL8dzvTbHhe40YmlNX3c2ZKXW2+AtDBTz
	oueTVX/8lpjOE8URfkBLiKGjb6reZXD7lRvzVLQBoBITtwFlFsZ3C7fHHNTmPfUZLX/C4AxwtscC+
	e8aHNlsmv9VSUk6NQAVUi7h1BjXrkXsjyQ1xL/Ukv51waA0NGn5XBn7ZmiovBPCqlaqCfD3u8a0gW
	eT2jOIuAfBhVebEPhl36LtZ//YgTmv0EVCiu6vQDUvxLCPxQY9+2ZgWkeIpt946fs5p2ce4Gm9Od7
	JyeJoSt9iRQcypi68+Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMQv-0001ic-Rw; Fri, 04 Oct 2019 12:11:41 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMKK-0001vE-8Y
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:04:57 +0000
Received: by mail-wr1-x441.google.com with SMTP id w12so6883310wro.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 05:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pigH1Udp2BxTOSUepV8N3rBhXILI0lOVFvsXNcDQY2U=;
 b=EEDqPWRxnaoA7KUyzkQuFS+/eALvRvNc32hAPNRkOXUAKqfXeWyCSXKMfCxLLWJxUu
 YcgrAyFsx4IB5fpKnSxinfEeeXRCZsyZOUv42rKnCTFk+DDKLGRSOytXd7KtFmQCEhBN
 1JXemJrtYT7gdPqaGpDuSUw2IoP74wmq/nkazqHIqUY/kAqiPSc4K9FPwr40eBlFGLjj
 tfy8N7dNl99t7wtdBWkDXZDXUzP8qy2K/KhQa09deSbhJdnhqiyauvPQtXFr8XMeTrm6
 8qVMhj8vWEBOHfq1hPDkZ0TFO/G0ZqEJId4ZZMKMri0N1F8MrgMcTPQhIugCiuxQNjFM
 ScOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pigH1Udp2BxTOSUepV8N3rBhXILI0lOVFvsXNcDQY2U=;
 b=sj3E/mVDhmfoD82HWsj2V8ALurYDTastzQrOMLjm7OgJtRJxmJI7ZhmjwEv/hpkO9B
 PteynaBd3b55dFlVVx1DVayeON27fJlG/OqzQ4xa5MyL88zQxui4ANC2RYTNB2IiXqfi
 QhwTLnZj+/+MX2Z1dyOybu+HNJ05kj3TKXaq2GAkF5z4pXPaaTF9iPjs9hwamnJ4zei8
 5EZLm1lsj6ypUKSOIlCEN++nW9WWYs4GXmZNAE5vbodlbsnkaHhxvI71Ds/sc3hoekyQ
 kEMcDlnz2UrGRFqym6J8p65OWPR4ru8x/m8BbhUvqcJjlkQnUpaOr8MD4dozHHRIrQHh
 XgzA==
X-Gm-Message-State: APjAAAXqEOoijsM5NmEFYn64JOhgKImYlBA5MMxEZCe0AmFcOMY3Vbtg
 2WpLH1BGFuvfiKDSo1tDwRvjH/r68IGPzbHE
X-Google-Smtp-Source: APXvYqz3+jtLkp3r7t6Duw6fJtkqsGj6MNkTBttDKIogQ8HZPgbCpjmYEFhRTCjg3ULUziudX+pDPQ==
X-Received: by 2002:a5d:548d:: with SMTP id h13mr880946wrv.215.1570190690607; 
 Fri, 04 Oct 2019 05:04:50 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:b51e:3d9d:ec16:def5])
 by smtp.gmail.com with ESMTPSA id f8sm5019628wmb.37.2019.10.04.05.04.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 04 Oct 2019 05:04:49 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC/RFT PATCH 11/16] arm64: Always enable spectre-v2 vulnerability
 detection
Date: Fri,  4 Oct 2019 14:04:25 +0200
Message-Id: <20191004120430.11929-12-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
References: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050453_744820_07D5D39C 
X-CRM114-Status: GOOD (  15.10  )
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

Ensure we are always able to detect whether or not the CPU is affected
by Spectre-v2, so that we can later advertise this to userspace.

Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
(cherry picked from commit 8c1e3d2bb44cbb998cb28ff9a18f105fee7f1eb3)
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm64/kernel/cpu_errata.c | 47 ++++----------------
 1 file changed, 8 insertions(+), 39 deletions(-)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index def847873d21..ae7d6761262f 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -87,7 +87,6 @@ cpu_enable_trap_ctr_access(const struct arm64_cpu_capabilities *__unused)
 
 atomic_t arm64_el2_vector_last_slot = ATOMIC_INIT(-1);
 
-#ifdef CONFIG_HARDEN_BRANCH_PREDICTOR
 #include <asm/mmu_context.h>
 #include <asm/cacheflush.h>
 
@@ -225,11 +224,11 @@ static int detect_harden_bp_fw(void)
 	    ((midr & MIDR_CPU_MODEL_MASK) == MIDR_QCOM_FALKOR_V1))
 		cb = qcom_link_stack_sanitization;
 
-	install_bp_hardening_cb(cb, smccc_start, smccc_end);
+	if (IS_ENABLED(CONFIG_HARDEN_BRANCH_PREDICTOR))
+		install_bp_hardening_cb(cb, smccc_start, smccc_end);
 
 	return 1;
 }
-#endif	/* CONFIG_HARDEN_BRANCH_PREDICTOR */
 
 #ifdef CONFIG_ARM64_SSBD
 DEFINE_PER_CPU_READ_MOSTLY(u64, arm64_ssbd_callback_required);
@@ -478,39 +477,6 @@ has_cortex_a76_erratum_1463225(const struct arm64_cpu_capabilities *entry,
 	.type = ARM64_CPUCAP_LOCAL_CPU_ERRATUM,			\
 	CAP_MIDR_RANGE_LIST(midr_list)
 
-/*
- * Generic helper for handling capabilties with multiple (match,enable) pairs
- * of call backs, sharing the same capability bit.
- * Iterate over each entry to see if at least one matches.
- */
-static bool __maybe_unused
-multi_entry_cap_matches(const struct arm64_cpu_capabilities *entry, int scope)
-{
-	const struct arm64_cpu_capabilities *caps;
-
-	for (caps = entry->match_list; caps->matches; caps++)
-		if (caps->matches(caps, scope))
-			return true;
-
-	return false;
-}
-
-/*
- * Take appropriate action for all matching entries in the shared capability
- * entry.
- */
-static void __maybe_unused
-multi_entry_cap_cpu_enable(const struct arm64_cpu_capabilities *entry)
-{
-	const struct arm64_cpu_capabilities *caps;
-
-	for (caps = entry->match_list; caps->matches; caps++)
-		if (caps->matches(caps, SCOPE_LOCAL_CPU) &&
-		    caps->cpu_enable)
-			caps->cpu_enable(caps);
-}
-
-#ifdef CONFIG_HARDEN_BRANCH_PREDICTOR
 /*
  * List of CPUs that do not need any Spectre-v2 mitigation at all.
  */
@@ -542,6 +508,12 @@ check_branch_predictor(const struct arm64_cpu_capabilities *entry, int scope)
 	if (!need_wa)
 		return false;
 
+	if (!IS_ENABLED(CONFIG_HARDEN_BRANCH_PREDICTOR)) {
+		pr_warn_once("spectrev2 mitigation disabled by kernel configuration\n");
+		__hardenbp_enab = false;
+		return false;
+	}
+
 	/* forced off */
 	if (__nospectre_v2) {
 		pr_info_once("spectrev2 mitigation disabled by command line option\n");
@@ -553,7 +525,6 @@ check_branch_predictor(const struct arm64_cpu_capabilities *entry, int scope)
 
 	return (need_wa > 0);
 }
-#endif
 
 #ifdef CONFIG_HARDEN_EL2_VECTORS
 
@@ -712,13 +683,11 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 		ERRATA_MIDR_ALL_VERSIONS(MIDR_CORTEX_A73),
 	},
 #endif
-#ifdef CONFIG_HARDEN_BRANCH_PREDICTOR
 	{
 		.capability = ARM64_HARDEN_BRANCH_PREDICTOR,
 		.type = ARM64_CPUCAP_LOCAL_CPU_ERRATUM,
 		.matches = check_branch_predictor,
 	},
-#endif
 #ifdef CONFIG_HARDEN_EL2_VECTORS
 	{
 		.desc = "EL2 vector hardening",
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
