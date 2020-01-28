Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 060CA14B453
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 13:41:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=63PucYNPuRaMOhuo8spbJiCBPLduVMdCBEwLE9GU8fQ=; b=B74xSBb+E7+R64jgsURih0PBbf
	Z+Jli70KpyrFyAynGglKqn2fydEU6QuMG/juV9UjQxBYyct9w1yLIeJBDuTqnhTz2PDXd5E1M/xEL
	VLLXiZ3Dm6lEOcgnHrFNMZnYFuKbhuzCbRdHU+RZ8zgJIDgAo3m8C2nQCV/ItnF+36fWhalQ/qhDX
	j3lsnFoXck0omsEqQpfMMbdADB8VbA9H3rgizAob+vnlnLebDqL9H/A0B+FSpRqgaEH+1v07yQwl/
	tKux++b8L0quNe8bGsx8m1jFkkN4SSb4Sl1XQlNwvzHSWAtDSJVqes1h4V+4OTN7TFQRxhcMbcujU
	2hOXjwGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwQB7-0004UJ-QH; Tue, 28 Jan 2020 12:41:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwQ9h-0002Lv-Ib
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 12:39:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 90703101E;
 Tue, 28 Jan 2020 04:39:44 -0800 (PST)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.151])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 678A23F52E;
 Tue, 28 Jan 2020 04:39:42 -0800 (PST)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/6] arm64/cpufeature: Define an explicit ftr_id_isar0[] for
 ID_ISAR0 register
Date: Tue, 28 Jan 2020 18:09:07 +0530
Message-Id: <1580215149-21492-5-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580215149-21492-1-git-send-email-anshuman.khandual@arm.com>
References: <1580215149-21492-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_043945_735446_62A2C49A 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, Anshuman Khandual <anshuman.khandual@arm.com>
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/include/asm/sysreg.h |  8 ++++++++
 arch/arm64/kernel/cpufeature.c  | 14 ++++++++++++--
 2 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index fcbbf287478e..2bcd574bafb3 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -703,6 +703,14 @@
 #define ID_AA64DFR0_TRACEVER_SHIFT	4
 #define ID_AA64DFR0_DEBUGVER_SHIFT	0
 
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
index 73fc8e02ed99..2726bd6441da 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -313,6 +313,16 @@ static const struct arm64_ftr_bits ftr_dczid[] = {
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
@@ -385,7 +395,7 @@ static const struct arm64_ftr_bits ftr_zcr[] = {
  * Common ftr bits for a 32bit register with all hidden, strict
  * attributes, with 4bit feature fields and a default safe value of
  * 0. Covers the following 32bit registers:
- * id_isar[0-4], id_mmfr[1-3], id_pfr1, mvfr[0-1]
+ * id_isar[1-4], id_mmfr[1-3], id_pfr1, mvfr[0-1]
  */
 static const struct arm64_ftr_bits ftr_generic_32bits[] = {
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 28, 4, 0),
@@ -431,7 +441,7 @@ static const struct __ftr_reg_entry {
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
