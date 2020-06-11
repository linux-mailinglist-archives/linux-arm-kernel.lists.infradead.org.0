Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C89C1F695E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 15:50:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2bZbhrsaIK+PSIsbsFoXkCP2tlBbDKL88EfGlBp0E+o=; b=nmLYqvNkTISy4x
	VB1f6NfDmIDU08NBIRbbKD4cPQgoTwfPPgs7tZP4FFWFrA6e7VF2I05x2mJFoM74kVYdhRZHq2A0H
	Tp3m2oUb/OY0dee2uZDNCC6Lx9amm4v3qX6rp8m1HaUb61tedyxH5qF/XZH/kqCCCR6ckWNYh5qbT
	Lz6ICKoCH5rTwUCJdoQscHkTrOBlPw3GJTmusZZDSeAdBCwRGB2OAafg1R3JAE3k3GbjJoSMpPWwn
	A9NojyptSCX03FMBrCGpfm8LUBkARWzWKVTscoxsgLJwLtg48CeKnBKgQIu5KMnNgZzGehhoqdowI
	LNsvaSEQvmLm/DpCfnUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjNb8-0005Xw-VH; Thu, 11 Jun 2020 13:50:26 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjNaI-0003U1-CO
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 13:49:36 +0000
X-Originating-IP: 91.175.115.186
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 6DEF4E0009;
 Thu, 11 Jun 2020 13:49:31 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Russell King <linux@armlinux.org.uk>,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v2 3/6] ARM: Make the number of fix bitmap depend on the page
 size
Date: Thu, 11 Jun 2020 15:49:11 +0200
Message-Id: <20200611134914.765827-4-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200611134914.765827-1-gregory.clement@bootlin.com>
References: <20200611134914.765827-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_064934_549272_6BEDB0B6 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Currently the number of fixmap used is fixed. However, if the page
size is no more 4K but a larger one, then, the space occupied by
fixmap is too big.

The total fixmap size being fixed, the number of fixmap should depend
of the page size as it is done for arm64.

Instead of always using 32 fixmap, we try to always having the same
size: 128KB, which for 4KB page matches these 32 pages.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 arch/arm/include/asm/fixmap.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/fixmap.h b/arch/arm/include/asm/fixmap.h
index 472c93db5dac..d4b82af5a96d 100644
--- a/arch/arm/include/asm/fixmap.h
+++ b/arch/arm/include/asm/fixmap.h
@@ -6,6 +6,7 @@
 #define FIXADDR_END		0xfff00000UL
 #define FIXADDR_TOP		(FIXADDR_END - PAGE_SIZE)
 
+#include <linux/sizes.h>
 #include <asm/kmap_types.h>
 #include <asm/pgtable.h>
 
@@ -27,7 +28,7 @@ enum fixed_addresses {
 	 * not to clash since early_ioremap() is only available before
 	 * paging_init(), and kmap() only after.
 	 */
-#define NR_FIX_BTMAPS		32
+#define NR_FIX_BTMAPS		(SZ_128K / PAGE_SIZE)
 #define FIX_BTMAPS_SLOTS	7
 #define TOTAL_FIX_BTMAPS	(NR_FIX_BTMAPS * FIX_BTMAPS_SLOTS)
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
