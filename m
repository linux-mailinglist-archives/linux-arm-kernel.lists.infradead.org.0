Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58AF6DDEB4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 15:43:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2X6rOjgZuv983rFPm8iW10eMdBusDFsZNgNoeVlk4w=; b=WyLXsKqTGM4ktG
	cLEZ6905BTkzjYI+qNOu9Z+dxQADNrKdJ8590lhiABtBUbIcbgoIG7n7rumkGxSvUymz6szLKhy4o
	oKiuMi8DmljKlTabEwYMDNHmjT4gihbT6C3oB1C4OZN45ezXfpf2oDnMmgRuwv2cjncnERQRYz3tf
	RlHRGavOltsxVm2N6nzwFK6cFQJUx8R0sxtI7FqQduwpdhMHO09NurvMpvLxYWvQRKJ8fSv107g20
	ja7hnGhzGzAq6i2a61DmPiQv6TNdKbNHBu2h3K1M5EvwsTBhBZkjrcHRV0XxX9COvEabf3py9ljwV
	hThSevxilmqEc0CXx56w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMBUD-0004cQ-Ee; Sun, 20 Oct 2019 13:43:09 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMBTh-0004PQ-RJ
 for linux-arm-kernel@lists.infradead.org; Sun, 20 Oct 2019 13:42:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1571578951; bh=h4J7KFQapQWjRwMMa+Q2cRD0P8kG4K/9cQRm/b5HHnQ=;
 h=From:To:Cc:Subject:Date:References:From;
 b=Sr+bIfZyaJ4sTS/2FZC+LKnzMqIF6Wg4O+iT121liaIdH9LvxF3eIU1rrGRVcvzWO
 BQM34AnljVaFATVoFPUD1o37TzYEOUVy7U7M9xf/F6UNRIeQ2/4PU018P0C/b94Vcp
 XaerfWkcwSrymJUXdKJ2KrXa63ErNsNzZKpFXaY8=
From: megous@megous.com
To: linux-sunxi@googlegroups.com, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Icenowy Zheng <icenowy@aosc.io>, Thomas Gleixner <tglx@linutronix.de>,
 Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 1/4] dt-bindings: Add bindings for USB3 phy on Allwinner H6
Date: Sun, 20 Oct 2019 15:42:26 +0200
Message-Id: <20191020134229.1216351-2-megous@megous.com>
In-Reply-To: <20191020134229.1216351-1-megous@megous.com>
References: <20191020134229.1216351-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_064238_053456_23CF2553 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

The new Allwinner H6 SoC contains a USB3 PHY that is wired to the
external USB3 pins of the SoC.

Add a device tree binding for the PHY.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 .../phy/allwinner,sun50i-h6-usb3-phy.yaml     | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun50i-h6-usb3-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun50i-h6-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun50i-h6-usb3-phy.yaml
new file mode 100644
index 000000000000..2fdc890748db
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun50i-h6-usb3-phy.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 Ondrej Jirman <megous@megous.com>
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/allwinner,sun50i-h6-usb3-phy.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Allwinner sun50i USB3 PHY
+
+maintainers:
+  - Ondrej Jirman <megous@megous.com>
+
+properties:
+  compatible:
+    enum:
+      - allwinner,sun50i-h6-usb3-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - resets
+  - "#phy-cells"
+
+examples:
+  - |
+    #include <dt-bindings/clock/sun50i-h6-ccu.h>
+    #include <dt-bindings/reset/sun50i-h6-ccu.h>
+    phy@5210000 {
+          compatible = "allwinner,sun50i-h6-usb3-phy";
+          reg = <0x5210000 0x10000>;
+          clocks = <&ccu CLK_USB_PHY1>;
+          resets = <&ccu RST_USB_PHY1>;
+          #phy-cells = <0>;
+    };
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
