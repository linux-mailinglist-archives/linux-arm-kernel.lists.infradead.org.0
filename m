Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1041A77DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 11:52:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lLLmHWoFHC5xwdK8WBX/rotlmAIKQ4nAFAlxnetFHXQ=; b=BbyXWJMpeB1qyUQnCgc1/jB6Ct
	bDGLGk9Blr83oqAaPsjhM3jIjduchzddtiYGfYSnzjLlURswVAPaV1r3AUotnOtzIubQkY+4tgLFm
	qCjZ5gxIpSshVn33nktF6AmUthBPJ9VgZ31xZtXeavdUvF9kDmvJuDQR+ck8Z0usrFcseVBZNUTIQ
	B1aFGWNr7gsAcC5LLIJ/puvIEmFn3Hgiz8uItGMicihMJqR2GgVe8DiiM03Jy9XN85oYtTGYtyrRZ
	hcsAcwa9Y2gO3GWwIRj4LG9G+IHPWWEBhj5LfzB18l1Yt6TYqQy3+H+GJQ4rwYE4q0ZN+Biz4NQDA
	n4C4rS8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOIFK-00066f-Mz; Tue, 14 Apr 2020 09:52:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOICB-0001Be-56
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 09:49:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 57A301FB;
 Tue, 14 Apr 2020 02:49:30 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9B6CD3F6C4;
 Tue, 14 Apr 2020 02:49:27 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 12/16] arm64/cpufeature: Add remaining feature bits in
 ID_AA64MMFR0 register
Date: Tue, 14 Apr 2020 15:18:26 +0530
Message-Id: <1586857710-17154-13-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586857710-17154-1-git-send-email-anshuman.khandual@arm.com>
References: <1586857710-17154-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_024931_341455_9E371719 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 maz@kernel.org, will@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable EVC, FGT, EXS, TGRAN4_2, TGRAN64_2 and TGRAN16_2 features bits in
ID_AA64MMFR0 register as per ARM DDI 0487F.a specification.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

Suggested-by: Will Deacon <will@kernel.org>
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/include/asm/sysreg.h | 13 +++++++++++++
 arch/arm64/kernel/cpufeature.c  |  7 +++++++
 2 files changed, 20 insertions(+)

diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 2e04a8586067..041b4fd7a84c 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -696,6 +696,12 @@
 #define ID_AA64ZFR0_SVEVER_SVE2		0x1
 
 /* id_aa64mmfr0 */
+#define ID_AA64MMFR0_ECV_SHIFT		60
+#define ID_AA64MMFR0_FGT_SHIFT		56
+#define ID_AA64MMFR0_EXS_SHIFT		44
+#define ID_AA64MMFR0_TGRAN4_2_SHIFT	40
+#define ID_AA64MMFR0_TGRAN64_2_SHIFT	36
+#define ID_AA64MMFR0_TGRAN16_2_SHIFT	32
 #define ID_AA64MMFR0_TGRAN4_SHIFT	28
 #define ID_AA64MMFR0_TGRAN64_SHIFT	24
 #define ID_AA64MMFR0_TGRAN16_SHIFT	20
@@ -831,6 +837,13 @@
 #define ID_AA64MMFR0_TGRAN16_NI		0x0
 #define ID_AA64MMFR0_TGRAN16_SUPPORTED	0x1
 
+#define ID_AA64MMFR0_TGRAN4_2_NI	 0x1
+#define ID_AA64MMFR0_TGRAN4_2_SUPPORTED	 0x2
+#define ID_AA64MMFR0_TGRAN64_2_NI	 0x1
+#define ID_AA64MMFR0_TGRAN64_2_SUPPORTED 0x2
+#define ID_AA64MMFR0_TGRAN16_2_NI	 0x1
+#define ID_AA64MMFR0_TGRAN16_2_SUPPORTED 0x2
+
 #if defined(CONFIG_ARM64_4K_PAGES)
 #define ID_AA64MMFR0_TGRAN_SHIFT	ID_AA64MMFR0_TGRAN4_SHIFT
 #define ID_AA64MMFR0_TGRAN_SUPPORTED	ID_AA64MMFR0_TGRAN4_SUPPORTED
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 3d9c500555f3..3ab9f5b68d7b 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -215,6 +215,10 @@ static const struct arm64_ftr_bits ftr_id_aa64zfr0[] = {
 };
 
 static const struct arm64_ftr_bits ftr_id_aa64mmfr0[] = {
+
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR0_ECV_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR0_FGT_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR0_EXS_SHIFT, 4, 0),
 	/*
 	 * We already refuse to boot CPUs that don't support our configured
 	 * page size, so we can only detect mismatches for a page size other
@@ -222,6 +226,9 @@ static const struct arm64_ftr_bits ftr_id_aa64mmfr0[] = {
 	 * exist in the wild so, even though we don't like it, we'll have to go
 	 * along with it and treat them as non-strict.
 	 */
+	S_ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64MMFR0_TGRAN4_2_SHIFT, 4, ID_AA64MMFR0_TGRAN4_2_NI),
+	S_ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64MMFR0_TGRAN64_2_SHIFT, 4, ID_AA64MMFR0_TGRAN64_2_NI),
+	S_ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64MMFR0_TGRAN16_2_SHIFT, 4, ID_AA64MMFR0_TGRAN16_2_NI),
 	S_ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64MMFR0_TGRAN4_SHIFT, 4, ID_AA64MMFR0_TGRAN4_NI),
 	S_ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64MMFR0_TGRAN64_SHIFT, 4, ID_AA64MMFR0_TGRAN64_NI),
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64MMFR0_TGRAN16_SHIFT, 4, ID_AA64MMFR0_TGRAN16_NI),
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
