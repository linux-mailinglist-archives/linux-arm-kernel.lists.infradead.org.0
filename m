Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED1E85065
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 17:57:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14clecLqfsAYjf/ZDZgc/VVRjhMZlmNBS99kxEYNk+o=; b=a3CLSy/GP7CVAR
	ft6P+QPkzp7CQo7nfv57OWqyNIjkWE1qgTxDyEhRkU8MdLFh1P1qiSU7iZPnl0h1LJo2Imr3cBdAB
	vRZ8V2qSN0n+4vseMb1VYw3XXEfqcqMbYCyjFdjka/d29RooLzvn3QRpH/SYQCFHkAVuhVXMqijKU
	9ObTDF7v+D4ut8LF9rHaKiIOmNYqWOqX+ErwnKnKdxKntK9TjcMolvHyIagT0EGXoZexm0Xiq8+W8
	SkIMiQ+601+G4X5/m3fL85h7GwLtq2/FXZnFTmFIYyYDMLJ2jTMn+AlYbDIElPam0maIL14qbEIYg
	2vAqA9xNJPreIJ+M+gyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOJJ-0007IS-VR; Wed, 07 Aug 2019 15:57:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOI3-0006Ph-JK
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 15:55:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 24CF31570;
 Wed,  7 Aug 2019 08:55:51 -0700 (PDT)
Received: from capper-ampere.manchester.arm.com
 (capper-ampere.manchester.arm.com [10.32.98.74])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EBC153F706;
 Wed,  7 Aug 2019 08:55:49 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V5 04/12] arm64: dump: De-constify VA_START and
 KASAN_SHADOW_START
Date: Wed,  7 Aug 2019 16:55:16 +0100
Message-Id: <20190807155524.5112-5-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190807155524.5112-1-steve.capper@arm.com>
References: <20190807155524.5112-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_085551_785169_904A4210 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, catalin.marinas@arm.com,
 bhsharma@redhat.com, Steve Capper <steve.capper@arm.com>, maz@kernel.org,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The kernel page table dumper assumes that the placement of VA regions is
constant and determined at compile time. As we are about to introduce
variable VA logic, we need to be able to determine certain regions at
boot time.

Specifically the VA_START and KASAN_SHADOW_START will depend on whether
or not the system is booted with 52-bit kernel VAs.

This patch adds logic to the kernel page table dumper s.t. these regions
can be computed at boot time.

Signed-off-by: Steve Capper <steve.capper@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

---

Changed in V3 - simplified the scope of de-constifying to just VA_START
and KASAN_SHADOW_START.
---
 arch/arm64/mm/dump.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
index beec87488e97..6ec75305828e 100644
--- a/arch/arm64/mm/dump.c
+++ b/arch/arm64/mm/dump.c
@@ -25,11 +25,20 @@
 #include <asm/pgtable-hwdef.h>
 #include <asm/ptdump.h>
 
-static const struct addr_marker address_markers[] = {
+
+enum address_markers_idx {
+	PAGE_OFFSET_NR = 0,
+	VA_START_NR,
+#ifdef CONFIG_KASAN
+	KASAN_START_NR,
+#endif
+};
+
+static struct addr_marker address_markers[] = {
 	{ PAGE_OFFSET,			"Linear Mapping start" },
-	{ VA_START,			"Linear Mapping end" },
+	{ 0 /* VA_START */,		"Linear Mapping end" },
 #ifdef CONFIG_KASAN
-	{ KASAN_SHADOW_START,		"Kasan shadow start" },
+	{ 0 /* KASAN_SHADOW_START */,	"Kasan shadow start" },
 	{ KASAN_SHADOW_END,		"Kasan shadow end" },
 #endif
 	{ MODULES_VADDR,		"Modules start" },
@@ -402,6 +411,10 @@ void ptdump_check_wx(void)
 
 static int ptdump_init(void)
 {
+	address_markers[VA_START_NR].start_address = VA_START;
+#ifdef CONFIG_KASAN
+	address_markers[KASAN_START_NR].start_address = KASAN_SHADOW_START;
+#endif
 	ptdump_initialize();
 	ptdump_debugfs_register(&kernel_ptdump_info, "kernel_page_tables");
 	return 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
