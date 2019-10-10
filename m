Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DABD27CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 13:09:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gtvWqtFVZ3W+AxP8JyySN1oq6OFD0WJ1zwgX5YrMf7A=; b=Kh/lkyuk4xzAzh
	ljXwz+RGJvqNyVSa1lEvk4XoK/z/XgorE0qVhDj3g/LSAs7bENxGiOJ2daBEbHDZncQc4jB3LcujL
	B62I1/Pyz87fkqEbJsbmteWc6znpx3EFRoSA54e15Ce7YGfsDpf9sJ2lmER4ViAOXBxxR7xO4akvO
	0By3HrU+pGL6CeJAhdvCCIX1dOKe3BDtmb83QY/irKKdSubjJrAeOBQhvpTqsEijeOScYeim5/M/P
	xiph7yISwecNs2teh9pwUX6P94gUqa4XTLhjN9d3DpnDFK1MsyUjRpYhdW0Z/E+TRrmA6+i3y47Fv
	sxjG3ssKAiKCU9puhOMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIWJj-0007vs-RF; Thu, 10 Oct 2019 11:09:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIWJb-0007vZ-3p
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 11:09:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D794428;
 Thu, 10 Oct 2019 04:09:01 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EEA1B3F68E;
 Thu, 10 Oct 2019 04:09:00 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: stable@vger.kernel.org
Subject: [PATCH] arm64: cpufeature: Fix truncating a feature value
Date: Thu, 10 Oct 2019 12:08:56 +0100
Message-Id: <20191010110856.4376-1-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_040903_194517_75389BBC 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A signed feature value is truncated to turn to an unsigned value
causing bad state in the system wide infrastructure. This affects
the discovery of FP/ASIMD support on arm64. Fix this by making sure
we cast it properly.

Fixes: 4f0a606bce5ec ("arm64: cpufeature: Track unsigned fields")
Cc: stable@vger.kernel.org # v4.4
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 arch/arm64/include/asm/cpufeature.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 0a66f8241f18..9eb0d8072dd9 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -151,8 +151,8 @@ static inline u64 arm64_ftr_mask(struct arm64_ftr_bits *ftrp)
 static inline s64 arm64_ftr_value(struct arm64_ftr_bits *ftrp, u64 val)
 {
 	return ftrp->sign ?
-		cpuid_feature_extract_field_width(val, ftrp->shift, ftrp->width) :
-		cpuid_feature_extract_unsigned_field_width(val, ftrp->shift, ftrp->width);
+		(s64)cpuid_feature_extract_field_width(val, ftrp->shift, ftrp->width) :
+		(s64)cpuid_feature_extract_unsigned_field_width(val, ftrp->shift, ftrp->width);
 }
 
 static inline bool id_aa64mmfr0_mixed_endian_el0(u64 mmfr0)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
