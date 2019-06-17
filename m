Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 215804809F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 13:27:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ufgM6PnQJKiA6dBOSmBGjCtvgKDPYOiIAInyFh28SRI=; b=pQ4GVpy9QFg7rV
	iGtm4hEnvzxHjzzq31CXV8t4ObmCW9Klp1RDg9pTlP3OZfCkXlomRa7RXO/2HMf6apIsrI2kdFHN7
	hwZXu2kkNHMwbYaq4YHAoQrAVLDr8mGR2H2yUs4mlNRa056SDvXcAWHL4nrT6Wzvvd3n1z30JJR9r
	do68H7J8CyB4OwyDqtBoEOkmXCtPpzQ9dqyLTZBUYSR6HPsIY2YGvdSXzNRFYKSUEYy9/C45p9GvR
	OO3ZfPpzn/ZLkYko4R6bdpNvPKsVLyk4AKNSNDel+UmhKaKxgNJMV3ePPRz5QzulaxmB+9mZ3anqN
	Ds2HC8pMJHB/41Cya8Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcpnV-0002T0-6Z; Mon, 17 Jun 2019 11:27:37 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcpn0-0002Ad-MO
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 11:27:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XF0nfCF76i0Ua3G7Y4v5jyBwiD7LbuVKp25sVXrGJ2Q=; b=tSr7TaypKoKK5PCjE3+U8kwNj
 4Pdf6Wmcjujf5WLpp066XqlWBJddea18+wIIfBKNhrbKBOIYUTIb1rHwRbhNqGteEy5IBpNvbWGJA
 cIxlrfJIrkRo465PNb0b5YAq51jBWdVN4tVbpmJENm/X8lYwwkCpCnAySrlt7iz+6qniM=;
Received: from [2001:470:1f1d:6b5:7e7a:91ff:fede:4a45]
 (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hcpmu-0001Sd-Ew; Mon, 17 Jun 2019 11:27:00 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id C7093440046; Mon, 17 Jun 2019 12:26:59 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH 1/2] arm64: Expose ARMv8.5 CondM capability to userspace
Date: Mon, 17 Jun 2019 12:26:55 +0100
Message-Id: <20190617112656.2614-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_042706_881448_E53D1270 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARMv8.5 adds new instructions XAFLAG and AXFLAG to translate the
representation of the results of floating point comparisons between the
native ARM format and an alternative format used by some software. Add
a hwcap allowing userspace to determine if they are present.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 Documentation/arm64/elf_hwcaps.txt  | 4 ++++
 arch/arm64/include/asm/hwcap.h      | 1 +
 arch/arm64/include/uapi/asm/hwcap.h | 1 +
 arch/arm64/kernel/cpufeature.c      | 1 +
 arch/arm64/kernel/cpuinfo.c         | 1 +
 5 files changed, 8 insertions(+)

diff --git a/Documentation/arm64/elf_hwcaps.txt b/Documentation/arm64/elf_hwcaps.txt
index b73a2519ecf2..08e8e380a826 100644
--- a/Documentation/arm64/elf_hwcaps.txt
+++ b/Documentation/arm64/elf_hwcaps.txt
@@ -207,6 +207,10 @@ HWCAP_FLAGM
 
     Functionality implied by ID_AA64ISAR0_EL1.TS == 0b0001.
 
+HWCAP_CONDM85
+
+    Functionality implied by ID_AA64ISAR0_EL1.TS == 0b0010.
+
 HWCAP_SSBS
 
     Functionality implied by ID_AA64PFR1_EL1.SSBS == 0b0010.
diff --git a/arch/arm64/include/asm/hwcap.h b/arch/arm64/include/asm/hwcap.h
index b4bfb6672168..141fb635aecd 100644
--- a/arch/arm64/include/asm/hwcap.h
+++ b/arch/arm64/include/asm/hwcap.h
@@ -95,6 +95,7 @@
 #define KERNEL_HWCAP_SVEBITPERM		__khwcap2_feature(SVEBITPERM)
 #define KERNEL_HWCAP_SVESHA3		__khwcap2_feature(SVESHA3)
 #define KERNEL_HWCAP_SVESM4		__khwcap2_feature(SVESM4)
+#define KERNEL_HWCAP_CONDM85		__khwcap2_feature(CONDM85)
 
 /*
  * This yields a mask that user programs can use to figure out what
diff --git a/arch/arm64/include/uapi/asm/hwcap.h b/arch/arm64/include/uapi/asm/hwcap.h
index 1a772b162191..ff5bc70b2c37 100644
--- a/arch/arm64/include/uapi/asm/hwcap.h
+++ b/arch/arm64/include/uapi/asm/hwcap.h
@@ -63,5 +63,6 @@
 #define HWCAP2_SVEBITPERM	(1 << 4)
 #define HWCAP2_SVESHA3		(1 << 5)
 #define HWCAP2_SVESM4		(1 << 6)
+#define HWCAP2_CONDM85		(1 << 7)
 
 #endif /* _UAPI__ASM_HWCAP_H */
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 354b3745c319..294929476508 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1629,6 +1629,7 @@ static const struct arm64_cpu_capabilities arm64_elf_hwcaps[] = {
 	HWCAP_CAP(SYS_ID_AA64ISAR0_EL1, ID_AA64ISAR0_DP_SHIFT, FTR_UNSIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_ASIMDDP),
 	HWCAP_CAP(SYS_ID_AA64ISAR0_EL1, ID_AA64ISAR0_FHM_SHIFT, FTR_UNSIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_ASIMDFHM),
 	HWCAP_CAP(SYS_ID_AA64ISAR0_EL1, ID_AA64ISAR0_TS_SHIFT, FTR_UNSIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_FLAGM),
+	HWCAP_CAP(SYS_ID_AA64ISAR0_EL1, ID_AA64ISAR0_TS_SHIFT, FTR_UNSIGNED, 2, CAP_HWCAP, KERNEL_HWCAP_CONDM85),
 	HWCAP_CAP(SYS_ID_AA64PFR0_EL1, ID_AA64PFR0_FP_SHIFT, FTR_SIGNED, 0, CAP_HWCAP, KERNEL_HWCAP_FP),
 	HWCAP_CAP(SYS_ID_AA64PFR0_EL1, ID_AA64PFR0_FP_SHIFT, FTR_SIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_FPHP),
 	HWCAP_CAP(SYS_ID_AA64PFR0_EL1, ID_AA64PFR0_ASIMD_SHIFT, FTR_SIGNED, 0, CAP_HWCAP, KERNEL_HWCAP_ASIMD),
diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
index f6f7936be6e7..a16ce26ddc39 100644
--- a/arch/arm64/kernel/cpuinfo.c
+++ b/arch/arm64/kernel/cpuinfo.c
@@ -92,6 +92,7 @@ static const char *const hwcap_str[] = {
 	"svebitperm",
 	"svesha3",
 	"svesm4",
+	"condm85",
 	NULL
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
