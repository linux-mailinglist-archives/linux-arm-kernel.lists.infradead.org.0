Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9701C862E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 11:57:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=sIKuusACVJe/IRP0jslzaMG/k0NghIeY8kiVLEqyMbU=; b=ue3
	tQZ0vSyeVJqruhmE/Qys6qnCNoXFdeC4ZIA8OK1/7N88EliCkZYttDalSr72jA+Ou+OgaifsTvWNs
	Va2Uo5dvNc5GBHyNvPx5VFVjM0WZ3lsJYJ9azaWlGyUzt55VpQ7sxhob31kBuOlhWZ6oHuUwW7kQu
	qn6W3rV6/esGjmayEoMfCSj4DNIP7RoWjb0HJ8UYTSFTy2+3Ver2Mgd2BVp5o8lyQTE4aTFJsdoGK
	dF7eKL4hhb4JLdrRU9SoOLLFzuuEji75+D3noHjpPuR3twsbSMq3DrBOUuDJTqssVNYngLioK5XpK
	5mN6L3Ng+QQ6GsQvkVcN0zdTa/4uV5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWdHg-000390-IA; Thu, 07 May 2020 09:57:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWdHY-00037w-2C
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 09:57:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 031D8D6E;
 Thu,  7 May 2020 02:57:29 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.73.155])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 453F03F71F;
 Thu,  7 May 2020 02:57:26 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/cpuinfo: Move HWCAP name arrays alongside their bit
 definitions
Date: Thu,  7 May 2020 15:26:30 +0530
Message-Id: <1588845390-2032-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_025732_190708_D9D86131 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All HWCAP name arrays (i.e hwcap_str, compat_hwcap_str, compat_hwcap2_str)
that are scanned for /proc/cpuinfo output are detached from their bit fild
definitions making it difficult to corelate. This is also bit problematic
because during /proc/cpuinfo dump these arrays get traversed sequentially
assuming that they reflect and match HWCAP bit sequence, to test various
features for a given CPU.

This moves all HWCAP name arrays near their bit definitions. But first it
defines all missing COMPAT_HWCAP_XXX that are present in the name string.
Also defines all COMPAT_KERNEL_HWCAP macros to be used for the HWCAP name
string indexing.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Brown <broonie@kernel.org>
Cc: Ard Biesheuvel <ardb@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
In longer term we might want to generate these HWCAP macros with scripting,
and this is a step in that direction. This applies on 5.7-rc4.

 arch/arm64/include/asm/hwcap.h | 132 +++++++++++++++++++++++++++++++++
 arch/arm64/kernel/cpuinfo.c    |  90 ----------------------
 2 files changed, 132 insertions(+), 90 deletions(-)

diff --git a/arch/arm64/include/asm/hwcap.h b/arch/arm64/include/asm/hwcap.h
index 0f00265248b5..cb99b5f75e5d 100644
--- a/arch/arm64/include/asm/hwcap.h
+++ b/arch/arm64/include/asm/hwcap.h
@@ -8,18 +8,27 @@
 #include <uapi/asm/hwcap.h>
 #include <asm/cpufeature.h>
 
+#define COMPAT_HWCAP_SWP	(1 << 0)
 #define COMPAT_HWCAP_HALF	(1 << 1)
 #define COMPAT_HWCAP_THUMB	(1 << 2)
+#define COMPAT_HWCAP_26BIT	(1 << 3)
 #define COMPAT_HWCAP_FAST_MULT	(1 << 4)
+#define COMPAT_HWCAP_FPA	(1 << 5)
 #define COMPAT_HWCAP_VFP	(1 << 6)
 #define COMPAT_HWCAP_EDSP	(1 << 7)
+#define COMPAT_HWCAP_JAVA	(1 << 8)
+#define COMPAT_HWCAP_IWMMXT	(1 << 9)
+#define COMPAT_HWCAP_CRUNCH	(1 << 10)
+#define COMPAT_HWCAP_THUMBEE	(1 << 11)
 #define COMPAT_HWCAP_NEON	(1 << 12)
 #define COMPAT_HWCAP_VFPv3	(1 << 13)
