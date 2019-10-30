Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8960CE9B7E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 13:25:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RSTWd9eOs/HZHjDZ5TSuJ5uR6bjfXv2J4LgEqeQ//mo=; b=G6wZCN3R3pBbALS0liWpYpL7/t
	w6LlnTQ7shNUIJypv8fq2DOSl7R0aYMd7HtxTxO3/fi07tmnKFtg5SbiWzYlhPjJcBDyhNoxe64AT
	s0WHJbhTlVfDP8hvvBvk4DFnuzamxcnbm2uCfgSibv+cLP69kBFANPe+jJ9tMZ6VktvNGOxf4zFUQ
	ErSH8xRzO4/CqLa8CEf2Z9TVrbG0e/xVOWuROLONQLv3cqDFGvm0zUS+xewRt0EOOuFQbsk2hbeS6
	WgVfwboB39Q8jT59iV+7no/JBrxr6Ej4GOlttkT+r+rcWepg7DrZj/VVGissno3zrk8ubLKucggAy
	Gzt/HvGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPn2k-0000dD-A4; Wed, 30 Oct 2019 12:25:42 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPn1g-00074i-0p
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 12:24:37 +0000
Received: by mail-wr1-x444.google.com with SMTP id w18so2086717wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 05:24:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=uHR3w+XBYFJ6E7sqILU7UFRv7/0zoe1778Y28SVOjco=;
 b=bUK5vScpjfx3HzKxA5ujQJ9hr+ixSdirjp2P5aQ9GiOkjkSwh5tRXftGQuv4HVWFDA
 ZMcb6ftOHIbnF2DMQ7pZgUc6uNPgoiond7T4MR/MejGrAIKzVApGzCRPNYb7I6d8A8/7
 /bdEvLR2Y1ekldYd22cEGEaQ++qyAFS/PcVwpEhbWSPqn6WVBxfkMXecNQipKllwVQQz
 oY0neB0aVtVqMMaexHQTjqMaHckDbiftfZx108zEqWxYZS3EfHW+BmEnsvMqrvfD4u3T
 /rLCCag9miIRvzCZdWHhH/BP5rfuBJ3JDNpLxjR+Mqa2jGeP7WfklJkQQy/uZVWaIFb+
 AEBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=uHR3w+XBYFJ6E7sqILU7UFRv7/0zoe1778Y28SVOjco=;
 b=Ivt3ppq921X0jFsYwtRLOqSKQL5qM07FgIT/a8nlFCFQh37lYlI+zonZgbXOiVG0Oq
 pfh6LDyo0UCFFCzep9fQ/R3BrD/Hci5nMv/JesPtJ5EkcXFbCtEVpg79rf0jCO+IlRsr
 jh3oSG1iDquqtEP0Ld60rOxM8sLnoC3rx+mAfXoy+yJAMPueryfPP9nQz7Rmzj1NLMT2
 yqxKPQWRLw2mSeJKF/hE2/DIvjQj6u3TZqJomFOCF6DRJ5fgoZI6IShBvcNouiblWXGW
 uAdZxb3XJtwRV8QRDc95PMgTrHuyYr1KBdJGFxZ0VS98mD1SQbZzir4MGfAPduNQ10fM
 MqmA==
X-Gm-Message-State: APjAAAXU5WY4NYUuNYhVfIut+Jbu4uPUtnrQQxpeiCogv3U6kwbERDRN
 3GIt2RCM+IzaDEfFvk9S2ZK3SA==
X-Google-Smtp-Source: APXvYqx+XNc5QFCpaI7jaxlz/nbapSWNGNzUKMzQMuuNkYCj80iDX0vROwl5FfDwZlFuknLoqySYsw==
X-Received: by 2002:adf:828c:: with SMTP id 12mr24243912wrc.40.1572438274843; 
 Wed, 30 Oct 2019 05:24:34 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id p13sm2075919wma.41.2019.10.30.05.24.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 30 Oct 2019 05:24:34 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: mark.rutland@arm.com, mripard@kernel.org, robh+dt@kernel.org,
 wens@csie.org, jernej.skrabec@siol.net
Subject: [PATCH v3 3/3] ARM64: dts: allwinner: add pineh64 model A
Date: Wed, 30 Oct 2019 12:24:15 +0000
Message-Id: <1572438255-26107-4-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572438255-26107-1-git-send-email-clabbe@baylibre.com>
References: <1572438255-26107-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_052436_087442_65DAB185 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the model A of the PineH64.
The model A has the same size of the pine64 and has a PCIE slot.

The only devicetree difference with the pineH64 model B, is the PHY
regulator and the HDMI connector node.
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../devicetree/bindings/arm/sunxi.yaml        |  5 ++++
 arch/arm64/boot/dts/allwinner/Makefile        |  1 +
 .../allwinner/sun50i-h6-pine-h64-modelA.dts   | 30 +++++++++++++++++++
 3 files changed, 36 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA.dts

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 9a1e4992b9e9..0059925a3395 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -594,6 +594,11 @@ properties:
           - const: pine64,pine64-plus
           - const: allwinner,sun50i-a64
 
+      - description: Pine64 PineH64 model A
+        items:
+          - const: pine64,pine-h64-modelA
+          - const: allwinner,sun50i-h6
+
       - description: Pine64 PineH64 model B
         items:
           - const: pine64,pine-h64-modelB
diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
index d2418021768b..6bda5d9961c8 100644
--- a/arch/arm64/boot/dts/allwinner/Makefile
+++ b/arch/arm64/boot/dts/allwinner/Makefile
@@ -26,4 +26,5 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-3.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-lite2.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-one-plus.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64-modelA.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-tanix-tx6.dtb
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA.dts
new file mode 100644
index 000000000000..8c6b8978db1a
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA.dts
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: (GPL-2.0+ or MIT)
+/*
+ * Copyright (C) 2019 Corentin LABBE <clabbe@baylibre.com>
+ */
+
+#include "sun50i-h6-pine-h64.dts"
+
+/ {
+	model = "Pine H64 model A";
+	compatible = "pine64,pine-h64-modelA", "allwinner,sun50i-h6";
+
+	reg_gmac_3v3: gmac-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc-gmac-3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <100000>;
+		gpio = <&pio 2 16 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+};
+
+&hdmi_connector {
+	ddc-en-gpios = <&pio 7 2 GPIO_ACTIVE_HIGH>; /* PH2 */
+};
+
+&emac {
+	phy-supply = <&reg_gmac_3v3>;
+};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
