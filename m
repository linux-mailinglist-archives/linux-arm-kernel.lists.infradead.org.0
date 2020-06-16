Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9869F1FA671
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 04:26:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=knqjlQHmLFXtdPgtZmVdFcxVEjTASL/2yHzKOQa9+uQ=; b=Dq7
	bbZWVGEATLY8r5REapgddccwbryRfFGmAfKiI68YEmomARLbWM39+nc0ZdAVkZAQLlV8P0J00zKyL
	rK9OTRTpS7of6xjZJqEmnlpMwwWZv0woDVJqoRq8N3g/o9XLd7t77DfoTCsNtTjDhAqY1ZwaoLznV
	PHfaB1wy+DhHC37sWVu/eBAoImxs2KWLMdqGswaJIiuJczj5Hz23reAUVb2Hjpjjrd0uYvxtiYS2S
	AtepZTCesHdJPn1HXUE6EUhh4YurW1wVEB6c/1mbctvo2Wt0awXVmzJL2Dhha5FViMreJiTWLmZtQ
	vge9BwMnnJoOVSJiwhO9OOB/hiofZUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl1IW-00053D-0A; Tue, 16 Jun 2020 02:26:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl1IO-000525-7f
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 02:25:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1ED4F1FB;
 Mon, 15 Jun 2020 19:25:48 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.80.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 219B33F71F;
 Mon, 15 Jun 2020 19:25:44 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/cpufeature: Validate feature bits spacing in
 arm64_ftr_regs[]
Date: Tue, 16 Jun 2020 07:55:31 +0530
Message-Id: <1592274331-19006-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_192552_321926_7A92153E 
X-CRM114-Status: GOOD (  14.38  )
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
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

arm64_feature_bits for a register in arm64_ftr_regs[] are in a descending
order as per their shift values. Validate that these features bits are
defined correctly and do not overlap with each other. This check protects
against any inadvertent erroneous changes to the register definitions.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
Applies on 5.8-rc1.

 arch/arm64/kernel/cpufeature.c | 45 +++++++++++++++++++++++++++++++---
 1 file changed, 42 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 4ae41670c2e6..2270eda9a7fb 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -697,11 +697,50 @@ static s64 arm64_ftr_safe_value(const struct arm64_ftr_bits *ftrp, s64 new,
 
 static void __init sort_ftr_regs(void)
 {
-	int i;
+	const struct arm64_ftr_reg *ftr_reg;
+	const struct arm64_ftr_bits *ftr_bits;
+	unsigned int i, j, width, shift, prev_shift;
+
+	for (i = 0; i < ARRAY_SIZE(arm64_ftr_regs); i++) {
+		/*
+		 * Features here must be sorted in descending order with respect
+		 * to their shift values and should not overlap with each other.
+		 */
+		ftr_reg = arm64_ftr_regs[i].reg;
+		for (ftr_bits = ftr_reg->ftr_bits, j = 0;
+				ftr_bits->width != 0; ftr_bits++, j++) {
+			if (WARN_ON(ftr_bits->shift  + ftr_bits->width > 64))
+				pr_err("%s has invalid feature at shift %d\n",
+					ftr_reg->name, ftr_bits->shift);
+
+			/*
+			 * Skip the first feature. There is nothing to
+			 * compare against for now.
+			 */
+			if (j == 0)
+				continue;
+
+			prev_shift = ftr_reg->ftr_bits[j - 1].shift;
+			width = ftr_reg->ftr_bits[j].width;
+			shift = ftr_reg->ftr_bits[j].shift;
+			if (WARN_ON(prev_shift < shift + width))
+				pr_err("%s has feature overlap at shift %d\n",
+					ftr_reg->name, ftr_bits->shift);
+		}
 
-	/* Check that the array is sorted so that we can do the binary search */
-	for (i = 1; i < ARRAY_SIZE(arm64_ftr_regs); i++)
+		/*
+		 * Skip the first register. There is nothing to
+		 * compare against for now.
+		 */
+		if (i == 0)
+			continue;
+		/*
+		 * Registers here must be sorted in ascending order with respect
+		 * to sys_id for subsequent binary search in get_arm64_ftr_reg()
+		 * to work correctly.
+		 */
 		BUG_ON(arm64_ftr_regs[i].sys_id < arm64_ftr_regs[i - 1].sys_id);
+	}
 }
 
 /*
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
