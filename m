Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3AF11FA6A1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 05:22:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Tbh+1/4qtnXLYn1Bp2zSxEa7V0RU8Jbbnj0rbMTzBBg=; b=DAM
	Rnu1WML0Vvef4/UaGHh1lYB2ChkYhGre6w95J2dT+DTucMqrLzNkCUOghGEHFGZAv/Mw0s5KpLOr0
	rXEfa6dSFrwktAjdtixwJUTLlnko+uPLPwZd7pN0Jn9hNsxeJhx0Akv5PTiUHxv5p5/tXlPdyFO2L
	8Iz35QUdTyI4xxI9GJ/xJycEAU5evXQIcUYXcYmNZtOTbp3YFiXMk9lQeN4O9yq9W/4vUQY1NL7fM
	pqXWPJuhnWUkpIS2JN5eTzGpqDSkNDeunKVD0ftWY7yA4YhUU9azjC1HIqp48wa/inxKrJiZ2PdXc
	yX/6UgeRKgP4QQ6jjv9nOGGI5ITaR6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl2BQ-00033z-Sx; Tue, 16 Jun 2020 03:22:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl2BI-00033U-M8
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 03:22:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 781801FB;
 Mon, 15 Jun 2020 20:22:35 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.80.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 72B943F6CF;
 Mon, 15 Jun 2020 20:22:33 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm/mm: Drop [PTE|PMD]_TYPE_FAULT
Date: Tue, 16 Jun 2020 08:52:04 +0530
Message-Id: <1592277724-2721-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_202236_770030_5EA655AB 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Russell King <linux@armlinux.org.uk>, Allison Randal <allison@lohutok.net>,
 Anshuman Khandual <anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Drop these unused symbols i.e PTE_TYPE_FAULT and PMD_TYPE_FAULT.

Cc: Russell King <linux@armlinux.org.uk>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Allison Randal <allison@lohutok.net>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
Applies on 5.8-rc1. Just found by code inspection and built tested for
arm platform.

 arch/arm/include/asm/pgtable-2level-hwdef.h | 2 --
 arch/arm/include/asm/pgtable-3level-hwdef.h | 2 --
 2 files changed, 4 deletions(-)

diff --git a/arch/arm/include/asm/pgtable-2level-hwdef.h b/arch/arm/include/asm/pgtable-2level-hwdef.h
index 556937e1790e..b10d6e1aee33 100644
--- a/arch/arm/include/asm/pgtable-2level-hwdef.h
+++ b/arch/arm/include/asm/pgtable-2level-hwdef.h
@@ -14,7 +14,6 @@
  *   - common
  */
 #define PMD_TYPE_MASK		(_AT(pmdval_t, 3) << 0)
-#define PMD_TYPE_FAULT		(_AT(pmdval_t, 0) << 0)
 #define PMD_TYPE_TABLE		(_AT(pmdval_t, 1) << 0)
 #define PMD_TYPE_SECT		(_AT(pmdval_t, 2) << 0)
 #define PMD_PXNTABLE		(_AT(pmdval_t, 1) << 2)     /* v7 */
@@ -56,7 +55,6 @@
  *   - common
  */
 #define PTE_TYPE_MASK		(_AT(pteval_t, 3) << 0)
-#define PTE_TYPE_FAULT		(_AT(pteval_t, 0) << 0)
 #define PTE_TYPE_LARGE		(_AT(pteval_t, 1) << 0)
 #define PTE_TYPE_SMALL		(_AT(pteval_t, 2) << 0)
 #define PTE_TYPE_EXT		(_AT(pteval_t, 3) << 0)		/* v5 */
diff --git a/arch/arm/include/asm/pgtable-3level-hwdef.h b/arch/arm/include/asm/pgtable-3level-hwdef.h
index 2f35b4eddaa8..43aa8f61eac1 100644
--- a/arch/arm/include/asm/pgtable-3level-hwdef.h
+++ b/arch/arm/include/asm/pgtable-3level-hwdef.h
@@ -15,7 +15,6 @@
  *   - common
  */
 #define PMD_TYPE_MASK		(_AT(pmdval_t, 3) << 0)
-#define PMD_TYPE_FAULT		(_AT(pmdval_t, 0) << 0)
 #define PMD_TYPE_TABLE		(_AT(pmdval_t, 3) << 0)
 #define PMD_TYPE_SECT		(_AT(pmdval_t, 1) << 0)
 #define PMD_TABLE_BIT		(_AT(pmdval_t, 1) << 1)
@@ -56,7 +55,6 @@
  * + Level 3 descriptor (PTE)
  */
 #define PTE_TYPE_MASK		(_AT(pteval_t, 3) << 0)
-#define PTE_TYPE_FAULT		(_AT(pteval_t, 0) << 0)
 #define PTE_TYPE_PAGE		(_AT(pteval_t, 3) << 0)
 #define PTE_TABLE_BIT		(_AT(pteval_t, 1) << 1)
 #define PTE_BUFFERABLE		(_AT(pteval_t, 1) << 2)		/* AttrIndx[0] */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
