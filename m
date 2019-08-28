Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E66A0135
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 14:01:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fesiF4xiahxtPCMIZeliGgYjrikwrG+FUYvVccPEf6Y=; b=HRrzGbQc8d8gR+/z/GXA+Q1uA1
	QJfKJmMkzyxnJQmmTa/ywBad3/TCDMv7JJvXltuwy21NpH5AGitd9guaTaKdy0kmRfGPFo56F2pdJ
	tNx0W9BApReorRW52colfpQO61i93zz4cWCTnhXYd1FV6lBdVbFMGciV8DkdWbDL9bJTm/Z69WZuZ
	IVtRMBT4Tf3su2kPFGeVUVIDpHNJBiUwshO1bgclKs+GO2/4z6DzleIdGDYItyR5zs+aPW1//QO7U
	2t6oEub1EE2FPxzs2gBYJZFF0Nz2/HvxrJNwvqIxMnApuv4jcFfWaXFW2HNoqAhCPN2qx3v/7xaRe
	euhISDLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2wdW-0007kH-9p; Wed, 28 Aug 2019 12:01:14 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2wbG-0004m3-2s
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 11:58:57 +0000
Received: from ramsan ([84.194.98.4]) by michel.telenet-ops.be with bizsmtp
 id ubyi2000F05gfCL06byivG; Wed, 28 Aug 2019 13:58:45 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i2wb4-0008As-Cn; Wed, 28 Aug 2019 13:58:42 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i2wFQ-0001kX-8C; Wed, 28 Aug 2019 13:36:20 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH v2 2/7] soc: renesas: r8a7795-sysc: Fix power request conflicts
Date: Wed, 28 Aug 2019 13:36:13 +0200
Message-Id: <20190828113618.6672-3-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190828113618.6672-1-geert+renesas@glider.be>
References: <20190828113618.6672-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_045854_282756_96CAC857 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-renesas-soc@vger.kernel.org, Simon Horman <horms@verge.net.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Describe the location and contents of the SYSCEXTMASK register on R-Car
H3, to prevent conflicts between internal and external power requests.

This register does not exist on R-Car H3 ES1.x and ES2.x.

Based on a patch in the BSP by Dien Pham <dien.pham.ry@renesas.com>.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v2:
  - No changes.
---
 drivers/soc/renesas/r8a7795-sysc.c | 32 +++++++++++++++++++++++++-----
 drivers/soc/renesas/rcar-sysc.h    |  2 +-
 2 files changed, 28 insertions(+), 6 deletions(-)

diff --git a/drivers/soc/renesas/r8a7795-sysc.c b/drivers/soc/renesas/r8a7795-sysc.c
index cda27a67de9876af..7e15cd09c4eb4780 100644
--- a/drivers/soc/renesas/r8a7795-sysc.c
+++ b/drivers/soc/renesas/r8a7795-sysc.c
@@ -5,6 +5,7 @@
  * Copyright (C) 2016-2017 Glider bvba
  */
 
+#include <linux/bits.h>
 #include <linux/bug.h>
 #include <linux/kernel.h>
 #include <linux/sys_soc.h>
@@ -51,25 +52,46 @@ static struct rcar_sysc_area r8a7795_areas[] __initdata = {
 
 
 	/*
-	 * Fixups for R-Car H3 revisions after ES1.x
+	 * Fixups for R-Car H3 revisions
 	 */
 
-static const struct soc_device_attribute r8a7795es1[] __initconst = {
-	{ .soc_id = "r8a7795", .revision = "ES1.*" },
+#define HAS_A2VC0	BIT(0)		/* Power domain A2VC0 is present */
+#define NO_EXTMASK	BIT(1)		/* Missing SYSCEXTMASK register */
+
+static const struct soc_device_attribute r8a7795_quirks_match[] __initconst = {
+	{
+		.soc_id = "r8a7795", .revision = "ES1.*",
+		.data = (void *)(HAS_A2VC0 | NO_EXTMASK),
+	}, {
+		.soc_id = "r8a7795", .revision = "ES2.*",
+		.data = (void *)(NO_EXTMASK),
+	},
 	{ /* sentinel */ }
 };
 
 static int __init r8a7795_sysc_init(void)
 {
-	if (!soc_device_match(r8a7795es1))
+	const struct soc_device_attribute *attr;
+	u32 quirks = 0;
+
+	attr = soc_device_match(r8a7795_quirks_match);
+	if (attr)
+		quirks = (uintptr_t)attr->data;
+
+	if (!(quirks & HAS_A2VC0))
 		rcar_sysc_nullify(r8a7795_areas, ARRAY_SIZE(r8a7795_areas),
 				  R8A7795_PD_A2VC0);
 
+	if (quirks & NO_EXTMASK)
+		r8a7795_sysc_info.extmask_val = 0;
+
 	return 0;
 }
 
-const struct rcar_sysc_info r8a7795_sysc_info __initconst = {
+struct rcar_sysc_info r8a7795_sysc_info __initdata = {
 	.init = r8a7795_sysc_init,
 	.areas = r8a7795_areas,
 	.num_areas = ARRAY_SIZE(r8a7795_areas),
+	.extmask_offs = 0x2f8,
+	.extmask_val = BIT(0),
 };
diff --git a/drivers/soc/renesas/rcar-sysc.h b/drivers/soc/renesas/rcar-sysc.h
index 21ee3ff8620bbafe..499797a9e18c2f10 100644
--- a/drivers/soc/renesas/rcar-sysc.h
+++ b/drivers/soc/renesas/rcar-sysc.h
@@ -59,7 +59,7 @@ extern const struct rcar_sysc_info r8a7790_sysc_info;
 extern const struct rcar_sysc_info r8a7791_sysc_info;
 extern const struct rcar_sysc_info r8a7792_sysc_info;
 extern const struct rcar_sysc_info r8a7794_sysc_info;
-extern const struct rcar_sysc_info r8a7795_sysc_info;
+extern struct rcar_sysc_info r8a7795_sysc_info;
 extern const struct rcar_sysc_info r8a7796_sysc_info;
 extern const struct rcar_sysc_info r8a77965_sysc_info;
 extern const struct rcar_sysc_info r8a77970_sysc_info;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
