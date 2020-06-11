Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C921F695C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 15:49:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nMKy27l1quwz9kiJN4FErnsV2r8F4FO/Q0ScL007ZyY=; b=i3TAJ0C6cwLmIe
	Rs+eI0pNygZ97+KLZDTej/1OWDlZfOc/2k5GRn8T/Q2xZX2uXCtHC9Drkw10WuDZ2SBh+jRDIkRXX
	wIOwkADkRRqko1cyiAh7w+njFG6WlyBQBcwizs/bBp9rrDWUlMMT7e/VUMMGEFfka5qYJqr+GpgMz
	TBvI5a0uSjAsvcLImFVARrRJTHVILi1tDRuV856gim/AVCGdoTGFFSnuyQGQ67CgsbuDh5+sGo536
	ANKX7tV+T5w83HvwAZJBV3vh7XjNYRvz2Xc6D2STTXVmco10e1Ku6QaeKUFS/BAnzpU8E8JvM+IGj
	9bkKX0II/sete1P50y8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjNaS-0003Vs-CG; Thu, 11 Jun 2020 13:49:44 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjNaH-0003Ty-9H
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 13:49:35 +0000
X-Originating-IP: 91.175.115.186
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 9DACD20008;
 Thu, 11 Jun 2020 13:49:30 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Russell King <linux@armlinux.org.uk>,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v2 2/6] ARM: pagetable: prepare hardware page table to use
 large page
Date: Thu, 11 Jun 2020 15:49:10 +0200
Message-Id: <20200611134914.765827-3-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200611134914.765827-1-gregory.clement@bootlin.com>
References: <20200611134914.765827-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_064933_456149_0E9DFF0D 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.200 listed in wl.mailspike.net]
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
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With 4 KB pages, each page table contained 512 entries in the hardware
page tables, and 512 entries in the Linux page tables, each of those
entries pointing to 4 KB page.

With larger page sizes being emulated, the hardware page tables will
continue to contain 512 entries, as we keep using 4 KB pages at the MMU
level. Hence PTE_HWTABLE_PTRS is changed to 512. However, the number of
Linux page tables entries will vary depending on the page size: 512
entries with 4 KB pages, 256 entries with 8 KB pages, 128 entries with
16 KB pages, etc.

In the case of 4K pages, this patch doesn't modify the values being
used.

This is inspired from fa0ca2726ea9 ("DSMP 64K support") and
4ef803e12baf ("mmu: large-page: Added support for multiple kernel page
sizes") from
https://github.com/MarvellEmbeddedProcessors/linux-marvell.git

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 arch/arm/include/asm/pgtable-2level.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/include/asm/pgtable-2level.h b/arch/arm/include/asm/pgtable-2level.h
index 9e084a464a97..6316ef4a9f5c 100644
--- a/arch/arm/include/asm/pgtable-2level.h
+++ b/arch/arm/include/asm/pgtable-2level.h
@@ -67,13 +67,13 @@
  * until either the TLB entry is evicted under pressure, or a context
  * switch which changes the user space mapping occurs.
  */
-#define PTRS_PER_PTE		512
+#define PTRS_PER_PTE		(512 >> (PAGE_SHIFT-12))
 #define PTRS_PER_PMD		1
 #define PTRS_PER_PGD		2048
 
-#define PTE_HWTABLE_PTRS	(PTRS_PER_PTE)
+#define PTE_HWTABLE_PTRS	(512)
 #define PTE_HWTABLE_OFF		(PTE_HWTABLE_PTRS * sizeof(pte_t))
-#define PTE_HWTABLE_SIZE	(PTRS_PER_PTE * sizeof(u32))
+#define PTE_HWTABLE_SIZE	(PTE_HWTABLE_PTRS * sizeof(u32))
 
 /*
  * PMD_SHIFT determines the size of the area a second-level page table can map
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
