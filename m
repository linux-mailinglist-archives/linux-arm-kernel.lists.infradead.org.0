Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C85D4FA12
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 06:41:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QqM584asx6ZUP+MgIuNc3FdxCEZOmdn39AQ8lhWV3gc=; b=PKf7W2wR2d81PE
	FebTSm9XwIxRXGMRGvC7AjQY7EBuvxKM/pDLYm4H6hS5qls+HxZoYKPFehqYq2pdAQxTxfTUln6lV
	kpgI0J+h5j318lkvoovpwZh2R1sAo2UzF2mareHs6PMClxbqQB7Oyh+T6Z1oXZnYJaDYr73kXMGO2
	YMJgKc3zY2u+N/5nLs38ihg26VQRpzb3+IQO/qCawGyPjwVjrCQDfFNv3fbdSifrFUUNcWIzpBSci
	Bw2Y/hhT0bfKhWb8lWOJ5dsDuMruor7qZoQ3mrPieqI1GplpjzpAihdQfjy2lj28ZYVyneUIPUvF0
	/6UVP/WUZFINs09uH0ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heuK2-0001CZ-UW; Sun, 23 Jun 2019 04:41:46 +0000
Received: from balrog.mythic-beasts.com ([2a00:1098:0:82:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heuIR-0007wR-UO
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 04:40:09 +0000
Received: from [199.195.250.187] (port=43111 helo=hermes.aosc.io)
 by balrog.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <icenowy@aosc.io>)
 id 1heuIO-0000fa-9Y; Sun, 23 Jun 2019 05:40:04 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 1A81A6B5D5;
 Sun, 23 Jun 2019 04:39:59 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v3 6/9] ARM: sunxi: dts: s3/s3l/v3: add DTSI files for
 S3/S3L/V3 SoCs
Date: Sun, 23 Jun 2019 12:37:58 +0800
Message-Id: <20190623043801.14040-7-icenowy@aosc.io>
In-Reply-To: <20190623043801.14040-1-icenowy@aosc.io>
References: <20190623043801.14040-1-icenowy@aosc.io>
MIME-Version: 1.0
X-BlackCat-Spam-Score: 65
X-Spam-Status: No, score=6.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_214008_588987_B8620F36 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:82:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner S3/S3L/V3 SoCs all share the same die with the V3s SoC,
but with more GPIO wired out of the package.

Add DTSI files for these SoCs. The DTSI file for V3 just replaces the
pinctrl compatible string, and the S3/S3L DTSI files just include the V3
DTSI file.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
---
No changes in v3/v2.

 arch/arm/boot/dts/sun8i-s3.dtsi  |  6 ++++++
 arch/arm/boot/dts/sun8i-s3l.dtsi |  6 ++++++
 arch/arm/boot/dts/sun8i-v3.dtsi  | 14 ++++++++++++++
 3 files changed, 26 insertions(+)
 create mode 100644 arch/arm/boot/dts/sun8i-s3.dtsi
 create mode 100644 arch/arm/boot/dts/sun8i-s3l.dtsi
 create mode 100644 arch/arm/boot/dts/sun8i-v3.dtsi

diff --git a/arch/arm/boot/dts/sun8i-s3.dtsi b/arch/arm/boot/dts/sun8i-s3.dtsi
new file mode 100644
index 000000000000..0f41a25ecb30
--- /dev/null
+++ b/arch/arm/boot/dts/sun8i-s3.dtsi
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2019 Icenowy Zheng <icenowy@aosc.io>
+ */
+
+#include "sun8i-v3.dtsi"
diff --git a/arch/arm/boot/dts/sun8i-s3l.dtsi b/arch/arm/boot/dts/sun8i-s3l.dtsi
new file mode 100644
index 000000000000..0f41a25ecb30
--- /dev/null
+++ b/arch/arm/boot/dts/sun8i-s3l.dtsi
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2019 Icenowy Zheng <icenowy@aosc.io>
+ */
+
+#include "sun8i-v3.dtsi"
diff --git a/arch/arm/boot/dts/sun8i-v3.dtsi b/arch/arm/boot/dts/sun8i-v3.dtsi
new file mode 100644
index 000000000000..6ae8645ade50
--- /dev/null
+++ b/arch/arm/boot/dts/sun8i-v3.dtsi
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2019 Icenowy Zheng <icenowy@aosc.io>
+ */
+
+#include "sun8i-v3s.dtsi"
+
+&ccu {
+	compatible = "allwinner,sun8i-v3-ccu";
+};
+
+&pio {
+	compatible = "allwinner,sun8i-v3-pinctrl";
+};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
