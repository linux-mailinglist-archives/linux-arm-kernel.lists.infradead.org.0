Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2435E2F9B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 12:56:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MmhmmzJRVOW8/Ab4zyWb/AMpznLqN+L0/h95XB11Y7c=; b=oNOKIRdFRWnAd0
	WudCmVDexViDbI72UE7OJg8l+I5zgnDfqnVsFMvda+Kpdekq+Kud2cuGdxaxAf7Fw48Q9poKWQzIP
	YMBhsA7q31UyewZgDVEA3XtYyRfAFXl4179769aqqFe5Cq0TLn8Sl3Thd0zxFcEpaXr2LjuzlUSKc
	kpD4IdayHjRFVYRr9pQjGh+8SqoiushlhdSb8NgPLbJDAbM4CvD9KRLZerCIo7G71mSee1il+R1In
	HhZFfWjxG800Hw9B0jHb6uOQB01jrt/KePrtZoBcxpuBUQFWVKcR9g8tFNFAQEvPUSZnnSyeBEeuo
	xK80CK6FnRuwAuRrM1sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNamy-0003nH-1u; Thu, 24 Oct 2019 10:56:20 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNals-0002HL-5F
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 10:55:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1571914507; bh=iUH9bPvFqxvw8CBPdxNSViiL6MI9YLXFWw42NUKiO4A=;
 h=From:To:Cc:Subject:Date:References:From;
 b=tUSjhbiPUN6vr27VM5w9/52gNQhoJeZEUejypfDIuIDe04Rgyr+n6o0rMdWrxbW99
 gplURlDzOb4S3gh6wOfSFpCeKancBBK1a/qYtL+Lek82pY1xkdUdiAen2Wpd0Olmbw
 AkKgE0rYTMqzY+p4egKakhVY2r/NX3jetO3NP7as=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Icenowy Zheng <icenowy@aosc.io>, Thomas Gleixner <tglx@linutronix.de>,
 Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v2 1/4] dt-bindings: Add bindings for USB3 phy on Allwinner H6
Date: Thu, 24 Oct 2019 12:54:57 +0200
Message-Id: <20191024105500.2252707-2-megous@megous.com>
In-Reply-To: <20191024105500.2252707-1-megous@megous.com>
References: <20191024105500.2252707-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_035512_370153_99B7E3BC 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The new Allwinner H6 SoC contains a USB3 PHY that is wired to the
external USB3 pins of the SoC.

Add a device tree binding for the PHY.

Signed-off-by: Ondrej Jirman <megous@megous.com>
Acked-by: Maxime Ripard <mripard@kernel.org>
---
 .../phy/allwinner,sun50i-h6-usb3-phy.yaml     | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun50i-h6-usb3-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun50i-h6-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun50i-h6-usb3-phy.yaml
new file mode 100644
index 000000000000..e5922b427342
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
+title: Allwinner H6 USB3 PHY
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
