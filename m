Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A49C6F603C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 17:21:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=apo3PPv080+HzT7QqeaKTEzC+WiOclMp/IJkg0t67rM=; b=VkbtcEPZ1P8ehwhOUJ9nxdDds9
	JNNDc27cd2CLQQHRNVBliMvfhkTeEllzstqi2Hm91OtMdyzPFP7Zsj3S4+YROmi/YAVf3ulQ20qYb
	d2RgrA8lyukLEMfuVwbvh571wn+4T+S7/6wga6IcNzPvIcwJC0TuPxoHh086Anftru9JqWZVsCK4r
	Egdj1BOw9l/eiCYy16KJAmDhYqkmXpz0rY/dEs2+lZYRI5a3tRvPR1FQr6sFBIbA9pJsgy0enpHm3
	nt6h80nqxDFxkH1voYqLOjNMoTNudbLjQIpK2o2P+AEnNHhFEizGqGS4MaTIkzkfK8gdX7j+8MdrE
	1OA+//Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTTUG-0004sN-NF; Sat, 09 Nov 2019 16:21:20 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTTTk-0004T4-LS
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 16:20:50 +0000
Received: by mail-wm1-x341.google.com with SMTP id b17so922192wmj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 09 Nov 2019 08:20:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rOI6QUOBK9QSogmnbQtU7q55r9yQbW3Ua9QOoR9QkrY=;
 b=Wwy+QwH+P9UqoP8oujilPKtig1715dkzgWKvceZrPvhHTJlIXIZccGusWFTVJ03w0K
 qpCLCDsPwYahI6hQnmMk0PmpnS4cSuliDSh0zimgWFA9MYqqgOJRbSNoFpyVBu8JbXgA
 2pUgUVP0tV2C3Il/VGI4Fw631Rp5dYEJqWy7eDdEZhKPt0sZcygq3ZUlxd5UqU6PSW+W
 Gnu95MAF3BmQ2IFG7eQy5OSrRpQAY/8A3Dzskm308+G4XB3al5xNPmHo/sND2rnzEmWY
 0Qz+OaBc0octysH9Hq+Z5V4Q4spiNyk63WGC7W8zfrIrDcj12WcVLN7tH6gVB8RlXl+Q
 TA+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rOI6QUOBK9QSogmnbQtU7q55r9yQbW3Ua9QOoR9QkrY=;
 b=sosSaiokHRPA0lcMCcZEY68JhIn4p26LLVDIjL4kF11XkjgobwVXkihGtBh1BpEdcx
 AYC041e6+RrAbQZtU1Hg5G2H5RhIuJ64oUBL8b5T3uvjAHlfpfJdgMVFFuGTt23UCX+m
 oB1NkAlBZln4mW6TSmHVhpD4v6ZWdbXexiSQgqsC4SRsq93A4852FLGaIAZeIb40HNeU
 RTjvBhymQY1kDHxyBz9Ot8yzg05qvDbIDo80RkUQX76x6gStUIV+kvQiZ9Hic4VzX021
 rWOkwLn8ZvLCfEQwJ6DVh0N9B2scAPkYHnTD/vDxVvzoEoRh+iTJ57DWdPoR4P6Egt2s
 eSiQ==
X-Gm-Message-State: APjAAAUPs1zhmlKr8mDKomyzpfwl0ZC2TKpHLDZAfrr5ajsP17JWPWVQ
 VF1yFWRbgOgKwP81u0FAZKjCwA==
X-Google-Smtp-Source: APXvYqw4Bxj4tYYWUbk4jo5BvOUd32pF74MDX477Ax1+OvNU4Gn2ClWcfzN9u9Pt+5aq5JWKGp3OpQ==
X-Received: by 2002:a7b:c747:: with SMTP id w7mr14087795wmk.62.1573316447064; 
 Sat, 09 Nov 2019 08:20:47 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id v8sm14534975wra.79.2019.11.09.08.20.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 09 Nov 2019 08:20:46 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: mark.rutland@arm.com, mripard@kernel.org, robh+dt@kernel.org,
 wens@csie.org, jernej.skrabec@siol.net
Subject: [PATCH v4 2/2] ARM64: dts: allwinner: add pineh64 model B
Date: Sat,  9 Nov 2019 16:20:33 +0000
Message-Id: <1573316433-40669-3-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573316433-40669-1-git-send-email-clabbe@baylibre.com>
References: <1573316433-40669-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_082048_698664_7AB49DD5 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

This patch adds the model B of the PineH64.
The model B is smaller than the pine64 model A and has no PCIE slot.

The only devicetree difference with the pineH64 model A, is the PHY
regulator and the HDMI connector node.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../devicetree/bindings/arm/sunxi.yaml        |  5 +++++
 arch/arm64/boot/dts/allwinner/Makefile        |  1 +
 .../allwinner/sun50i-h6-pine-h64-modelB.dts   | 21 +++++++++++++++++++
 3 files changed, 27 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelB.dts

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index b8ec616c2538..227217bf28df 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -604,6 +604,11 @@ properties:
           - const: pine64,pine-h64-modelA
           - const: allwinner,sun50i-h6
 
+      - description: Pine64 PineH64 model B
+        items:
+          - const: pine64,pine-h64-modelB
+          - const: allwinner,sun50i-h6
+
       - description: Pine64 LTS
         items:
           - const: pine64,pine64-lts
diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
index d2418021768b..bda89b9ccb4a 100644
--- a/arch/arm64/boot/dts/allwinner/Makefile
+++ b/arch/arm64/boot/dts/allwinner/Makefile
@@ -26,4 +26,5 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-3.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-lite2.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-one-plus.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64-modelB.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-tanix-tx6.dtb
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelB.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelB.dts
new file mode 100644
index 000000000000..063a85223faa
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelB.dts
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: (GPL-2.0+ or MIT)
+/*
+ * Copyright (C) 2019 Corentin LABBE <clabbe@baylibre.com>
+ */
+
+#include "sun50i-h6-pine-h64.dts"
+
+/ {
+	model = "Pine H64 model B";
+	compatible = "pine64,pine-h64-modelB", "allwinner,sun50i-h6";
+
+	/delete-node/ reg_gmac_3v3;
+};
+
+&hdmi_connector {
+	/delete-property/ ddc-en-gpios;
+};
+
+&emac {
+	phy-supply = <&reg_aldo2>;
+};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
