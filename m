Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6924CFDF1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:43:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m2s/wF4ijxUeZkEY14IYDVzRwaWjQ8/m9pgh/KyoTl4=; b=IPGMN9wLBtsfOC
	oIX21jAPOmdPdgbCaGtDB7VmXho0+tmyxCM29j1I39bq+0FS6R/AvzVyreef3xQPAbA6fLStApBaL
	DwmnKW61mFZWYWpQiMtnYUC/J37pt53g+n2tZAmvZcMyouH/xyOoT6Cxc0q6v6dYNv2ogoUNaW/7/
	YHvy/0Lc3XzvBYHjZHNDe5jWEF+u7lpls5C0eTOsjly0X8wskPiYyLxwD8qKEDjUHbN4lBVOBNn7j
	htZGdze/ubAKNyL2IPnHLwwyVbqSkH0qSGv4hp+ckSdbKOmGU0den2Y6wlXMtuIueR0MywNnIfbye
	4Y7uYUE5defS+Hb3LmHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrdY-0000ao-Aj; Tue, 08 Oct 2019 15:42:56 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHrb3-0006w4-9b
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:40:22 +0000
Received: by mail-wm1-x342.google.com with SMTP id p7so3692591wmp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 08:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aJGOLVfKZPZGTS15lL718TKBd/G+fSNNirhyvUJGpm8=;
 b=l2aVq144mzxKvDDYP57RsaNlrigk/Q2WA76VZfGwyCvgw8GKzbafZgH3b0V6LPq3M6
 oQDZ6hxkT3QX6l91ulPrtlgKV5c2QRV5BXT3e7gg8SVPHXY9xrV6d+90/6s4vaJ3jYYi
 T+pwwOs0EnE0rq7kE+g3TD4dxHzjDO/963hI9q9weq8fxHWW6yi1bdH+HOGLiXh6pd+8
 J0uMoay5HLXnb7etduO1dNs5OIQVeX1tu9bpmo7cQ+iUg/1rSz61ThYqT6StPxPZ07bd
 2gKpmkdu96Xe2ds8fM01TWoJiZtDuE3RrM3UKg/+/dcO4iwPzoFx34onlW+WTNR0C0wE
 XCDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aJGOLVfKZPZGTS15lL718TKBd/G+fSNNirhyvUJGpm8=;
 b=uC285Rhk5OODR475MaKa0Yy/KZpnZOeX3PaWiD7AIvT6ZtquJDTwnf1JrrHcOdCvOK
 n10TojA98G0+1Jcleyt6pNbXZVu+t29pWKcq30HvRZAPrTDkbUOgdAqBs+Lz6OPHpMAl
 HmTwn0+opBz193nBQ5BEHPZe+4QKCpXdyHgIM7/ClmKdwudTXlii4E2vpWl7UzYcQS45
 GAHWfCZAPZPUi8Wr4WVSp4Lm34Tbvl2FBx3YBCd9vr1wDVAFrsf7UlgGk/XWTisuufUQ
 xLtXgHD5UtKidZhnFq4AN4RR+UXU8mXdyyYDFXPIBxlFrzxQJFnTpXa9JHYcrUq2r5Km
 ySzA==
X-Gm-Message-State: APjAAAVHem2sjApK9pRYdATmQrSnvdJ11AHbBMnNOADUm4Gnax+McwxO
 q6uLxyizGQBNlMfJhMcXHIdX9YIoPVP5sg==
X-Google-Smtp-Source: APXvYqxy3RXGYr/IcrandtO0JayzzW0Qt9XQbDMwHo0KQINwYZ48x1SsCwsu/jJpNLguWNJgri2CXw==
X-Received: by 2002:a05:600c:cd:: with SMTP id
 u13mr4038224wmm.37.1570549219399; 
 Tue, 08 Oct 2019 08:40:19 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id x16sm16784723wrl.32.2019.10.08.08.40.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 08:40:18 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.19 09/16] arm64: Always enable ssb vulnerability
 detection
Date: Tue,  8 Oct 2019 17:39:23 +0200
Message-Id: <20191008153930.15386-10-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
References: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_084021_358669_C9F9CF96 
X-CRM114-Status: GOOD (  13.72  )
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

[ Upstream commit d42281b6e49510f078ace15a8ea10f71e6262581 ]

Ensure we are always able to detect whether or not the CPU is affected
by SSB, so that we can later advertise this to userspace.

Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
[will: Use IS_ENABLED instead of #ifdef]
Signed-off-by: Will Deacon <will.deacon@arm.com>
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
index 3758ba538a43..10571a378f4c 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -239,7 +239,6 @@ enable_smccc_arch_workaround_1(const struct arm64_cpu_capabilities *entry)
 }
 #endif	/* CONFIG_HARDEN_BRANCH_PREDICTOR */
 
-#ifdef CONFIG_ARM64_SSBD
 DEFINE_PER_CPU_READ_MOSTLY(u64, arm64_ssbd_callback_required);
 
 int ssbd_state __read_mostly = ARM64_SSBD_KERNEL;
@@ -312,6 +311,11 @@ void __init arm64_enable_wa2_handling(struct alt_instr *alt,
 
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
@@ -431,7 +435,6 @@ static bool has_ssbd_mitigation(const struct arm64_cpu_capabilities *entry,
 
 	return required;
 }
-#endif	/* CONFIG_ARM64_SSBD */
 
 #ifdef CONFIG_ARM64_ERRATUM_1463225
 DEFINE_PER_CPU(int, __in_cortex_a76_erratum_1463225_wa);
@@ -710,14 +713,12 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
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
