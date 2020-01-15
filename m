Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1F213CD4B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 20:43:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=haKT9c9W2H+XnOj8Q3Sh3lKN3aapahNx5HcPqy2mR6k=; b=OvRfLnqpq1+BDK
	GmvU3DF7DRt8I+OrQFovzL/SJbrievwaa68JalQ2D4XTSRLPDcr/W1Kkq4e9xtSxoXqX1kcnYAnTQ
	N4e/c71OiK157Gq3I3B/LmoeXeGpXf1/iLbOXErjvPRm/e24SGoZaIQ3j+EGbtonGkTkobiSrxPQE
	sNkb4FTtHJrFxGiaaG/V5RQ8UwldzW0kqkxbjZoxcZqu89QFOpWqXh1zrn+HlF8TZPv50oKocviXG
	FIF9Esyve2SVQSMhPFvS4AiLPjbC2k3MwSbuJ37eX9O8yAMzjFymYdaVmSwJ7KlKBhET/KJ5ScLhT
	doSBC/jSYIg45u/27wgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iroZQ-0006J3-7C; Wed, 15 Jan 2020 19:43:16 +0000
Received: from mailoutvs10.siol.net ([185.57.226.201] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iroYi-0005nc-HM
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 19:42:37 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 890F35228C8;
 Wed, 15 Jan 2020 20:42:30 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id XNy--GwjwwrJ; Wed, 15 Jan 2020 20:42:30 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 389D4522899;
 Wed, 15 Jan 2020 20:42:30 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id EC5BF522934;
 Wed, 15 Jan 2020 20:42:27 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 2/2] arm64: dts: allwinner: h6: Introduce OrangePi 3 eMMC
 variant
Date: Wed, 15 Jan 2020 20:42:16 +0100
Message-Id: <20200115194216.173117-3-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115194216.173117-1-jernej.skrabec@siol.net>
References: <20200115194216.173117-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_114232_730870_DCBAC1EB 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.201 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

OrangePi 3 can optionally have 8 GiB eMMC (soldered on board). Add new
DT file for it.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 arch/arm64/boot/dts/allwinner/Makefile        |  1 +
 .../allwinner/sun50i-h6-orangepi-3-emmc.dts   | 22 +++++++++++++++++++
 2 files changed, 23 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3-emmc.dts

diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
index cf4f78617c3f..5fe8db1290b6 100644
--- a/arch/arm64/boot/dts/allwinner/Makefile
+++ b/arch/arm64/boot/dts/allwinner/Makefile
@@ -25,6 +25,7 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h5-orangepi-zero-plus.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h5-orangepi-zero-plus2.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-beelink-gs1.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-3.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-3-emmc.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-lite2.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-one-plus.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64.dtb
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3-emmc.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3-emmc.dts
new file mode 100644
index 000000000000..278f1b55935f
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3-emmc.dts
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+// Copyright (C) 2020 Jernej Skrabec <jernej.skrabec@siol.net>
+
+#include "sun50i-h6-orangepi-3.dts"
+
+/ {
+	model = "OrangePi 3 eMMC";
+	compatible = "xunlong,orangepi-3-emmc", "allwinner,sun50i-h6";
+};
+
+&mmc2 {
+	vmmc-supply = <&reg_cldo1>;
+	vqmmc-supply = <&reg_bldo2>;
+	non-removable;
+	cap-mmc-hw-reset;
+	bus-width = <8>;
+	status = "okay";
+};
+
+&pio {
+	vcc-pc-supply = <&reg_bldo2>;
+};
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