+#define COMPAT_HWCAP_VFPV3D16	(1 << 14)
 #define COMPAT_HWCAP_TLS	(1 << 15)
 #define COMPAT_HWCAP_VFPv4	(1 << 16)
 #define COMPAT_HWCAP_IDIVA	(1 << 17)
 #define COMPAT_HWCAP_IDIVT	(1 << 18)
 #define COMPAT_HWCAP_IDIV	(COMPAT_HWCAP_IDIVA|COMPAT_HWCAP_IDIVT)
+#define COMPAT_HWCAP_VFPD32	(1 << 19)
 #define COMPAT_HWCAP_LPAE	(1 << 20)
 #define COMPAT_HWCAP_EVTSTRM	(1 << 21)
 
@@ -95,6 +104,129 @@
 #define KERNEL_HWCAP_DGH		__khwcap2_feature(DGH)
 #define KERNEL_HWCAP_RNG		__khwcap2_feature(RNG)
 
+#ifdef CONFIG_COMPAT
+#define __compat_khwcap_feature(x)	const_ilog2(COMPAT_HWCAP_ ## x)
+#define COMPAT_KERNEL_HWCAP_SWP		__compat_khwcap_feature(SWP)
+#define COMPAT_KERNEL_HWCAP_HALF	__compat_khwcap_feature(HALF)
+#define COMPAT_KERNEL_HWCAP_THUMB	__compat_khwcap_feature(THUMB)
+#define COMPAT_KERNEL_HWCAP_26BIT	__compat_khwcap_feature(26BIT)
+#define COMPAT_KERNEL_HWCAP_FAST_MULT	__compat_khwcap_feature(FAST_MULT)
+#define COMPAT_KERNEL_HWCAP_FPA		__compat_khwcap_feature(FPA)
+#define COMPAT_KERNEL_HWCAP_VFP		__compat_khwcap_feature(VFP)
+#define COMPAT_KERNEL_HWCAP_EDSP	__compat_khwcap_feature(EDSP)
+#define COMPAT_KERNEL_HWCAP_JAVA	__compat_khwcap_feature(JAVA)
+#define COMPAT_KERNEL_HWCAP_IWMMXT	__compat_khwcap_feature(IWMMXT)
+#define COMPAT_KERNEL_HWCAP_CRUNCH	__compat_khwcap_feature(CRUNCH)
+#define COMPAT_KERNEL_HWCAP_THUMBEE	__compat_khwcap_feature(THUMBEE)
+#define COMPAT_KERNEL_HWCAP_NEON	__compat_khwcap_feature(NEON)
+#define COMPAT_KERNEL_HWCAP_VFPv3	__compat_khwcap_feature(VFPv3)
+#define COMPAT_KERNEL_HWCAP_VFPV3D16	__compat_khwcap_feature(VFPV3D16)
+#define COMPAT_KERNEL_HWCAP_TLS		__compat_khwcap_feature(TLS)
+#define COMPAT_KERNEL_HWCAP_VFPv4	__compat_khwcap_feature(VFPv4)
+#define COMPAT_KERNEL_HWCAP_IDIVA	__compat_khwcap_feature(IDIVA)
+#define COMPAT_KERNEL_HWCAP_IDIVT	__compat_khwcap_feature(IDIVT)
+#define COMPAT_KERNEL_HWCAP_VFPD32	__compat_khwcap_feature(VFPD32)
+#define COMPAT_KERNEL_HWCAP_LPAE	__compat_khwcap_feature(LPAE)
+#define COMPAT_KERNEL_HWCAP_EVTSTRM	__compat_khwcap_feature(EVTSTRM)
+
+#define __compat_khwcap2_feature(x)	const_ilog2(COMPAT_HWCAP2_ ## x)
+#define COMPAT_KERNEL_HWCAP_AES		__compat_khwcap2_feature(AES)
+#define COMPAT_KERNEL_HWCAP_PMULL	__compat_khwcap2_feature(PMULL)
+#define COMPAT_KERNEL_HWCAP_SHA1	__compat_khwcap2_feature(SHA1)
+#define COMPAT_KERNEL_HWCAP_SHA2	__compat_khwcap2_feature(SHA2)
+#define COMPAT_KERNEL_HWCAP_CRC32	__compat_khwcap2_feature(CRC32)
+#endif /* CONFIG_COMPAT */
+
+static const char *const hwcap_str[] = {
+	[KERNEL_HWCAP_FP]		= "fp",
+	[KERNEL_HWCAP_ASIMD]		= "asimd",
+	[KERNEL_HWCAP_EVTSTRM]		= "evtstrm",
+	[KERNEL_HWCAP_AES]		= "aes",
+	[KERNEL_HWCAP_PMULL]		= "pmull",
+	[KERNEL_HWCAP_SHA1]		= "sha1",
+	[KERNEL_HWCAP_SHA2]		= "sha2",
+	[KERNEL_HWCAP_CRC32]		= "crc32",
+	[KERNEL_HWCAP_ATOMICS]		= "atomics",
+	[KERNEL_HWCAP_FPHP]		= "fphp",
+	[KERNEL_HWCAP_ASIMDHP]		= "asimdhp",
+	[KERNEL_HWCAP_CPUID]		= "cpuid",
+	[KERNEL_HWCAP_ASIMDRDM]		= "asimdrdm",
+	[KERNEL_HWCAP_JSCVT]		= "jscvt",
+	[KERNEL_HWCAP_FCMA]		= "fcma",
+	[KERNEL_HWCAP_LRCPC]		= "lrcpc",
+	[KERNEL_HWCAP_DCPOP]		= "dcpop",
+	[KERNEL_HWCAP_SHA3]		= "sha3",
+	[KERNEL_HWCAP_SM3]		= "sm3",
+	[KERNEL_HWCAP_SM4]		= "sm4",
+	[KERNEL_HWCAP_ASIMDDP]		= "asimddp",
+	[KERNEL_HWCAP_SHA512]		= "sha512",
+	[KERNEL_HWCAP_SVE]		= "sve",
+	[KERNEL_HWCAP_ASIMDFHM]		= "asimdfhm",
+	[KERNEL_HWCAP_DIT]		= "dit",
+	[KERNEL_HWCAP_USCAT]		= "uscat",
+	[KERNEL_HWCAP_ILRCPC]		= "ilrcpc",
+	[KERNEL_HWCAP_FLAGM]		= "flagm",
+	[KERNEL_HWCAP_SSBS]		= "ssbs",
+	[KERNEL_HWCAP_SB]		= "sb",
+	[KERNEL_HWCAP_PACA]		= "paca",
+	[KERNEL_HWCAP_PACG]		= "pacg",
+	[KERNEL_HWCAP_DCPODP]		= "dcpodp",
+	[KERNEL_HWCAP_SVE2]		= "sve2",
+	[KERNEL_HWCAP_SVEAES]		= "sveaes",
+	[KERNEL_HWCAP_SVEPMULL]		= "svepmull",
+	[KERNEL_HWCAP_SVEBITPERM]	= "svebitperm",
+	[KERNEL_HWCAP_SVESHA3]		= "svesha3",
+	[KERNEL_HWCAP_SVESM4]		= "svesm4",
+	[KERNEL_HWCAP_FLAGM2]		= "flagm2",
+	[KERNEL_HWCAP_FRINT]		= "frint",
+	[KERNEL_HWCAP_SVEI8MM]		= "svei8mm",
+	[KERNEL_HWCAP_SVEF32MM]		= "svef32mm",
+	[KERNEL_HWCAP_SVEF64MM]		= "svef64mm",
+	[KERNEL_HWCAP_SVEBF16]		= "svebf16",
+	[KERNEL_HWCAP_I8MM]		= "i8mm",
+	[KERNEL_HWCAP_BF16]		= "bf16",
+	[KERNEL_HWCAP_DGH]		= "dgh",
+	[KERNEL_HWCAP_RNG]		= "rng",
+	NULL
+};
+
+#ifdef CONFIG_COMPAT
+static const char *const compat_hwcap_str[] = {
+	[COMPAT_KERNEL_HWCAP_SWP]	= "swp",
+	[COMPAT_KERNEL_HWCAP_HALF]	= "half",
+	[COMPAT_KERNEL_HWCAP_THUMB]	= "thumb",
+	[COMPAT_KERNEL_HWCAP_26BIT]	= "26bit",
+	[COMPAT_KERNEL_HWCAP_FAST_MULT] = "fastmult",
+	[COMPAT_KERNEL_HWCAP_FPA]	= "fpa",
+	[COMPAT_KERNEL_HWCAP_VFP]	= "vfp",
+	[COMPAT_KERNEL_HWCAP_EDSP]	= "edsp",
+	[COMPAT_KERNEL_HWCAP_JAVA]	= "java",
+	[COMPAT_KERNEL_HWCAP_IWMMXT]	= "iwmmxt",
+	[COMPAT_KERNEL_HWCAP_CRUNCH]	= "crunch",
+	[COMPAT_KERNEL_HWCAP_THUMBEE]	= "thumbee",
+	[COMPAT_KERNEL_HWCAP_NEON]	= "neon",
+	[COMPAT_KERNEL_HWCAP_VFPv3]	= "vfpv3",
+	[COMPAT_KERNEL_HWCAP_VFPV3D16]	= "vfpv3d16",
+	[COMPAT_KERNEL_HWCAP_TLS]	= "tls",
+	[COMPAT_KERNEL_HWCAP_VFPv4]	= "vfpv4",
+	[COMPAT_KERNEL_HWCAP_IDIVA]	= "idiva",
+	[COMPAT_KERNEL_HWCAP_IDIVT]	= "idivt",
+	[COMPAT_KERNEL_HWCAP_VFPD32]	= "vfpd32",
+	[COMPAT_KERNEL_HWCAP_LPAE]	= "lpae",
+	[COMPAT_KERNEL_HWCAP_EVTSTRM]	= "evtstrm",
+	NULL
+};
+
+static const char *const compat_hwcap2_str[] = {
+	[COMPAT_KERNEL_HWCAP_AES]	= "aes",
+	[COMPAT_KERNEL_HWCAP_PMULL]	= "pmull",
+	[COMPAT_KERNEL_HWCAP_SHA1]	= "sha1",
+	[COMPAT_KERNEL_HWCAP_SHA2]	= "sha2",
+	[COMPAT_KERNEL_HWCAP_CRC32]	= "crc32",
+	NULL,
+};
+#endif /* CONFIG_COMPAT */
+
 /*
  * This yields a mask that user programs can use to figure out what
  * instruction set this cpu supports.
diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
index 86136075ae41..f45f8614e8bd 100644
--- a/arch/arm64/kernel/cpuinfo.c
+++ b/arch/arm64/kernel/cpuinfo.c
@@ -42,96 +42,6 @@ static const char *icache_policy_str[] = {
 
 unsigned long __icache_flags;
 
-static const char *const hwcap_str[] = {
-	"fp",
-	"asimd",
-	"evtstrm",
-	"aes",
-	"pmull",
-	"sha1",
-	"sha2",
-	"crc32",
-	"atomics",
-	"fphp",
-	"asimdhp",
-	"cpuid",
-	"asimdrdm",
-	"jscvt",
-	"fcma",
-	"lrcpc",
-	"dcpop",
-	"sha3",
-	"sm3",
-	"sm4",
-	"asimddp",
-	"sha512",
-	"sve",
-	"asimdfhm",
-	"dit",
-	"uscat",
-	"ilrcpc",
-	"flagm",
-	"ssbs",
-	"sb",
-	"paca",
-	"pacg",
-	"dcpodp",
-	"sve2",
-	"sveaes",
-	"svepmull",
-	"svebitperm",
-	"svesha3",
-	"svesm4",
-	"flagm2",
-	"frint",
-	"svei8mm",
-	"svef32mm",
-	"svef64mm",
-	"svebf16",
-	"i8mm",
-	"bf16",
-	"dgh",
-	"rng",
-	NULL
-};
-
-#ifdef CONFIG_COMPAT
-static const char *const compat_hwcap_str[] = {
-	"swp",
-	"half",
-	"thumb",
-	"26bit",
-	"fastmult",
-	"fpa",
-	"vfp",
-	"edsp",
-	"java",
-	"iwmmxt",
-	"crunch",
-	"thumbee",
-	"neon",
-	"vfpv3",
-	"vfpv3d16",
-	"tls",
-	"vfpv4",
-	"idiva",
-	"idivt",
-	"vfpd32",
-	"lpae",
-	"evtstrm",
-	NULL
-};
-
-static const char *const compat_hwcap2_str[] = {
-	"aes",
-	"pmull",
-	"sha1",
-	"sha2",
-	"crc32",
-	NULL
-};
-#endif /* CONFIG_COMPAT */
-
 static int c_show(struct seq_file *m, void *v)
 {
 	int i, j;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
