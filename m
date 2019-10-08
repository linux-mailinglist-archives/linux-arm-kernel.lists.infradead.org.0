Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 599C3CFDF7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:44:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TjDoVYArWWCqENB3G2fncdlibyPsHoo72kqCxckJFU4=; b=G5cankGNLO6r6p
	ATpVKeqyMKG5+5/ytF//6X0MYarHhaJ0jBgFiQfqR6MayNYKclTdH7xNC9Ka/T8ZDQW1swKroL2Bj
	W36PRbVGbUdtnzsX1MKtURO3kADC6dSJ94WAbbVES+DWw0Q6gQojSy+Tfqf0xTDzn6OsbKCv8gZIE
	bp1ZadPFYz1cSfQBIi9GtMTFu16Xkul7bFKU29vUwFa8Ps94rylFZYhFcSvPR47FAW8SYPfYqp+/k
	xZIzrBK/3sKBjQnPHmDDd9AGIuKwPdJvNYBANEw9zPTFbJ6ITriUMOYR4hi09beeG0apVVVZ37DfZ
	5Tuxafaar1HJfrJ45W9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHref-0001b7-9t; Tue, 08 Oct 2019 15:44:05 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHrb8-00071L-GR
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:40:28 +0000
Received: by mail-wm1-x342.google.com with SMTP id a6so3680277wma.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 08:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b980Hl78DxMdOTDWa2ywxLFA73lq8TP+ptHAnX2cLHA=;
 b=j1Q8gOGZWX7QaB9s7ddocqr1BtoUdBxNIAjtKQw7ZXf4UKEtQFazekJzePh7ajN8u5
 G91896HYqOqb/LdD0v4yUDRE1sxH0J0Cv6IDfwpb0uhnwVl7VYCx4O9VcPcz7GEBQWbN
 SFNyCqFejMTpqiA9Ld8nNGA8UA1TrqO1bCgsNx3TXp1YPmPbHt3YtooVZXodfytOXigx
 t0JeSzM5gLAzmYkH0Nu5vugApxhEHu7WN84OKH8mIMtPg5r2epaODTg5nRXznaZFlrkn
 gSwBwNA/LNGNWC4nghQyeH1DHUCBUdzJuhmI3wV5XzUlrMeRkqlGhbhtaC0iGnn+zTC5
 6DDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b980Hl78DxMdOTDWa2ywxLFA73lq8TP+ptHAnX2cLHA=;
 b=hOcXNWej5MV31/BnZf7kTt0NvKeII8G5v9EQBbsSqEdZUX5pkHIol0lzzlSzNJrjRZ
 dVj6yWLZi1rNE3Qp35fBZDR/Vem362W6f2xvElHv+02SlfoeejY9w5JCfizrN4yLvHmh
 NN6BhABOFhenWtW9jyNWqZIBZwLWhrTYGljpUaPQ9Zfq3A1bfIT0z6NeWIXdhcFnWhZ4
 K7veMY57G2HF+ste78sk6SeFQB/zHSM2y/w6cSoEb3/9unbHE51f1ZRSuqnBezCGqpVL
 0HDJ8GHkqqTkzoH3xU6Or7Il8WRNCpbYmUqUUqa4TCPpXq+pPnf4ZftjewZvN1duiyXO
 yz8g==
X-Gm-Message-State: APjAAAX0XA1GvroXC4npYDjW10jhnXKlHuDVxnQbZOA++tqHgdL9IQFt
 P4tLVnvst4VTGvTpl8/6gxxfb4nR2UJ0BA==
X-Google-Smtp-Source: APXvYqz4WQHhecRv6wwWxW5KE3SbodoqNVlR7VmmGzsAosNlNoMfbdslFUMpyIuBVBygb6tJOvxDtw==
X-Received: by 2002:a1c:a616:: with SMTP id p22mr4234707wme.3.1570549224904;
 Tue, 08 Oct 2019 08:40:24 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id x16sm16784723wrl.32.2019.10.08.08.40.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 08:40:23 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.19 12/16] arm64: Always enable spectre-v2
 vulnerability detection
Date: Tue,  8 Oct 2019 17:39:26 +0200
Message-Id: <20191008153930.15386-13-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
References: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_084026_969909_6B104206 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Andre Przywara <andre.przywara@arm.com>, Will Deacon <will.deacon@arm.com>,
 Jeremy Linton <jeremy.linton@arm.com>, stable@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jeremy Linton <jeremy.linton@arm.com>

[ Upstream commit 8c1e3d2bb44cbb998cb28ff9a18f105fee7f1eb3 ]

Ensure we are always able to detect whether or not the CPU is affected
by Spectre-v2, so that we can later advertise this to userspace.

Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm64/kernel/cpu_errata.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index ffb1b8ff7d82..96b0319dd0d6 100644
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
 
 DEFINE_PER_CPU_READ_MOSTLY(u64, arm64_ssbd_callback_required);
 
@@ -513,7 +512,6 @@ multi_entry_cap_cpu_enable(const struct arm64_cpu_capabilities *entry)
 			caps->cpu_enable(caps);
 }
 
-#ifdef CONFIG_HARDEN_BRANCH_PREDICTOR
 /*
  * List of CPUs that do not need any Spectre-v2 mitigation at all.
  */
@@ -545,6 +543,12 @@ check_branch_predictor(const struct arm64_cpu_capabilities *entry, int scope)
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
@@ -556,7 +560,6 @@ check_branch_predictor(const struct arm64_cpu_capabilities *entry, int scope)
 
 	return (need_wa > 0);
 }
-#endif
 
 #ifdef CONFIG_HARDEN_EL2_VECTORS
 
@@ -715,13 +718,11 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
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
