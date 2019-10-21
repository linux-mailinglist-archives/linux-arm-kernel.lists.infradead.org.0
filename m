Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C58DEBAF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 14:11:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5TEAdHJH1IUacHm+lo2rkj+fT45F6UPRxMPd2MwRTtQ=; b=HOkDDOoTEcdecC
	rH2T8a5loPty8f1Ieq3czrM5MlIoQaE575a1HyjRL7LnWpnrVCTVZ+mI8hfxJzMeCVCej6Bmpzyab
	0M/Av61eNjXePAZsd0vpmEqQgF2RsFLp4+J0eDVd35lXpGx49DQvIqBDjY47h8mCSi4eX/wUcBSn+
	T88u8ZktEVb/j0OdKm6UGySQULvwJ9OrFbxwxRiVi8PM3EtiLqiUJezSJywEdqomvIBPwB8O1NbMG
	4OJH2ly/1oXUqZvkJlOdVXVbqkqq+30ONNujKHuGIbcr2mWK/TwOsTnP18cqguGb0MfuQn7cJYbnW
	Jm9QOwk5ctQZcluZL6kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMWXN-0003D1-Ua; Mon, 21 Oct 2019 12:11:49 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWXC-0003C2-Ir
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 12:11:40 +0000
Received: by mail-wm1-x344.google.com with SMTP id r19so13073951wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 05:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1nWQn9JHkIyWFzO1YTIzRNr08Bu0P25VLya5djrPvZU=;
 b=O0RqyHH9x9W9yuRreDzZfFvFCw2aKlpuUJgDs6q19bDn3KmMxUrSbA9wuy+igBdgoV
 AL4qmZzd5gwAvvAVfKCLwxaTDQLMIuYJvNr/J2a4J1UBvJX1HTwibetWsV7OTv8XIGN5
 tN8U06/qtKqaGeOT3y67gZpufPwEuyYXrq0q3LCD1ipoQRL1gW/QXPjNVNRA8KqgZel5
 nzRVSGGB/aL2tawRPdzwft1pbqsP6ZoRVJsr8fMUqxHsTwoSZBJc6VUkllpWh3XFoVqi
 IdYff/AvvJJrvYMMnLWsHpi3nUo2dzpv0Fx2a4xuxmbItbZZBMX593IO2makCLOpruqZ
 +xmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1nWQn9JHkIyWFzO1YTIzRNr08Bu0P25VLya5djrPvZU=;
 b=Aa840ptUTLGd2uoJ766AyPPkUG4waO/0EZMJrnpmv+vVVMFEgYRBUjLhBRMa1mRDuk
 /bmTBW0XvX6o2F/1PLMm94AYTlkIRWeaFNUAntLLprn+InJKUQJn2R3iyHqAzK7YOSpr
 /zuNsoAWb4PQ6u0ABx3j3wYOidda5bk7ILQIKRCYsJP72VzdwUyBSZO/2tRfmRdfvGX/
 bXQMAtLZUrqPP+JDQWgUQn0nXrcUUZmoSmVYL9v+5HLRLenBcZgRno6EoxSf2bELWzAr
 oUYi2rv0w+FPqVPhhQOxx7M/bou7QVGVUEjLY2NX1aD5hswUuJrBCTc6y6jTWsL2iKV1
 2Y0A==
X-Gm-Message-State: APjAAAVj3PuUiFNTs65xXrIr7LOAXLNcE7U5kzAqwVNOXtLDUMbxa33r
 wHCXbFDd1A5n+r3MPDB2GHCo4g==
X-Google-Smtp-Source: APXvYqzsTud6HllbIVok9Dz0padLasdwgqohMnlleYLHymDpbxyY63+6giaeoHjz0duHKZWc1tYEvA==
X-Received: by 2002:a7b:c05a:: with SMTP id u26mr18887164wmc.128.1571659894688; 
 Mon, 21 Oct 2019 05:11:34 -0700 (PDT)
