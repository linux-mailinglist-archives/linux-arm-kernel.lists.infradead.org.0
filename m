Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 241782468C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 06:06:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qE/gZ0BxdWHqfsyoFkAQfRZLhco6bRsPn677KpOIjVQ=; b=lG7
	nHSMiesEy3F8q9nmq2OyLoJjlJxPfavGBaM8+DTOoP1Xwmv1uD8ZdXemucTMvgOYpZlOEXTMDSR/L
	cpWHJ3aOj0wbADrY+6Rk+ufGTGHbM752zUrFqH7qa5d8mQRQuDsDlcsnHk7vTvstg1fBLQFKgCOUb
	gNWsYKPv/4ktGbPeQuqXgHs0uBXDTFOLtnvFHR4a8NJJn9EKGtbBYn5hhk6UDJmsrWD+6ZMFROfFM
	/OM+viGBpWXmkchDtcPiIateub22gu+l/OXiexC0Q+e3344a31N/O6exIIiDDf5O7gJiYerWDBldM
	u6NjesCWhwRk45TBI4Gv2MbHq7ScQLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSw37-0006Pk-SC; Tue, 21 May 2019 04:06:49 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSw31-0006PP-AB
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 04:06:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 241F7341;
 Mon, 20 May 2019 21:06:42 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.42.136])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 92ED33F575;
 Mon, 20 May 2019 21:06:39 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/mm: Move PTE_VALID from SW defined to HW page table
 entry definitions
Date: Tue, 21 May 2019 09:36:27 +0530
Message-Id: <1558411587-19042-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_210643_358064_CB266A5D 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Steve Capper <steve.capper@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 James Morse <james.morse@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PTE_VALID signifies that the last level page table entry is valid and it is
MMU recognized while walking the page table. This is not a software defined
PTE bit and should not be listed like one. Just move it to appropriate
header file.

Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Steve Capper <steve.capper@arm.com>
Cc: Suzuki Poulose <suzuki.poulose@arm.com>
Cc: James Morse <james.morse@arm.com>
---
 arch/arm64/include/asm/pgtable-hwdef.h | 1 +
 arch/arm64/include/asm/pgtable-prot.h  | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
index a69259c..974f011 100644
--- a/arch/arm64/include/asm/pgtable-hwdef.h
+++ b/arch/arm64/include/asm/pgtable-hwdef.h
@@ -153,6 +153,7 @@
 /*
  * Level 3 descriptor (PTE).
  */
+#define PTE_VALID		(_AT(pteval_t, 1) << 0)
 #define PTE_TYPE_MASK		(_AT(pteval_t, 3) << 0)
 #define PTE_TYPE_FAULT		(_AT(pteval_t, 0) << 0)
 #define PTE_TYPE_PAGE		(_AT(pteval_t, 3) << 0)
diff --git a/arch/arm64/include/asm/pgtable-prot.h b/arch/arm64/include/asm/pgtable-prot.h
index 986e41c..38c7148 100644
--- a/arch/arm64/include/asm/pgtable-prot.h
+++ b/arch/arm64/include/asm/pgtable-prot.h
@@ -24,7 +24,6 @@
 /*
  * Software defined PTE bits definition.
  */
-#define PTE_VALID		(_AT(pteval_t, 1) << 0)
 #define PTE_WRITE		(PTE_DBM)		 /* same as DBM (51) */
 #define PTE_DIRTY		(_AT(pteval_t, 1) << 55)
 #define PTE_SPECIAL		(_AT(pteval_t, 1) << 56)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
