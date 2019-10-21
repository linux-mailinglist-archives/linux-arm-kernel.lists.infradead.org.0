Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CD7DEDF3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 15:40:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9nSAyZMrRKoBarPLdAZbFpgOkI/g0/IHPncLzIB6ptw=; b=alVxEw35dFmKet
	fJLXlF21ahTNWhvlSDTW9DvOBhk9pElc9VZhPn/CLCvm6LJdt8EwDNSuPeGvM4ymSP7h1KTmjfPcI
	Ma5TEKHO2nRxCokctMB47EcUD/yHXZio9o9BWVo9cv1SHLflbIC0ILSL66BW6eA+keGDSbVP6qMDo
	4nUQTn3omF+doLyoWu+zcHzmNgQ0b4FJ/XFEE7LnojWt+69LNCpUjWNGe5WKJYrRKAeYrZ5sNowBd
	OpsJWwrX0hElWcPpsxUaV0xExB/hDI3DiWyBmmIe2w6IqxlPq/VskUBLf5rAfJBkJImuHTQkJ6r+U
	3xNIhVHyaAvIuIMiNTjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMXuy-0006uk-Gu; Mon, 21 Oct 2019 13:40:16 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMXub-0006s6-JN
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 13:39:55 +0000
Received: by mail-wm1-x341.google.com with SMTP id f22so12849710wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 06:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rxZzIwlDD5DO3Dig1AAmB3NX72gSPtCfOYTtxG2Ms5Q=;
 b=o3pc+fU/IFhuH3lLsX421aMMLNgviKUCS8A1bpdOmWwPY+qswyHRHsftp/JYKIgYCT
 FDKGAHGBuyqR6IE5DhsJIbh1tZwPUOfQC9iRtmBMXQINkFEeWondGaIU4S0d3uPPlvZ1
 RywTXQ0VjFlT5oqDG151fTDTrhpQqSr8vUdHplHloWnbCANc+Y0iKvua71c+LMkCJZq/
 a3gXTpfWTSZIYtv+XBfny+NVQIojTHjJbK9l/GUakkcOSw8FqYpwiQJuEV2bhPXsvCui
 RN4vRrsTpwB4XDDjLBDDLu3/nN/uCyuugzpAmsBVbeSzcTya/2YiF2eOS/d1hHTcNSXN
 cPYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rxZzIwlDD5DO3Dig1AAmB3NX72gSPtCfOYTtxG2Ms5Q=;
 b=oQ1cNLA0qXwCajsL7BMpvAelCpBCXdgphnHU69dxj1eNe+KmY1yxEM/wdKMOYtlunj
 pb44Fww3wVwcjqa5UJGhVUWFkGUoHyNeqJgLERURn50uAmb+/7CtuwEGrOO51zZyAGmj
 sFWLuf8ohiN2i2Yb9zsNxeXicrSppUw3hEk92feF/LFYdh2Ii+Gybzt+8AoNEwxmkMj9
 CGMkuucc1fyz0p2f27Z+GAq8pAfnaOd1dccUnW1jiWoHbinzniF7ocH9LyxqW0SChrHs
 YPMPn+T+GJ6KOXkAnT8SyF05RCy88mTUOael5QShBuiFd2Vd8SJx6qtNH8OqbyvynJex
 WduQ==
X-Gm-Message-State: APjAAAX0YRQ+Q/MvY3KLmC2q8fzRlv7OpUVCBF/JNYTMjM1MWwxSTv0A
 6xXlcM3CB8i4W0pc+tra3SKfPHuj2qgSrw==
X-Google-Smtp-Source: APXvYqzYcRG7qQc57VrQDTccwlNW2H5DWKsVDXNVe8OUa6L1J6a/dYF402AJ/L9jlUOo8hOKSLt6TA==
X-Received: by 2002:a1c:39c1:: with SMTP id g184mr1936913wma.75.1571665192059; 
 Mon, 21 Oct 2019 06:39:52 -0700 (PDT)
