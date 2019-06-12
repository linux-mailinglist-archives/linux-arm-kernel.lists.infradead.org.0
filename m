Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBEE42D77
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 19:28:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w+tR6Sw29tmfi0ISCHqCB7NZUgMF0Z5DRbO5p/oe6iM=; b=Sc6SxlhRVFRcoX
	dhDnjMT8xO1Y+ficAMkZyf9qq5MPJutlR1cxJzNzPpY8TrQGjvHD/DZlc33OpUkTHn7xUyJN+svXZ
	BmcrfZT1VU9f0eCH9zuQI52chA23wHJ0TO0DRKcx48QBx0Ijwa9Met7mDh2wKFDbLf9Ola5ms+VWO
	2cbZ40APYVTl4Wdy0+sp+cH7CPjGyRQii75n6o0gRLI/RkHn/DR0ISCAf5iEN+P7hSg5dZO6ymFX+
	0mNmvlXBJjjUKOHnYzN/Ljeh7hFtlq2wvq3KjwZWSgyfx7PUzEVraHRShIGB7YEyWTaEROT1V41bI
	1Zr31s9316+cWYECnvlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb737-0006qT-9b; Wed, 12 Jun 2019 17:28:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb71r-00061c-AB
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 17:27:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7F384A78;
 Wed, 12 Jun 2019 10:27:18 -0700 (PDT)
Received: from capper-debian.arm.com (unknown [10.37.13.15])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D09793F246;
 Wed, 12 Jun 2019 10:27:16 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 03/10] arm64: dump: De-constify VA_START and
 KASAN_SHADOW_START
Date: Wed, 12 Jun 2019 18:26:51 +0100
Message-Id: <20190612172658.28522-4-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190612172658.28522-1-steve.capper@arm.com>
References: <20190612172658.28522-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_102719_485018_3991868C 
X-CRM114-Status: GOOD (  12.03  )
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

Specifically the VA_START and KASAN_SHADOW_START will depend on whether
or not the system is booted with 52-bit kernel VAs.

This patch adds logic to the kernel page table dumper s.t. these regions
can be computed at boot time.

Signed-off-by: Steve Capper <steve.capper@arm.com>

---

Changed in V3 - simplified the scope of de-constifying to just VA_START
and KASAN_SHADOW_START.
---
 arch/arm64/mm/dump.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
index ee4e5bea8944..52c725ff49a2 100644
--- a/arch/arm64/mm/dump.c
+++ b/arch/arm64/mm/dump.c
@@ -29,11 +29,20 @@
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
@@ -405,6 +414,10 @@ void ptdump_check_wx(void)
 
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
