Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7085E9E927
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:23:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ovfK0FuQxYSCWD87N2uqKMRZMVGHf8smdWVFcYZJyJU=; b=q2O4pg04v1gSKBCqRau7s6TPev
	XcNO5Q299aNMYUoQn0+/9l6+FyLneOXrKp3LdrnSMbs5DsLCLyR0t6DMHhyRFZZT7v0PGLyXJkPOu
	iXojTfpCTfzT7L9zwrPwSmRLUN5Vxg39J1ECtIHOx49NqJLgHwZUFMBSg8Njfyg06Ot9BIxm6180H
	bqvDcKcIfbeOLd0Sx3pDSozOxz0m8ogWIw+C31YF09wAH70FrnOtZ2d/a0UyVfVlyw2IFpeX/KKWv
	866PgYrgd8IP081jRWiqknmJ5+2+lQlaPu9XMCQfq0bwao1nKluzRbv2B/PwG9qjmX2SfLWpV0B9A
	9dBaljmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bR1-0007Ld-CQ; Tue, 27 Aug 2019 13:22:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bMv-0002en-Bd
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:18:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 062B61576;
 Tue, 27 Aug 2019 06:18:40 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EEF7A3F246;
 Tue, 27 Aug 2019 06:18:38 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/6] arm64: mm: Add ISB instruction to set_pgd()
Date: Tue, 27 Aug 2019 14:18:15 +0100
Message-Id: <20190827131818.14724-4-will@kernel.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190827131818.14724-1-will@kernel.org>
References: <20190827131818.14724-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_061841_681507_74DE31A3 
X-CRM114-Status: GOOD (  11.72  )
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
Cc: linux-arch@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 6a4cbd63c25a ("Revert "arm64: Remove unnecessary ISBs from
set_{pte,pmd,pud}"") reintroduced ISB instructions to some of our
page table setter functions in light of a recent clarification to the
Armv8 architecture. Although 'set_pgd()' isn't currently used to update
a live page table, add the ISB instruction there too for consistency
with the other macros and to provide some future-proofing if we use it
on live tables in the future.

Reported-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/pgtable.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index feda7294320c..2faa77635942 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -605,6 +605,7 @@ static inline void set_pgd(pgd_t *pgdp, pgd_t pgd)
 
 	WRITE_ONCE(*pgdp, pgd);
 	dsb(ishst);
+	isb();
 }
 
 static inline void pgd_clear(pgd_t *pgdp)
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
