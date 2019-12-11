Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 715A211BC03
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 19:42:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=927fgn5mmaOSmpRqA0rQADO6xXYP89Fb7hjEeQZAV4w=; b=DNTWjGyP0IYGCf
	2c5goOPnz+g2cNfhe5F+EVu9vC5V2wQgjCOA3RpfsDiw03hInOu55JD7ZOGmugf4gLpIQCKgxps+m
	pWeUKvMMwZch9CzGIB99WmOWtBr99LmwuEbzFJb0e6figuDFr5HD6b6Zn2fe4HCKIyn2kJuWGFVvA
	AwgH826sx7mhaZj52wvk22g5a0n0AA/mHA0GBmJHXrD3N0Tw11hyh8gDCQpIN9/NrrJjb1HqCWEpI
	Qeet34hpuMCHoW460F+rKeMs49SNBVTarbJejy5PnM3/3VfEuN+0JaALEraZ2zwRH99ojPMBsYNQ3
	jYYauELuEmfNWj2WpKMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if6w6-00049Y-0y; Wed, 11 Dec 2019 18:42:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if6uj-000383-2a
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 18:40:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E5C5113E;
 Wed, 11 Dec 2019 10:40:44 -0800 (PST)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D9A5D3F6CF;
 Wed, 11 Dec 2019 10:40:42 -0800 (PST)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 04/22] arm64: Use macros instead of hard-coded constants for
 MAIR_EL1
Date: Wed, 11 Dec 2019 18:40:09 +0000
Message-Id: <20191211184027.20130-5-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191211184027.20130-1-catalin.marinas@arm.com>
References: <20191211184027.20130-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_104045_168949_8C881312 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Marc Zyngier <maz@kernel.org>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, the arm64 __cpu_setup has hard-coded constants for the memory
attributes that go into the MAIR_EL1 register. Define proper macros in
asm/sysreg.h and make use of them in proc.S.

Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/include/asm/sysreg.h | 12 ++++++++++++
 arch/arm64/mm/proc.S            | 27 ++++++++++-----------------
 2 files changed, 22 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 6e919fafb43d..e21470337c5e 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -538,6 +538,18 @@
 			 SCTLR_EL1_NTWE | SCTLR_ELx_IESB | SCTLR_EL1_SPAN |\
 			 ENDIAN_SET_EL1 | SCTLR_EL1_UCI  | SCTLR_EL1_RES1)
 
+/* MAIR_ELx memory attributes (used by Linux) */
+#define MAIR_ATTR_DEVICE_nGnRnE		UL(0x00)
+#define MAIR_ATTR_DEVICE_nGnRE		UL(0x04)
+#define MAIR_ATTR_DEVICE_GRE		UL(0x0c)
+#define MAIR_ATTR_NORMAL_NC		UL(0x44)
+#define MAIR_ATTR_NORMAL_WT		UL(0xbb)
+#define MAIR_ATTR_NORMAL		UL(0xff)
+#define MAIR_ATTR_MASK			UL(0xff)
+
+/* Position the attr at the correct index */
+#define MAIR_ATTRIDX(attr, idx)		((attr) << ((idx) * 8))
+
 /* id_aa64isar0 */
 #define ID_AA64ISAR0_TS_SHIFT		52
 #define ID_AA64ISAR0_FHM_SHIFT		48
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index a1e0592d1fbc..55f715957b36 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -42,7 +42,14 @@
 #define TCR_KASAN_FLAGS 0
 #endif
 
-#define MAIR(attr, mt)	((attr) << ((mt) * 8))
+/* Default MAIR_EL1 */
+#define MAIR_EL1_SET							\
+	(MAIR_ATTRIDX(MAIR_ATTR_DEVICE_nGnRnE, MT_DEVICE_nGnRnE) |	\
+	 MAIR_ATTRIDX(MAIR_ATTR_DEVICE_nGnRE, MT_DEVICE_nGnRE) |	\
+	 MAIR_ATTRIDX(MAIR_ATTR_DEVICE_GRE, MT_DEVICE_GRE) |		\
+	 MAIR_ATTRIDX(MAIR_ATTR_NORMAL_NC, MT_NORMAL_NC) |		\
+	 MAIR_ATTRIDX(MAIR_ATTR_NORMAL, MT_NORMAL) |			\
+	 MAIR_ATTRIDX(MAIR_ATTR_NORMAL_WT, MT_NORMAL_WT))
 
 #ifdef CONFIG_CPU_PM
 /**
@@ -416,23 +423,9 @@ ENTRY(__cpu_setup)
 	enable_dbg				// since this is per-cpu
 	reset_pmuserenr_el0 x0			// Disable PMU access from EL0
 	/*
-	 * Memory region attributes for LPAE:
-	 *
-	 *   n = AttrIndx[2:0]
-	 *			n	MAIR
-	 *   DEVICE_nGnRnE	000	00000000
-	 *   DEVICE_nGnRE	001	00000100
-	 *   DEVICE_GRE		010	00001100
-	 *   NORMAL_NC		011	01000100
-	 *   NORMAL		100	11111111
-	 *   NORMAL_WT		101	10111011
+	 * Memory region attributes
 	 */
-	ldr	x5, =MAIR(0x00, MT_DEVICE_nGnRnE) | \
-		     MAIR(0x04, MT_DEVICE_nGnRE) | \
-		     MAIR(0x0c, MT_DEVICE_GRE) | \
-		     MAIR(0x44, MT_NORMAL_NC) | \
-		     MAIR(0xff, MT_NORMAL) | \
-		     MAIR(0xbb, MT_NORMAL_WT)
+	mov_q	x5, MAIR_EL1_SET
 	msr	mair_el1, x5
 	/*
 	 * Prepare SCTLR

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
