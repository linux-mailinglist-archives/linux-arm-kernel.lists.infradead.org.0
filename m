Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7D78DD02
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 20:32:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gm/VL5oZELNkyQyBtgG/vqHm7zZChne6TQ4Vf3+0YS0=; b=RcmWXh2H7xBUNd
	jNuDDfFnoE0QO3ITIHZJYtE0VXJJ7tSuPQLNHtmVKLt7+X31GsSJa1OvARSqDDYwdrPzvz9WNfPVi
	B42cyc+QXQgU6TbGqymja3QM9dlQFTKaZS031PK956I1FJZtobXtySdsTr1e/hkm79XFUZ5DhHhnW
	gY2MwR+P3H26CIwWQwBZiX21SgiTG2T9l3UJSkGQVT26LCh4HttHYIMQrkxhSB2RxpRS86LNaZ29r
	cln80vXzO4zGQMdC9X8wEBlwdSVwSBI37WJea9cukdU8PUxAX+gXXqHwVaeSOBG0kq1dYF8M54DRw
	Ai4vn7tS3FwHcZGWaA5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxy4N-0005vS-UD; Wed, 14 Aug 2019 18:32:23 +0000
Received: from mail-wm1-f99.google.com ([209.85.128.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxy3H-0004of-75
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 18:31:17 +0000
Received: by mail-wm1-f99.google.com with SMTP id i63so123644wmg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 11:31:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yRzEFTacmImNlhonTZPV+rX4ijUR1B82VFX5SMMWnd0=;
 b=Zm1PQJ2N78X3D3ZvmkMP4s+/SYjoa6C95KCCSpiPJWApnT1urEesX/xvMAJeY/+7iu
 Em8pAbYsZsN5ZuVITcbUkZY1u2NccRLym0d0iJ1EyoBJ8evG0lINC1dkhMQlrpI6eNT0
 vBixnK2sucEoCQKVBzoKo3S5j9cq98rWN7NZRe6LBLdETCi5RKnBstma9k6GUfElET18
 Kqqqvvk7a2jKtX3A5OvM0P9Rh76KbWP2M6yLU6fhXbqz5jbaWrMvhasXhNBXdGZ1bBaV
 062So1CvVcF9I/5u0ypwI3pvdvjyUwWVkMhKprYG6SAlB3lW+ztMzvQZLsd8yMEXC+ha
 kftw==
X-Gm-Message-State: APjAAAW4bdsCvDHaTVHRI/IyoIctFlyGfJoSpFNkX6mBCoA23P8GZ6q5
 U/ZRK5FdPcQItFrlo1Irp8p4vSWgDYl6gAuGNwZHPK2u3X8PEO7U6iibSHyRhSWnYA==
X-Google-Smtp-Source: APXvYqxMlE6FDaNS4BmLdhIF+vVfy3LQknTJrZPGn+nnIHohu9qFYD63OfJq1Q+inDJ5TMT0wSbGaV3+uh9Z
X-Received: by 2002:a1c:c5c2:: with SMTP id v185mr474988wmf.161.1565807470884; 
 Wed, 14 Aug 2019 11:31:10 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id c3sm4918wmd.26.2019.08.14.11.31.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 11:31:10 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hxy3C-00070Y-In; Wed, 14 Aug 2019 18:31:10 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id D85BD2742B44; Wed, 14 Aug 2019 19:31:09 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v2 1/2] arm64: Add initial support for E0PD
Date: Wed, 14 Aug 2019 19:31:02 +0100
Message-Id: <20190814183103.33707-2-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190814183103.33707-1-broonie@kernel.org>
References: <20190814183103.33707-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_113115_265634_62EF7639 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kernel Page Table Isolation (KPTI) is used to mitigate some speculation
based security issues by ensuring that the kernel is not mapped when
userspace is running but this approach is expensive and is incompatible
with SPE.  E0PD, introduced in the ARMv8.5 extensions, provides an
alternative to this which ensures that accesses from userspace to the
kernel's half of the memory map to always fault with constant time,
preventing timing attacks without requiring constant unmapping and
remapping or preventing legitimate accesses.

This initial patch does not yet integrate with KPTI, this will be dealt
with in followup patches.  Ideally we could ensure that by default we
don't use KPTI on CPUs where E0PD is present.

Signed-off-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---

Tweak the Kconfig text as suggested by Will.

 arch/arm64/Kconfig                     | 15 ++++++++++++++
 arch/arm64/include/asm/cpucaps.h       |  3 ++-
 arch/arm64/include/asm/pgtable-hwdef.h |  2 ++
 arch/arm64/include/asm/sysreg.h        |  1 +
 arch/arm64/kernel/cpufeature.c         | 27 ++++++++++++++++++++++++++
 5 files changed, 47 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 12de5c6075ec..7bf403405c99 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1392,6 +1392,21 @@ config ARM64_PTR_AUTH
 
 endmenu
 
+menu "ARMv8.5 architectural features"
+
+config ARM64_E0PD
+	bool "Enable support for E0PD"
+	default y
+	help
+	   E0PD (part of the ARMv8.5 extensions) allows us to ensure
+	   that EL0 accesses made via TTBR1 always fault in constant time,
+	   providing benefits to KPTI with lower overhead and without
+	   disrupting legitimate access to kernel memory such as SPE.
+
+	   This option enables E0PD for TTBR1 where available.
+
+endmenu
+
 config ARM64_SVE
 	bool "ARM Scalable Vector Extension support"
 	default y
diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index f19fe4b9acc4..f25388981075 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -52,7 +52,8 @@
 #define ARM64_HAS_IRQ_PRIO_MASKING		42
 #define ARM64_HAS_DCPODP			43
 #define ARM64_WORKAROUND_1463225		44
+#define ARM64_HAS_E0PD				45
 
-#define ARM64_NCAPS				45
+#define ARM64_NCAPS				46
 
 #endif /* __ASM_CPUCAPS_H */
diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
index db92950bb1a0..1a2708ebcae8 100644
--- a/arch/arm64/include/asm/pgtable-hwdef.h
+++ b/arch/arm64/include/asm/pgtable-hwdef.h
@@ -292,6 +292,8 @@
 #define TCR_HD			(UL(1) << 40)
 #define TCR_NFD0		(UL(1) << 53)
 #define TCR_NFD1		(UL(1) << 54)
+#define TCR_E0PD0		(UL(1) << 55)
+#define TCR_E0PD1		(UL(1) << 56)
 
 /*
  * TTBR.
diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 1df45c7ffcf7..37a0926536d3 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -652,6 +652,7 @@
 #define ID_AA64MMFR1_VMIDBITS_16	2
 
 /* id_aa64mmfr2 */
+#define ID_AA64MMFR2_E0PD_SHIFT		60
 #define ID_AA64MMFR2_FWB_SHIFT		40
 #define ID_AA64MMFR2_AT_SHIFT		32
 #define ID_AA64MMFR2_LVA_SHIFT		16
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 9323bcc40a58..62b01fc35ef6 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -219,6 +219,7 @@ static const struct arm64_ftr_bits ftr_id_aa64mmfr1[] = {
 };
 
 static const struct arm64_ftr_bits ftr_id_aa64mmfr2[] = {
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_E0PD_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_FWB_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_AT_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_LVA_SHIFT, 4, 0),
@@ -1244,6 +1245,19 @@ static void cpu_enable_address_auth(struct arm64_cpu_capabilities const *cap)
 }
 #endif /* CONFIG_ARM64_PTR_AUTH */
 
