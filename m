Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 804D11A77B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 11:49:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Y/vokI22qdtgkAyY+xEHK3n6jxOVc5ce/VadNG4x93o=; b=SklI59k0FEdiIL1OVQWEqaRvGe
	opIlmav4at7Q+fKTYqom+wwJVDrXGIgLKC4nwtwBcKfCMlEll2VkvwSBu8w0sOLMOAgM91SYyQGUQ
	0U0jK+EIM8j7h7S1xsYjNIcjJx0I/oldvz1evxeZtdjyanb5xfgCYYJC4NrcDwX28jtsyfc1Hiah1
	dSR6dsTwhouwSZ5qyF/vNoYoWCaDqd0adb9IPYrRthMhvREDmIkOxOuAh3xssn2YU8pslLBqjFsI/
	AmYeQLREuaAnCjoJ13OQ7ssINAZo0o+l73QqxkjK8zStOpLpyajhuoLoisQb8ohZ+EEep1AG9mSOr
	6wEghS4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOIC5-0000kR-DW; Tue, 14 Apr 2020 09:49:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOIBX-0000c5-G3
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 09:48:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0063E31B;
 Tue, 14 Apr 2020 02:48:51 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5D7103F6C4;
 Tue, 14 Apr 2020 02:48:48 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 01/16] arm64/cpufeature: Add explicit ftr_id_isar0[] for
 ID_ISAR0 register
Date: Tue, 14 Apr 2020 15:18:15 +0530
Message-Id: <1586857710-17154-2-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586857710-17154-1-git-send-email-anshuman.khandual@arm.com>
References: <1586857710-17154-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_024851_617950_12F79840 
X-CRM114-Status: GOOD (  11.56  )
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

ID_ISAR0[31..28] bits are RES0 in ARMv8, Reserved/UNK in ARMv7. Currently
these bits get exposed through generic_id_ftr32[] which is not desirable.
Hence define an explicit ftr_id_isar0[] array for ID_ISAR0 register where
those bits can be hidden.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

Suggested-by: Mark Rutland <mark.rutland@arm.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/include/asm/sysreg.h |  8 ++++++++
 arch/arm64/kernel/cpufeature.c  | 14 ++++++++++++--
 2 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index ebc622432831..f6341065b929 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -750,6 +750,14 @@
 
 #define ID_DFR0_PERFMON_8_1		0x4
 
+#define ID_ISAR0_DIVIDE_SHIFT		24
+#define ID_ISAR0_DEBUG_SHIFT		20
+#define ID_ISAR0_COPROC_SHIFT		16
+#define ID_ISAR0_CMPBRANCH_SHIFT	12
+#define ID_ISAR0_BITFIELD_SHIFT		8
+#define ID_ISAR0_BITCOUNT_SHIFT		4
+#define ID_ISAR0_SWAP_SHIFT		0
+
 #define ID_ISAR5_RDM_SHIFT		24
 #define ID_ISAR5_CRC32_SHIFT		16
 #define ID_ISAR5_SHA2_SHIFT		12
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 9fac745aa7bb..7b0f8b59bf59 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -316,6 +316,16 @@ static const struct arm64_ftr_bits ftr_dczid[] = {
 	ARM64_FTR_END,
 };
 
+static const struct arm64_ftr_bits ftr_id_isar0[] = {
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_ISAR0_DIVIDE_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_ISAR0_DEBUG_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_ISAR0_COPROC_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_ISAR0_CMPBRANCH_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_ISAR0_BITFIELD_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_ISAR0_BITCOUNT_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_ISAR0_SWAP_SHIFT, 4, 0),
+	ARM64_FTR_END,
+};
 
 static const struct arm64_ftr_bits ftr_id_isar5[] = {
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_ISAR5_RDM_SHIFT, 4, 0),
@@ -373,7 +383,7 @@ static const struct arm64_ftr_bits ftr_zcr[] = {
  * Common ftr bits for a 32bit register with all hidden, strict
  * attributes, with 4bit feature fields and a default safe value of
  * 0. Covers the following 32bit registers:
- * id_isar[0-4], id_mmfr[1-3], id_pfr1, mvfr[0-1]
+ * id_isar[1-4], id_mmfr[1-3], id_pfr1, mvfr[0-1]
  */
 static const struct arm64_ftr_bits ftr_generic_32bits[] = {
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 28, 4, 0),
@@ -419,7 +429,7 @@ static const struct __ftr_reg_entry {
 	ARM64_FTR_REG(SYS_ID_MMFR3_EL1, ftr_generic_32bits),
 
 	/* Op1 = 0, CRn = 0, CRm = 2 */
-	ARM64_FTR_REG(SYS_ID_ISAR0_EL1, ftr_generic_32bits),
+	ARM64_FTR_REG(SYS_ID_ISAR0_EL1, ftr_id_isar0),
 	ARM64_FTR_REG(SYS_ID_ISAR1_EL1, ftr_generic_32bits),
 	ARM64_FTR_REG(SYS_ID_ISAR2_EL1, ftr_generic_32bits),
 	ARM64_FTR_REG(SYS_ID_ISAR3_EL1, ftr_generic_32bits),
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
