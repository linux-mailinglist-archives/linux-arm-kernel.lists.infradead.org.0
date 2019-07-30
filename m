Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F15CA7AB33
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 16:40:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DwALlthaozoOCGryL9hCvwNTVu7TzU+hiQTVRZEJ/qI=; b=Kdb
	O4W0nwUdVTWzH8bSEAirPyKNRNAfn1gdDP1FowmAftA0xcQTmHRrUvDi2t33OhuHCj4GHxDkF9p0w
	LhMV51MWMhVhzUhkH1rPvJCJuDp083IEF8YGehdGsUnrlW0DR1S1Ea5dnIgPaRvd+85Q2ZsQwPaFI
	nadX+m1AV0ukeCZqjF786hmg04drQfaCeIKwSMvt+QtuTLYuXq3rCIdjOU23rSAGoX9FMzw2sv28j
	vXj5wCWzUP2RU2RQCx8cALT2oUSA+TxYMvnWy9MiUKCbwqPYGJWPX1hKxZa3RYO1YVI0CM/KbiK++
	QP0oNEZf1irbbvXZsIh0XK5NRF4+XYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsTIr-0001eS-DX; Tue, 30 Jul 2019 14:40:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsTIf-0001dv-VT
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 14:40:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6491628;
 Tue, 30 Jul 2019 07:40:25 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B16E33F694;
 Tue, 30 Jul 2019 07:40:24 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: catalin.marinas@arm.com
Subject: [PATCH] arm64: cpufeature: Fix feature comparison for CTR_EL0.{CWG,
 ERG}
Date: Tue, 30 Jul 2019 15:40:20 +0100
Message-Id: <20190730144020.3518-1-will@kernel.org>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_074026_059162_91FB6B1F 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Suzuki Poulose <suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If CTR_EL0.{CWG,ERG} are 0b0000 then they must be interpreted to have
their architecturally maximum values, which defeats the use of
FTR_HIGHER_SAFE when sanitising CPU ID registers on heterogeneous
machines.

Introduce FTR_HIGHER_OR_ZERO_SAFE so that these fields effectively
saturate at zero.

Cc: Suzuki Poulose <suzuki.poulose@arm.com>
Fixes: 3c739b571084 ("arm64: Keep track of CPU feature registers")
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/cpufeature.h | 7 ++++---
 arch/arm64/kernel/cpufeature.c      | 8 ++++++--
 2 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 407e2bf23676..c96ffa4722d3 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -35,9 +35,10 @@
  */
 
 enum ftr_type {
-	FTR_EXACT,	/* Use a predefined safe value */
-	FTR_LOWER_SAFE,	/* Smaller value is safe */
-	FTR_HIGHER_SAFE,/* Bigger value is safe */
+	FTR_EXACT,			/* Use a predefined safe value */
+	FTR_LOWER_SAFE,			/* Smaller value is safe */
+	FTR_HIGHER_SAFE,		/* Bigger value is safe */
+	FTR_HIGHER_OR_ZERO_SAFE,	/* Bigger value is safe, but 0 is biggest */
 };
 
 #define FTR_STRICT	true	/* SANITY check strict matching required */
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index f29f36a65175..d19d14ba9ae4 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -225,8 +225,8 @@ static const struct arm64_ftr_bits ftr_ctr[] = {
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_EXACT, 31, 1, 1), /* RES1 */
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, CTR_DIC_SHIFT, 1, 1),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, CTR_IDC_SHIFT, 1, 1),
-	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_HIGHER_SAFE, CTR_CWG_SHIFT, 4, 0),
-	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_HIGHER_SAFE, CTR_ERG_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_HIGHER_OR_ZERO_SAFE, CTR_CWG_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_HIGHER_OR_ZERO_SAFE, CTR_ERG_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, CTR_DMINLINE_SHIFT, 4, 1),
 	/*
 	 * Linux can handle differing I-cache policies. Userspace JITs will
@@ -468,6 +468,10 @@ static s64 arm64_ftr_safe_value(const struct arm64_ftr_bits *ftrp, s64 new,
 	case FTR_LOWER_SAFE:
 		ret = new < cur ? new : cur;
 		break;
+	case FTR_HIGHER_OR_ZERO_SAFE:
+		if (!cur || !new)
+			break;
+		/* Fallthrough */
 	case FTR_HIGHER_SAFE:
 		ret = new > cur ? new : cur;
 		break;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
