Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCEB1A77D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 11:51:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n7ZUytf7KMO0ScEfTYCfsAZf41mEKpWSxZf0iX/HhQM=; b=LpIuqdK1qHxd6kO1FwS+PiW5F1
	m12bljumMyo8tGbmEa6fUaJkLjqY0Q9yL4gj+qkMbY+9HSXxTQ2L3f6vC8C2HUb8QvmLwUntwHRrQ
	hv+/xolaSh6MzSF0sL6LGiIFaxiRCEUC84azqUivznCPUJnGCZWaSM6CrJkQWi4NRXnCu0nYNqR/V
	o/KpsHnGHhDgkdc+Ef/C8yVLETQp7k4XIHAaUsKsnAE010js+6BY1OSKRquDMDwLgFzAFwueHsWiv
	TUeWJT8bE3iNyZFp1hC/ibH0BS6WxyfydLhlq087Apw1kvP2mxRJvV6MKXPzz+91lASMzTSF4RK1w
	/PGs1COQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOIEK-00054v-PY; Tue, 14 Apr 2020 09:51:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOIBy-00010f-5T
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 09:49:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 253A71FB;
 Tue, 14 Apr 2020 02:49:17 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1EC9B3F6C4;
 Tue, 14 Apr 2020 02:49:12 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 08/16] arm64/cpufeature: Add remaining feature bits in
 ID_MMFR4 register
Date: Tue, 14 Apr 2020 15:18:22 +0530
Message-Id: <1586857710-17154-9-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586857710-17154-1-git-send-email-anshuman.khandual@arm.com>
References: <1586857710-17154-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_024918_435900_AACD26C7 
X-CRM114-Status: GOOD (  12.02  )
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

Enable all remaining feature bits like EVT, CCIDX, LSM, HPDS, CnP, XNX,
SpecSEI in ID_MMFR4 register per ARM DDI 0487F.a.

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
 arch/arm64/kernel/cpufeature.c  | 13 +++++++++++++
 2 files changed, 21 insertions(+)

diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 32b7539b965f..8a2421a0d76a 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -778,6 +778,14 @@
 #define ID_ISAR6_DP_SHIFT		4
 #define ID_ISAR6_JSCVT_SHIFT		0
 
+#define ID_MMFR4_EVT_SHIFT		28
+#define ID_MMFR4_CCIDX_SHIFT		24
+#define ID_MMFR4_LSM_SHIFT		20
+#define ID_MMFR4_HPDS_SHIFT		16
+#define ID_MMFR4_CNP_SHIFT		12
+#define ID_MMFR4_XNX_SHIFT		8
+#define ID_MMFR4_SPECSEI_SHIFT		0
+
 #define ID_MMFR5_ETS_SHIFT		0
 
 #define ID_PFR0_DIT_SHIFT		24
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 8b289a6815eb..7de6abbafb35 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -338,7 +338,20 @@ static const struct arm64_ftr_bits ftr_id_isar5[] = {
 };
 
 static const struct arm64_ftr_bits ftr_id_mmfr4[] = {
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_MMFR4_EVT_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_MMFR4_CCIDX_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_MMFR4_LSM_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_MMFR4_HPDS_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_MMFR4_CNP_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_MMFR4_XNX_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 4, 4, 0),	/* ac2 */
+	/*
+	 * SpecSEI = 1 indicates that the PE might generate an SError on an
+	 * external abort on speculative read. It is safe to assume that an
+	 * SError might be generated than it will not be. Hence it has been
+	 * classified as FTR_HIGHER_SAFE.
+	 */
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_HIGHER_SAFE, ID_MMFR4_SPECSEI_SHIFT, 4, 0),
 	ARM64_FTR_END,
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