Received: from localhost.localdomain
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id 37sm21660508wrc.96.2019.10.21.05.11.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 05:11:34 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [PATCH] dt-bindings: media: meson-ao-cec: convert to yaml
Date: Mon, 21 Oct 2019 14:11:31 +0200
Message-Id: <20191021121131.25017-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_051138_651625_FECC6432 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have the DT validation in place, let's convert the device tree
bindings for the Amlogic AO-CEC controller over to a YAML schemas.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../media/amlogic,meson-gx-ao-cec.yaml        | 91 +++++++++++++++++++
 .../bindings/media/meson-ao-cec.txt           | 37 --------
 2 files changed, 91 insertions(+), 37 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/amlogic,meson-gx-ao-cec.yaml
 delete mode 100644 Documentation/devicetree/bindings/media/meson-ao-cec.txt

diff --git a/Documentation/devicetree/bindings/media/amlogic,meson-gx-ao-cec.yaml b/Documentation/devicetree/bindings/media/amlogic,meson-gx-ao-cec.yaml
new file mode 100644
index 000000000000..41197578f19a
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/amlogic,meson-gx-ao-cec.yaml
@@ -0,0 +1,91 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/media/amlogic,meson-gx-ao-cec.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson AO-CEC Controller
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+description: |
+  The Amlogic Meson AO-CEC module is present is Amlogic SoCs and its purpose is
+  to handle communication between HDMI connected devices over the CEC bus.
+
+properties:
+  compatible:
+    enum:
+      - amlogic,meson-gx-ao-cec # GXBB, GXL, GXM, G12A and SM1 AO_CEC_A module
+      - amlogic,meson-g12a-ao-cec # G12A AO_CEC_B module
+      - amlogic,meson-sm1-ao-cec # SM1 AO_CEC_B module
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  hdmi-phandle:
+    description: phandle to the HDMI controller
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/phandle
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - amlogic,meson-gx-ao-cec
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: AO-CEC clock
+
+        clock-names:
+          maxItems: 1
+          items:
+            - const: core
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - amlogic,meson-g12a-ao-cec
+              - amlogic,meson-sm1-ao-cec
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: AO-CEC clock generator source
+
+        clock-names:
+          maxItems: 1
+          items:
+            - const: oscin
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - hdmi-phandle
+  - clocks
+  - clock-names
+
+examples:
+  - |
+    cec_AO: cec@100 {
+        compatible = "amlogic,meson-gx-ao-cec";
+        reg = <0x0 0x00100 0x0 0x14>;
+        interrupts = <199>;
+        clocks = <&clkc_cec>;
+        clock-names = "core";
+        hdmi-phandle = <&hdmi_tx>;
+    };
+
diff --git a/Documentation/devicetree/bindings/media/meson-ao-cec.txt b/Documentation/devicetree/bindings/media/meson-ao-cec.txt
deleted file mode 100644
index ad92ee41c0dd..000000000000
--- a/Documentation/devicetree/bindings/media/meson-ao-cec.txt
+++ /dev/null
@@ -1,37 +0,0 @@
-* Amlogic Meson AO-CEC driver
-
-The Amlogic Meson AO-CEC module is present is Amlogic SoCs and its purpose is
-to handle communication between HDMI connected devices over the CEC bus.
-
-Required properties:
-  - compatible : value should be following depending on the SoC :
-	For GXBB, GXL, GXM, G12A and SM1 (AO_CEC_A module) :
-	"amlogic,meson-gx-ao-cec"
-	For G12A (AO_CEC_B module) :
-	"amlogic,meson-g12a-ao-cec"
-	For SM1 (AO_CEC_B module) :
-	"amlogic,meson-sm1-ao-cec"
-
-  - reg : Physical base address of the IP registers and length of memory
-	  mapped region.
-
-  - interrupts : AO-CEC interrupt number to the CPU.
-  - clocks : from common clock binding: handle to AO-CEC clock.
-  - clock-names : from common clock binding, must contain :
-		For GXBB, GXL, GXM, G12A and SM1 (AO_CEC_A module) :
-		- "core"
-		For G12A, SM1 (AO_CEC_B module) :
-		- "oscin"
-		corresponding to entry in the clocks property.
-  - hdmi-phandle: phandle to the HDMI controller
-
-Example:
-
-cec_AO: cec@100 {
-	compatible = "amlogic,meson-gx-ao-cec";
-	reg = <0x0 0x00100 0x0 0x14>;
-	interrupts = <GIC_SPI 199 IRQ_TYPE_EDGE_RISING>;
-	clocks = <&clkc_AO CLKID_AO_CEC_32K>;
-	clock-names = "core";
-	hdmi-phandle = <&hdmi_tx>;
-};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
