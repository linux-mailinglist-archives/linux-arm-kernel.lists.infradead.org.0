Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA58143D88
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 14:00:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8SItuOCSnWQIApo/x0dOovatUzBymm4/FFnq1Kq9eIA=; b=ZHDHu4acfSNJUE
	HhbpK5vQK7v6p4h4sRneZh435/Ur1ky5ZScYUud1pUDowin/5KWkRqO/Se22z4V9Kh9LCkVpngMGj
	fnKIz2STmNKCmTNGXwajcEgX3CwgHvuzQEYKlojF6Nc9F4m5VNKdV1JelDkLcx0NKSBUi9447lfmL
	e1wZ+kl8LIBU0awLdLSLsqI8N4UuW3lBD6uSXOXYvSxIejM4zUn/ci/a5DiM3GGJI6AnLxdyDpSMt
	iGRFe1BvyBLIHDpuYq3v6vq4cK3FUT6I5hcbLMmiH6aRh6f8GGLZ1EuCMrt8utWTMSLGNdfBEb17s
	oG6fcPz68G048AZ9tBXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itt8i-0000aN-U9; Tue, 21 Jan 2020 13:00:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itt7u-000088-Vv
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 12:59:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 183FE1007;
 Tue, 21 Jan 2020 04:59:25 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8B1193F52E;
 Tue, 21 Jan 2020 04:59:24 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v13 2/2] arm64: Use v8.5-RNG entropy for KASLR seed
Date: Tue, 21 Jan 2020 12:58:53 +0000
Message-Id: <20200121125853.28825-3-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200121125853.28825-1-broonie@kernel.org>
References: <20200121125853.28825-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_045927_068263_F68C3CD4 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Mark Brown <broonie@kernel.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When seeding KALSR on a system where we have architecture level random
number generation make use of that entropy, mixing it in with the seed
passed by the bootloader. Since this is run very early in init before
feature detection is complete we open code rather than use archrandom.h.

Signed-off-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/include/asm/archrandom.h |  8 ++++++++
 arch/arm64/kernel/kaslr.c           | 11 +++++++++++
 2 files changed, 19 insertions(+)

diff --git a/arch/arm64/include/asm/archrandom.h b/arch/arm64/include/asm/archrandom.h
index 5ea5a1ce5a5f..3fe02da70004 100644
--- a/arch/arm64/include/asm/archrandom.h
+++ b/arch/arm64/include/asm/archrandom.h
@@ -59,9 +59,17 @@ static inline bool __must_check arch_get_random_seed_int(unsigned int *v)
 	return ok;
 }
 
+static inline bool __init __early_cpu_has_rndr(void)
+{
+	/* Open code as we run prior to the first call to cpufeature. */
+	unsigned long ftr = read_sysreg_s(SYS_ID_AA64ISAR0_EL1);
+	return (ftr >> ID_AA64ISAR0_RNDR_SHIFT) & 0xf;
+}
+
 #else
 
 static inline bool __arm64_rndr(unsigned long *v) { return false; }
+static inline bool __init __early_cpu_has_rndr(void) { return false; }
 
 #endif /* CONFIG_ARCH_RANDOM */
 #endif /* _ASM_ARCHRANDOM_H */
diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
index 2a11a962e571..53b8a4ee64ff 100644
--- a/arch/arm64/kernel/kaslr.c
+++ b/arch/arm64/kernel/kaslr.c
@@ -120,6 +120,17 @@ u64 __init kaslr_early_init(u64 dt_phys)
 		return 0;
 	}
 
+	/*
+	 * Mix in any entropy obtainable architecturally, open coded
+	 * since this runs extremely early.
+	 */
+	if (__early_cpu_has_rndr()) {
+		unsigned long raw;
+
+		if (__arm64_rndr(&raw))
+			seed ^= raw;
+	}
+
 	if (!seed) {
 		kaslr_status = KASLR_DISABLED_NO_SEED;
 		return 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
