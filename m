Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98904CBA0F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:12:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RfngJPUITcpt5pBhjDnvHtc6iwiAi1m+861k8800Qy0=; b=Xd5HL9fvis7DJo
	vLA+BjxZWFcv1ElHr/Zqn0QM8dRoOsbuWxj5axbol9rC8Ncfsq3zrUDQ3V8ttpVPTAR/LkmDjQGpZ
	nZYsflgiBxhpmDSEnz1/UFpccbdKrrw30koh8u+ILJS39Q1+OM9uwM019GLpwcIC6CIzHKYfD8kPs
	IyHXAqoVJUlmYoGPyokuMIU63QzNGWkDRcWA+mxx3RGmJotmfb9/FP16hCJwso4oobWXa7Q/IZOVH
	0y0Suvbt1kNFe0JJcUp+RaYKuk1H3a6NvpeAY3nR8Q1R5A3PVLnT+2fi02NaSyxCB7yUOcJxZ/09v
	ypMMPw4d0Kkt/hZXT1Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMRU-0002EN-7Z; Fri, 04 Oct 2019 12:12:16 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMKL-0001vT-Qy
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:04:57 +0000
Received: by mail-wr1-x444.google.com with SMTP id r3so6879515wrj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 05:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ky21pTDoxlbEAaqi946F6fzctKA5frfPnRQOMtfqswU=;
 b=iz5HSgnMoVl0hcq1qAw5NuOZ20IIu+04urARIN+b9hxCNPqNT1L4QxSZS0Fc5ZJZ3y
 33dOpBUzNOVXrcY+SomeaR+Kcqz1VCxpI83ynvGJ++KUoVNxB/cS9+LHMUdl0pG6lQfN
 ou0QIxa80XntdKeDUoI7CYQZrBTFZax5RYB9xTm7/7hnpZ181REnfuYlvkGtHQy381jz
 eQi5909ak/cHXY2swk66Ka6pOIrikRwiNpRr/xl2VMQa5vfyx2qPBmDvWfNCdAwmEoBo
 m3GSj63G5D/l4+vRTVraeNwPK6I7pmwTXJff6ivd3c8BBfdYckGj04SVig3HuV7Mgkb+
 MTYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ky21pTDoxlbEAaqi946F6fzctKA5frfPnRQOMtfqswU=;
 b=ftWd9ARbTeEeGw3nkOhRiISYWSnTnBewy9KyD1Oph3CoG8GI+dUWyqNpIJ1aec9ZcO
 OPfHwvemnxMYzm3QUZvIo01V6xLHxcvMJ2x/t8/PlN549GCNaEzp2D2ahBRUb+QktCgp
 BQubnWGVFQFYYSXYlpdpJhHcT8ld9epYgrowLuO4WeA4npQFhBrwW4gv0j32sIMZDnvl
 er4gmHDn8Vn7pOBAYXadacP8UANeris3XC41coy8l4/eTq8X6yRD8YoIKvqrFw222L1L
 dnzwZEDLU/kOkCWs3uBESKZqgvU+N/K8/fEevsmYSKebOObJ195y+UfsRGjq/BwyTpFw
 WCQg==
X-Gm-Message-State: APjAAAVsh1o54usHg5T+3sug8CJjZqNVTOOvGgTFnG2gGpyrLygZBXBE
 BwbAIUmmq25Z7OZYOQXilPGfGW31QRvr/iUP
X-Google-Smtp-Source: APXvYqztGnMmOSsm6tQdfJOJ6afcTVAfTZ9gy+9lx970WhR/rhcQlRKuLbxYi3CFSpSrT3hofTIV5w==
X-Received: by 2002:adf:f34c:: with SMTP id e12mr11493381wrp.320.1570190692177; 
 Fri, 04 Oct 2019 05:04:52 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:b51e:3d9d:ec16:def5])
 by smtp.gmail.com with ESMTPSA id f8sm5019628wmb.37.2019.10.04.05.04.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 04 Oct 2019 05:04:51 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC/RFT PATCH 12/16] arm64: Always enable ssb vulnerability detection
Date: Fri,  4 Oct 2019 14:04:26 +0200
Message-Id: <20191004120430.11929-13-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
References: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050453_965755_FB14D497 
X-CRM114-Status: GOOD (  13.93  )
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

Ensure we are always able to detect whether or not the CPU is affected
by SSB, so that we can later advertise this to userspace.

Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
[will: Use IS_ENABLED instead of #ifdef]
Signed-off-by: Will Deacon <will.deacon@arm.com>
(cherry picked from commit d42281b6e49510f078ace15a8ea10f71e6262581)
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm64/include/asm/cpufeature.h | 4 ----
 arch/arm64/kernel/cpu_errata.c      | 9 +++++----
 2 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 510f687d269a..dda6e5056810 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -525,11 +525,7 @@ static inline int arm64_get_ssbd_state(void)
 #endif
 }
 
-#ifdef CONFIG_ARM64_SSBD
 void arm64_set_ssbd_mitigation(bool state);
-#else
-static inline void arm64_set_ssbd_mitigation(bool state) {}
-#endif
 
 #endif /* __ASSEMBLY__ */
 
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index ae7d6761262f..78ce2e27396d 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -230,7 +230,6 @@ static int detect_harden_bp_fw(void)
 	return 1;
 }
 
-#ifdef CONFIG_ARM64_SSBD
 DEFINE_PER_CPU_READ_MOSTLY(u64, arm64_ssbd_callback_required);
 
 int ssbd_state __read_mostly = ARM64_SSBD_KERNEL;
@@ -303,6 +302,11 @@ void __init arm64_enable_wa2_handling(struct alt_instr *alt,
 
 void arm64_set_ssbd_mitigation(bool state)
 {
+	if (!IS_ENABLED(CONFIG_ARM64_SSBD)) {
+		pr_info_once("SSBD disabled by kernel configuration\n");
+		return;
+	}
+
 	if (this_cpu_has_cap(ARM64_SSBS)) {
 		if (state)
 			asm volatile(SET_PSTATE_SSBS(0));
@@ -422,7 +426,6 @@ static bool has_ssbd_mitigation(const struct arm64_cpu_capabilities *entry,
 
 	return required;
 }
-#endif	/* CONFIG_ARM64_SSBD */
 
 #ifdef CONFIG_ARM64_ERRATUM_1463225
 DEFINE_PER_CPU(int, __in_cortex_a76_erratum_1463225_wa);
@@ -695,14 +698,12 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 		ERRATA_MIDR_RANGE_LIST(arm64_harden_el2_vectors),
 	},
 #endif
-#ifdef CONFIG_ARM64_SSBD
 	{
 		.desc = "Speculative Store Bypass Disable",
 		.capability = ARM64_SSBD,
 		.type = ARM64_CPUCAP_LOCAL_CPU_ERRATUM,
 		.matches = has_ssbd_mitigation,
 	},
-#endif
 #ifdef CONFIG_ARM64_ERRATUM_1463225
 	{
 		.desc = "ARM erratum 1463225",
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
