Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE81564B4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 10:36:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HvlEwFcyAMKZdB9YfOpia+nR+iLx3x+P3o4A8f3u0l8=; b=GOK
	PiQz8emXhRu1fEtbEWo0K4M+vq8INDIA/LoUOcUdYdf7BqHX34nCGnNO2j3KtJm99yx6LYHhu8y8t
	FXb4uvv4BStrxUBbAOLWP2ea8QJ46NqmgPFUx8xrUG+xYCPUNl3tV/FQboThRX110e7ihK6Ak0q7N
	DQ/tHmm6wjFJ9aDvuXhP+BDfuGTbpL+RV2eyweQycW21ocLPL7lnlUnjjVafEyMrs9rcyhSMRfAWP
	LyLXzDogYYUu6gS30yJtM9y0AAUiikLNADk04AgJn4GuComrScZbUJcBPR/z9V65zXMmUj/9UEoru
	/yF5wRklQhmrsFOf8LuCVSQp76Ja4Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg3Pj-0006kX-Ll; Wed, 26 Jun 2019 08:36:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hg3PW-0006js-EB
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 08:36:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E2AEE2B;
 Wed, 26 Jun 2019 01:36:07 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.40.140])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 78D5E3F246;
 Wed, 26 Jun 2019 01:36:05 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64/mm: Drop [PTE|PMD]_TYPE_FAULT
Date: Wed, 26 Jun 2019 14:06:10 +0530
Message-Id: <1561538170-26594-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_013610_524810_F27A11EF 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Steve Capper <steve.capper@arm.com>, Will Deacon <will.deacon@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This was added part of the original commit which added MMU definitions.

commit 4f04d8f00545 ("arm64: MMU definitions").

These symbols never got used as confirmed from a git log search.

git log -p arch/arm64/ | grep PTE_TYPE_FAULT
git log -p arch/arm64/ | grep PMD_TYPE_FAULT

These probably meant to identify non present entries which can now be
achieved with PMD_SECT_VALID or PTE_VALID bits. Hence just drop these
unused symbols which are not required anymore.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Steve Capper <steve.capper@arm.com>
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/include/asm/pgtable-hwdef.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
index 974f0114ef1b..529e83f8e607 100644
--- a/arch/arm64/include/asm/pgtable-hwdef.h
+++ b/arch/arm64/include/asm/pgtable-hwdef.h
@@ -126,7 +126,6 @@
  * Level 2 descriptor (PMD).
  */
 #define PMD_TYPE_MASK		(_AT(pmdval_t, 3) << 0)
-#define PMD_TYPE_FAULT		(_AT(pmdval_t, 0) << 0)
 #define PMD_TYPE_TABLE		(_AT(pmdval_t, 3) << 0)
 #define PMD_TYPE_SECT		(_AT(pmdval_t, 1) << 0)
 #define PMD_TABLE_BIT		(_AT(pmdval_t, 1) << 1)
@@ -155,7 +154,6 @@
  */
 #define PTE_VALID		(_AT(pteval_t, 1) << 0)
 #define PTE_TYPE_MASK		(_AT(pteval_t, 3) << 0)
-#define PTE_TYPE_FAULT		(_AT(pteval_t, 0) << 0)
 #define PTE_TYPE_PAGE		(_AT(pteval_t, 3) << 0)
 #define PTE_TABLE_BIT		(_AT(pteval_t, 1) << 1)
 #define PTE_USER		(_AT(pteval_t, 1) << 6)		/* AP[1] */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