Received: from localhost.localdomain
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id 17sm4050552wmg.29.2019.10.21.06.39.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 06:39:51 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [PATCH] dt-bindings: soc: amlogic: canvas: convert to yaml
Date: Mon, 21 Oct 2019 15:39:50 +0200
Message-Id: <20191021133950.30490-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_063953_655421_ADCB4402 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mjourdan@baylibre.com, devicetree@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have the DT validation in place, let's convert the device tree
bindings for the Amlogic Canvas over to a YAML schemas.

Cc: Maxime Jourdan <mjourdan@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../bindings/soc/amlogic/amlogic,canvas.txt   | 33 -------------
 .../bindings/soc/amlogic/amlogic,canvas.yaml  | 49 +++++++++++++++++++
 2 files changed, 49 insertions(+), 33 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/soc/amlogic/amlogic,canvas.txt
 create mode 100644 Documentation/devicetree/bindings/soc/amlogic/amlogic,canvas.yaml

diff --git a/Documentation/devicetree/bindings/soc/amlogic/amlogic,canvas.txt b/Documentation/devicetree/bindings/soc/amlogic/amlogic,canvas.txt
deleted file mode 100644
index e876f3ce54f6..000000000000
--- a/Documentation/devicetree/bindings/soc/amlogic/amlogic,canvas.txt
+++ /dev/null
@@ -1,33 +0,0 @@
-Amlogic Canvas
-================================
-
-A canvas is a collection of metadata that describes a pixel buffer.
-Those metadata include: width, height, phyaddr, wrapping and block mode.
-Starting with GXBB the endianness can also be described.
-
-Many IPs within Amlogic SoCs rely on canvas indexes to read/write pixel data
-rather than use the phy addresses directly. For instance, this is the case for
-the video decoders and the display.
-
-Amlogic SoCs have 256 canvas.
-
-Device Tree Bindings:
----------------------
-
-Video Lookup Table
---------------------------
-
-Required properties:
-- compatible: has to be one of:
-		- "amlogic,meson8-canvas", "amlogic,canvas" on Meson8
-		- "amlogic,meson8b-canvas", "amlogic,canvas" on Meson8b
-		- "amlogic,meson8m2-canvas", "amlogic,canvas" on Meson8m2
-		- "amlogic,canvas" on GXBB and newer
-- reg: Base physical address and size of the canvas registers.
-
-Example:
-
-canvas: video-lut@48 {
-	compatible = "amlogic,canvas";
-	reg = <0x0 0x48 0x0 0x14>;
-};
diff --git a/Documentation/devicetree/bindings/soc/amlogic/amlogic,canvas.yaml b/Documentation/devicetree/bindings/soc/amlogic/amlogic,canvas.yaml
new file mode 100644
index 000000000000..4322f876753d
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/amlogic/amlogic,canvas.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/soc/amlogic/amlogic,canvas.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Canvas
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+  - Maxime Jourdan <mjourdan@baylibre.com>
+
+description: |
+  A canvas is a collection of metadata that describes a pixel buffer.
+  Those metadata include: width, height, phyaddr, wrapping and block mode.
+  Starting with GXBB the endianness can also be described.
+
+  Many IPs within Amlogic SoCs rely on canvas indexes to read/write pixel data
+  rather than use the phy addresses directly. For instance, this is the case for
+  the video decoders and the display.
+
+  Amlogic SoCs have 256 canvas.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+        - enum:
+          - amlogic,meson8-canvas
+          - amlogic,meson8b-canvas
+          - amlogic,meson8m2-canvas
+        - const: amlogic,canvas
+      - const: amlogic,canvas # GXBB and newer SoCs
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    canvas: video-lut@48 {
+        compatible = "amlogic,canvas";
+        reg = <0x48 0x14>;
+    };
+
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
