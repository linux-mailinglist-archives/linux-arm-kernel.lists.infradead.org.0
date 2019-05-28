Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A5A2CB41
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:11:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QfwbgAW0LN0Eij77ZiTa6ydeA8J1QLFluIdKkEmRpi0=; b=QHEl/PWb4WppZQ
	LUdCWCSC2Ugn77wX7AOEnKjcF22qu0GTPhqdADFbRW+RnztJlZBdA2+gyjePafsDe2c6L64QVa/HP
	NwV8WeR8D+2RgHIHYLSL11Ch2fPHl6/F0vRp063R8DEa9P5RMFWjvdwu+rng5oljle+QTqky232Ac
	w7BXqqZZTEzDMiZ4B+p10XuyQeTWHMeSLGnKszcyjUsBfa6fQu15uDd1QGLT4QXgNFjqv5CY5Yeq5
	0obDloinJ3/hq5K/SwfdQ/WTmZouNmNIVp4qBBh0kQAXqxZzRblha+iPF9CZF+d6bgpBCKk7ztNUE
	HVb9AhrtNj2pSOIj5CQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVehS-0005B6-JE; Tue, 28 May 2019 16:11:42 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVege-0004SQ-5p
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:10:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C78C11684;
 Tue, 28 May 2019 09:10:51 -0700 (PDT)
Received: from capper-debian.arm.com (unknown [10.37.12.41])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AF52E3F59C;
 Tue, 28 May 2019 09:10:49 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 05/12] arm64: dump: Make kernel page table dumper dynamic
 again
Date: Tue, 28 May 2019 17:10:19 +0100
Message-Id: <20190528161026.13193-6-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528161026.13193-1-steve.capper@arm.com>
References: <20190528161026.13193-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091052_607472_7BA0E6AC 
X-CRM114-Status: GOOD (  13.88  )
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, marc.zyngier@arm.com,
 catalin.marinas@arm.com, bhsharma@redhat.com, will.deacon@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The kernel page table dumper assumes that the placement of VA regions is
constant and determined at compile time. As we are about to introduce
variable VA logic, we need to be able to determine certain regions at
boot time.

This patch adds logic to the kernel page table dumper s.t. these regions
can be computed at boot time.

Signed-off-by: Steve Capper <steve.capper@arm.com>
---
 arch/arm64/mm/dump.c | 58 +++++++++++++++++++++++++++++++++++---------
 1 file changed, 47 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
index ee4e5bea8944..f5fd6d6557fc 100644
--- a/arch/arm64/mm/dump.c
+++ b/arch/arm64/mm/dump.c
@@ -29,23 +29,45 @@
 #include <asm/pgtable-hwdef.h>
 #include <asm/ptdump.h>
 
-static const struct addr_marker address_markers[] = {
-	{ PAGE_OFFSET,			"Linear Mapping start" },
-	{ VA_START,			"Linear Mapping end" },
+
+enum address_markers_idx {
+	PAGE_OFFSET_NR = 0,
+	VA_START_NR,
+#ifdef CONFIG_KASAN
+	KASAN_START_NR,
+	KASAN_END_NR,
+#endif
+	MODULES_START_NR,
+	MODULES_END_NR,
+	VMALLOC_START_NR,
+	VMALLOC_END_NR,
+	FIXADDR_START_NR,
+	FIXADDR_END_NR,
+	PCI_START_NR,
+	PCI_END_NR,
+#ifdef CONFIG_SPARSEMEM_VMEMMAP
+	VMEMMAP_START_NR,
+#endif
+	END_NR
+};
+
+static struct addr_marker address_markers[] = {
+	{ 0 /* PAGE_OFFSET */,		"Linear Mapping start" },
+	{ 0 /* VA_START */,		"Linear Mapping end" },
 #ifdef CONFIG_KASAN
-	{ KASAN_SHADOW_START,		"Kasan shadow start" },
+	{ 0 /* KASAN_SHADOW_START */,	"Kasan shadow start" },
 	{ KASAN_SHADOW_END,		"Kasan shadow end" },
 #endif
 	{ MODULES_VADDR,		"Modules start" },
 	{ MODULES_END,			"Modules end" },
 	{ VMALLOC_START,		"vmalloc() area" },
-	{ VMALLOC_END,			"vmalloc() end" },
-	{ FIXADDR_START,		"Fixmap start" },
-	{ FIXADDR_TOP,			"Fixmap end" },
-	{ PCI_IO_START,			"PCI I/O start" },
-	{ PCI_IO_END,			"PCI I/O end" },
+	{ 0 /* VMALLOC_END */,		"vmalloc() end" },
+	{ 0 /* FIXADDR_START */,	"Fixmap start" },
+	{ 0 /* FIXADDR_TOP */,		"Fixmap end" },
+	{ 0 /* PCI_IO_START */,		"PCI I/O start" },
+	{ 0 /* PCI_IO_END */,		"PCI I/O end" },
 #ifdef CONFIG_SPARSEMEM_VMEMMAP
-	{ VMEMMAP_START,		"vmemmap" },
+	{ 0 /* VMEMMAP_START */,	"vmemmap" },
 #endif
 	{ -1,				NULL },
 };
@@ -380,7 +402,6 @@ static void ptdump_initialize(void)
 static struct ptdump_info kernel_ptdump_info = {
 	.mm		= &init_mm,
 	.markers	= address_markers,
-	.base_addr	= PAGE_OFFSET,
 };
 
 void ptdump_check_wx(void)
@@ -405,6 +426,21 @@ void ptdump_check_wx(void)
 
 static int ptdump_init(void)
 {
+	kernel_ptdump_info.base_addr = PAGE_OFFSET;
+	address_markers[PAGE_OFFSET_NR].start_address = PAGE_OFFSET;
+	address_markers[VA_START_NR].start_address = VA_START;
+#ifdef CONFIG_KASAN
+	address_markers[KASAN_START_NR].start_address = KASAN_SHADOW_START;
+#endif
+	address_markers[VMALLOC_END_NR].start_address = VMALLOC_END;
+	address_markers[FIXADDR_START_NR].start_address = FIXADDR_START;
+	address_markers[FIXADDR_END_NR].start_address = FIXADDR_TOP;
+	address_markers[PCI_START_NR].start_address = PCI_IO_START;
+	address_markers[PCI_END_NR].start_address = PCI_IO_END;
+#ifdef CONFIG_SPARSEMEM_VMEMMAP
+	address_markers[VMEMMAP_START_NR].start_address = VMEMMAP_START;
+#endif
+
 	ptdump_initialize();
 	ptdump_debugfs_register(&kernel_ptdump_info, "kernel_page_tables");
 	return 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
