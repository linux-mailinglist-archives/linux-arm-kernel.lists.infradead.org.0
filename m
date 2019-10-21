Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B73C4DEEA3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 16:01:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sKGfplJ/SHBgNNBsQEL+DIZgAvXtUvSRfaQ8gohDZe4=; b=S5xRSa0XYm/x+t
	HDy4rMDbPqu11T7hpt5V5R6IT1CwTITF6duvB5dMXiN3oUlVKlQ0x4h9h9CaWEz3rzDq4xARW0ayd
	q1er7QWBueFJ5ur33gHOtrEQ9B+sC9n9x5h8s5M2uS7iihCR79MsRwmdB9WPF308CmyLGMu6OUFmY
	TY5ZyAO3k/mlDKiY617aDDd8H4hS2ZuhlqiB5l+57SRcVd4g8OteRft4NYaqvH7kjTWkhZ5afKerM
	RkikQ5sL7CWkEbmIZ0qIZR+hypRLs191eMKEUhHraWJo7l6MDj2677Ab7oT8OvlTG9v5ENlw/N30f
	H8b3qdNjD6vnq9/ZjT2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYFA-0002Vf-HQ; Mon, 21 Oct 2019 14:01:08 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYF1-0002UP-5B
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 14:01:00 +0000
Received: by mail-wm1-x343.google.com with SMTP id 6so1445889wmf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 07:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b4PdhEAPlrJQgSDJoJmuRL85NouJ7ey9Hv6QLfk9XSI=;
 b=y3Y9t5g8UXkkEk/00dSN4HFMLQNR1yycajblNd55Mh8D4IdBHbxNogOQw5CGlkWQgH
 YwcR14PT4H4XOyFvcpLXb2jem2PSSobcm/TCiRmHYUETMTAjbhcKpRgg+RXAR31DUH8w
 LEKk6fiQb9Vv3bXL39T06H2HOUcudGeaO3dCD4xEm5VdtPaYDtn3BXmOlWi/tbCDhzPk
 a6/lGZIUFpgwK4nchsikZ9XwgrQxydZFvzJlXZ9Au4AzEBHHCaXo6ZywnfrY0FTP9TvE
 OID99UCsNywxSBSGRKmhM5WLpFU7uedHqlisx7W+DKJoiBOHlHY/fiVOd8ChrhyHNE/1
 jw9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b4PdhEAPlrJQgSDJoJmuRL85NouJ7ey9Hv6QLfk9XSI=;
 b=H0Rx6woA9oAgwSDejJtQrF5nfUoA9NpxTtOWj0CM42PNsfzTrCloUGRDCkoRqG1NFf
 dvyCSNZfV+dD9QQ9avPAoEdyq7TQuzjVwsZza88RLNnMnI+AkZ7LMuE8OV8lhNBJhd+o
 ychzKDs/iuk+61pgokQd1YnUWCKyzktGj3JA82JIxK9YRyRu9SMaYLSjOMoL9tMaR9d8
 1LZrilkX3pP0Z5OpSGpKfmBfPTqB1knplNP2Tm/tY63l64LP+bIGpFus3DnddYHfiQaQ
 wbCIRr2Z4TuR5huaA9IGO2YxXxrlgOKLN8C9kzJfB2G3nEOaED8zL3piHA7UNmlW1eHs
 Q8jg==
X-Gm-Message-State: APjAAAUU7gDnOu3LwfTyBox+38PsYasCfKMYLON8hF1gyZZznqZK2d2q
 vujsiGYriHJHMBEtkeK67sdF/A==
X-Google-Smtp-Source: APXvYqzGAP+ASrRHNvDQUcOJw1l35OBgxCv/k+On7Hb80R6kwIsPcNWJRm1NTKq/GbYZO3CC6+L4kw==
X-Received: by 2002:a1c:68c5:: with SMTP id d188mr3522182wmc.139.1571666455508; 
 Mon, 21 Oct 2019 07:00:55 -0700 (PDT)
Received: from localhost.localdomain
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id f83sm14859235wmf.43.2019.10.21.07.00.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 07:00:55 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [PATCH] dt-bindings: i2c: meson: convert to yaml
Date: Mon, 21 Oct 2019 16:00:53 +0200
Message-Id: <20191021140053.9525-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_070059_194489_00F364A1 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
 linux-kernel@vger.kernel.org, Beniamino Galvani <b.galvani@gmail.com>,
 linux-i2c@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have the DT validation in place, let's convert the device tree
bindings for the Amlogic I2C Controller over to YAML schemas.

Cc: Beniamino Galvani <b.galvani@gmail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../bindings/i2c/amlogic,meson6-i2c.yaml      | 53 +++++++++++++++++++
 .../devicetree/bindings/i2c/i2c-meson.txt     | 30 -----------
 2 files changed, 53 insertions(+), 30 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/i2c/amlogic,meson6-i2c.yaml
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-meson.txt

diff --git a/Documentation/devicetree/bindings/i2c/amlogic,meson6-i2c.yaml b/Documentation/devicetree/bindings/i2c/amlogic,meson6-i2c.yaml
new file mode 100644
index 000000000000..49cad273c8e5
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/amlogic,meson6-i2c.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/i2c/amlogic,meson6-i2c.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson I2C Controller
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+  - Beniamino Galvani <b.galvani@gmail.com>
+
+allOf:
+  - $ref: /schemas/i2c/i2c-controller.yaml#
+
+properties:
+  compatible:
+    enum:
+      - amlogic,meson6-i2c # Meson6, Meson8 and compatible SoCs
+      - amlogic,meson-gxbb-i2c # GXBB and compatible SoCs
+      - amlogic,meson-axg-i2c # AXG and compatible SoCs
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+examples:
+  - |
+    i2c@c8100500 {
+        compatible = "amlogic,meson6-i2c";
+        reg = <0xc8100500 0x20>;
+        interrupts = <92>;
+        clocks = <&clk81>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        eeprom@52 {
+            compatible = "atmel,24c32";
+            reg = <0x52>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/i2c/i2c-meson.txt b/Documentation/devicetree/bindings/i2c/i2c-meson.txt
deleted file mode 100644
index 13d410de077c..000000000000
--- a/Documentation/devicetree/bindings/i2c/i2c-meson.txt
+++ /dev/null
@@ -1,30 +0,0 @@
-Amlogic Meson I2C controller
-
-Required properties:
- - compatible: must be:
-	"amlogic,meson6-i2c" for Meson8 and compatible SoCs
-	"amlogic,meson-gxbb-i2c" for GXBB and compatible SoCs
-	"amlogic,meson-axg-i2c"for AXG and compatible SoCs
-
- - reg: physical address and length of the device registers
- - interrupts: a single interrupt specifier
- - clocks: clock for the device
- - #address-cells: should be <1>
- - #size-cells: should be <0>
-
-For details regarding the following core I2C bindings see also i2c.txt.
-
-Optional properties:
-- clock-frequency: the desired I2C bus clock frequency in Hz; in
-  absence of this property the default value is used (100 kHz).
-
-Examples:
-
-	i2c@c8100500 {
-		compatible = "amlogic,meson6-i2c";
-		reg = <0xc8100500 0x20>;
-		interrupts = <0 92 1>;
-		clocks = <&clk81>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-	};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
