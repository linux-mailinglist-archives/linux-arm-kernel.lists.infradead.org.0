Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 096127DD11
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 15:58:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cHPn/USxpDkAPH3U5zOoWqQt4Vo6HOssjGgIFExLxyI=; b=Oy5l6yZHwzyv2L
	w0kBZ3vdkFofYv0DlhIbMA5yyJzbMLXXSQzV9TwB3PdloaL6FDeHeosQvgjYIpBeM5duRR5mfVJhD
	P0vwJEC8hH8AB5HFVN1FEwG+sMgGi+DcjWZ0OvOEFcW7qNI3+C5Z3VZlGFN/i3m0+fpUocoXdJQLn
	Uhzs3ZFeda7Dh2+zJ8tYfabz4VyS7MvOF0CB/FkKdV7ugy3kd6w8MU8UmbAFc4MhhEew9JU1TZAWN
	Q3bFV/e/1Gey/juL4kgvsUXVi66vmwHcc7Q3VMy60+7bDe4fwi5UafD/P99lbQagBLDsJ9as/Xg9s
	NvaXbaUjdC46qojIV2Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htBbV-00032y-EH; Thu, 01 Aug 2019 13:58:49 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htBZd-000125-VS
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 13:56:59 +0000
Received: by mail-wm1-x32d.google.com with SMTP id p74so64737850wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 06:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KNQ5CzwHqtz8MxgZ4m80rpvWQ1Kz5Bh7KhQot/XK4oE=;
 b=K1oSscOAfn+eRgfQAEHDAeL/T+m+jbZlSnlTicTve9JHVOxG5UUAkmhLJg0kFwnEaB
 VJgZxFvEZjB6dCh5Y4+/hNIUKbm4i86TaxQwy04CYAfqWDJamfkNlzKSpkqN1LZVnYCC
 xRw6W/sftfI+yR+CC8i9pPnEMMsj6qmiHoiPrvv38AZac6cvUypzasREe1M4JpunjQqn
 UvD4BeoQKlk6jo3uybh7TzeqR5Yh4RfMnQZsvc9odKdiA65LeAn0Gm4qMGy+jgAol7wj
 OuGySje8D72fw9kL5xLck3wYhIxQTQR0f3Z37KzOFE3cuM6k01AflIZKC30QhfLg7V4D
 l+2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KNQ5CzwHqtz8MxgZ4m80rpvWQ1Kz5Bh7KhQot/XK4oE=;
 b=H/IvtaU/UKpU8me/YaGENse99A3VgYpj+h5a3X9Ffe/jMzOv6hrTFkE62fkgYj2NTd
 y6tngBYY1J9E2trgq7JhuyAPtHMRopPDU96GMa8jZB14WG5tRVO5KyxZk/49D7egw/S9
 aIW4n5BNtZbUtxP9KlIhGKxXNeJP34hx6izYeii6ffAVLykLlTzsAKaMiwF/A0qb+e5O
 HXgOtuOAAqwu7xZhfeEQFAoJLEQdSjd8iY9SEAF0cC800SKwRwafjW7dBNiTeo+sGIFH
 s06sD9K98O4v5SG9SRRJgYpWmLEVAUxJftJ5HaaYEgPvMlwwI+d4H9Zl/WGWPUJXAjWb
 Evkw==
X-Gm-Message-State: APjAAAUjNx6WT7C70Eu4tStIkKLrmNccZJ9ADGUusJIt0ujFSBh/IDrj
 tCDCFya3+fc7baGg6Sqc6/dXUg==
X-Google-Smtp-Source: APXvYqyMiZTJ+Lf2RI7o4c0VYPdQYQnTN9th9RI/J64TenyGDwAZlYOPKzsG2fwe5oL9NNiKYJzYXQ==
X-Received: by 2002:a1c:7606:: with SMTP id r6mr1961223wmc.118.1564667812185; 
 Thu, 01 Aug 2019 06:56:52 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id u6sm69659952wml.9.2019.08.01.06.56.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 06:56:51 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [RFC 6/9] dt-bindings: phy: meson-g12a-usb2-phy: convert to yaml
Date: Thu,  1 Aug 2019 15:56:41 +0200
Message-Id: <20190801135644.12843-7-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190801135644.12843-1-narmstrong@baylibre.com>
References: <20190801135644.12843-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_065654_015963_77C55970 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32d listed in]
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
Cc: linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
 kishon@ti.com, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../bindings/phy/meson-g12a-usb2-phy.txt      | 22 ------
 .../bindings/phy/meson-g12a-usb2-phy.yaml     | 67 +++++++++++++++++++
 2 files changed, 67 insertions(+), 22 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.txt b/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.txt
deleted file mode 100644
index a6ebc3dea159..000000000000
--- a/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.txt
+++ /dev/null
@@ -1,22 +0,0 @@
-* Amlogic G12A USB2 PHY binding
-
-Required properties:
-- compatible:	Should be "amlogic,meson-g12a-usb2-phy"
-- reg:		The base address and length of the registers
-- #phys-cells:	must be 0 (see phy-bindings.txt in this directory)
-- clocks:	a phandle to the clock of this PHY
-- clock-names:	must be "xtal"
-- resets:	a phandle to the reset line of this PHY
-- reset-names:	must be "phy"
-- phy-supply:	see phy-bindings.txt in this directory
-
-Example:
-	usb2_phy0: phy@36000 {
-		compatible = "amlogic,g12a-usb2-phy";
-		reg = <0x0 0x36000 0x0 0x2000>;
-		clocks = <&xtal>;
-		clock-names = "xtal";
-		resets = <&reset RESET_USB_PHY21>;
-		reset-names = "phy";
-		#phy-cells = <0>;
-	};
diff --git a/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.yaml
new file mode 100644
index 000000000000..4cd5ba97d469
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/meson-g12a-usb2-phy.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic G12A USB2 PHY
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+properties:
+  compatible:
+    enum:
+      - amlogic,meson-g12a-usb2-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+    description:
+      A phandle to the clock of this PHY
+
+  clock-names:
+    items:
+      - const: xtal
+
+  resets:
+    maxItems: 1
+    description:
+      A phandle to the reset line of this PHY
+
+  reset-names:
+    items:
+      - const: phy
+
+  "#phy-cells":
+    const: 0
+
+  phy-supply:
+     maxItems: 1
+     description:
+       Phandle to a regulator that provides power to the PHY. This
+       regulator will be managed during the PHY power on/off sequence.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - "#phy-cells"
+
+examples:
+  - |
+    phy@36000 {
+          compatible = "amlogic,meson-g12a-usb2-phy";
+          reg = <0x36000 0x2000>;
+          clocks = <&xtal>;
+          clock-names = "xtal";
+          resets = <&phy_reset>;
+          reset-names = "phy";
+          #phy-cells = <0>;
+    };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
