Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2214E8FD7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 20:18:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y31VlGevIweT8drk8APpVVEe18mYcDruR0ir4uiopDg=; b=ivkgDI/wlRWVATiwD2XGFL7cFN
	glCDuUZF+Nna5WUn7ar8lwlh1COGwVmJkzVEggopV5eM5iCvDbN4IbmklV4R96wwgUeaBD2qPkirY
	bArGP5YEITN2jKe8vbV5X5n6FkRbHwJjmdTBvEASj7O4qX5b184kSRJXOO4Xa8TqSTldjoKGUcXmr
	824uoQXxVd3JJ5dd+75aofM8+TcG2s8F93Mm/ZCYGNlY4M+aizWzAEbdoGOpUoUV1TqGuPknK7k2Z
	ueFlJ3sCNstAbaffiCjdqglmg7rocuTjY1K2YDvFL5A8nbKuO+5HnQ17/QoCYHtBojYruZNDHlK2z
	AjHhDa5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPX0q-0002Mb-FQ; Tue, 29 Oct 2019 19:18:40 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPX0A-0001uK-80
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 19:18:00 +0000
Received: by mail-wr1-x442.google.com with SMTP id a11so14895144wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 12:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AAulUeuPoNsDEk+GpMMDiBhDeKpmWFc9M5uJieeLJLI=;
 b=1ODh14rvo5xWA3XTcbFwAcohrgWPKKEIhrJ9qXpXyFKPUP/jEVNjCwAOeI7MlUkAvV
 EuD5nrIYCP/1CP0Wo+DFTzlFeGybPS8ZrsGxWrj0vL63zWrGlyFIl1edd+XvQO0YPlUD
 IY8MaOK/6FgscbFlbfFYxCsEe+UCnMvcIxIfgWGuFof6Pys2eCZN9rBtbHnn/vjcnsvt
 pYAnp4BII3w06r9PGjgjUIkcF+YdxrBtOa0PNyqei5tYIKpUOew1zVfzPqwE5LIHkEBC
 prkyxNSOYh3/yKufLSIEWKAjIkw+IYEeNJrI8N5tLH8sEPAEZ20hDlGu6uu53vs5rv+H
 G/LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AAulUeuPoNsDEk+GpMMDiBhDeKpmWFc9M5uJieeLJLI=;
 b=k1Uz2e/+J7XNU/cVyjBR1nz+dVSJPPPFHnhRVBnS8oJgFXX2+D4isSc9D8fSU52Gss
 V3STAk8MBLhbEVKSsTRcM+S3R9HKfJdiOcq1giw8aT7Wc2GkO2p6Zf5q58mzn2qQFK9O
 zqz8uOT2ZI+dxtDvo4Oba/e+AtRMY728hKrHLYlPJ/x8SXunm+C6N5KalS6n8j/Aq1/P
 DDbA/fcnQxe9/K/5w6agS2Wk8B4r3sBeBFpDhFXnp3CALLomdKGazTYAduHe0TdFH7Ob
 2t2XwKtEpqVFriAVZ/AkVsXbpQKW2sJmVX4irc9pzMscpn4GugLlgL6+xkEzG7CmwAWp
 KeyA==
X-Gm-Message-State: APjAAAU7+EZ+Q+ZogptEPSWvsi7ZiBTPrjnstwcAhTefboce5x8Rq8+m
 /LGGeZH1B87UYJdIHrItW9zlcQ==
X-Google-Smtp-Source: APXvYqxXvT4pPfgw5H95OQqjEpql/EvCng+c+MiGqCGq2JPf0FQULJFHd6h+PrmYIwknwF8Jqd2e+w==
X-Received: by 2002:adf:da4a:: with SMTP id r10mr22236971wrl.356.1572376676357; 
 Tue, 29 Oct 2019 12:17:56 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id v128sm5493043wmb.14.2019.10.29.12.17.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 29 Oct 2019 12:17:55 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: mark.rutland@arm.com, maxime.ripard@bootlin.com, robh+dt@kernel.org,
 wens@csie.org, jernej.skrabec@siol.net
Subject: [PATCH v2 2/2] ARM64: dts: allwinner: add pineh64 model A
Date: Tue, 29 Oct 2019 19:17:43 +0000
Message-Id: <1572376663-22023-3-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572376663-22023-1-git-send-email-clabbe@baylibre.com>
References: <1572376663-22023-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_121758_285745_01CD10C6 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
regulator.
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../devicetree/bindings/arm/sunxi.yaml        |  5 ++++
 arch/arm64/boot/dts/allwinner/Makefile        |  1 +
 .../allwinner/sun50i-h6-pine-h64-modelA.dts   | 26 +++++++++++++++++++
 3 files changed, 32 insertions(+)
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
index 000000000000..fef47687c85e
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA.dts
@@ -0,0 +1,26 @@
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
+&emac {
+	phy-supply = <&reg_gmac_3v3>;
+};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