+#ifdef CONFIG_ARM64_E0PD
+static void cpu_enable_e0pd(struct arm64_cpu_capabilities const *cap)
+{
+	/*
+	 * The cpu_enable() callback gets called even on CPUs that
+	 * don't detect the feature so we need to verify if we can
+	 * enable.
+	 */
+	if (this_cpu_has_cap(ARM64_HAS_E0PD))
+		sysreg_clear_set(tcr_el1, 0, TCR_E0PD1);
+}
+#endif /* CONFIG_ARM64_E0PD */
+
 #ifdef CONFIG_ARM64_PSEUDO_NMI
 static bool enable_pseudo_nmi;
 
@@ -1559,6 +1573,19 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 		.sign = FTR_UNSIGNED,
 		.min_field_value = 1,
 	},
+#endif
+#ifdef CONFIG_ARM64_E0PD
+	{
+		.desc = "E0PD",
+		.capability = ARM64_HAS_E0PD,
+		.type = ARM64_CPUCAP_WEAK_LOCAL_CPU_FEATURE,
+		.sys_reg = SYS_ID_AA64MMFR2_EL1,
+		.sign = FTR_UNSIGNED,
+		.field_pos = ID_AA64MMFR2_E0PD_SHIFT,
+		.matches = has_cpuid_feature,
+		.min_field_value = 1,
+		.cpu_enable = cpu_enable_e0pd,
+	},
 #endif
 	{},
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
