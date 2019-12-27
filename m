Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71EF212B1DF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 07:37:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dJfT4EyRAi9xr2h5rwWi+kZdpCZ2xQLyJPZP8mE5+XI=; b=iEF+aybbiLEdiz
	JaZaahOU3f41KqHJGqloVHS6aMjGPTDLQmReuaI2svT0a+YsHILJOqVRDUduUNTDilzsvXSqPVucE
	IvxmiYTIriX+OSm4YdeT0UpgP9yuT6/EDNgd0wInXHC9t3PhKfVaPqcBbrQisBpc+lCs+H4Kb8fFO
	xlr1aozfCqrHqyU5hONeibKR7EHQT1oOqn1va8vb9QRRWXKrOujTVxrohpqD0W0TY2sTT0OMmU5fU
	zb3E0UfNR2f65cBBT7NKwcVNXlMcFuZYelXLBvXlFIDT9F809HJ49NJJ9IsiPmy3VSir7YTvaTO30
	HAQvn+Z1mMkTJC/vq6dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikjG1-00087v-Ka; Fri, 27 Dec 2019 06:37:57 +0000
Received: from mail-sh.amlogic.com ([58.32.228.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikjFA-0007c3-Iq; Fri, 27 Dec 2019 06:37:07 +0000
Received: from droid10.amlogic.com (10.18.11.213) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server id 15.1.1591.10; Fri, 27 Dec 2019
 14:37:17 +0800
From: Hanjie Lin <hanjie.lin@amlogic.com>
To: Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong
 <narmstrong@baylibre.com>, Rob Herring <robh@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH v3 2/6] dt-bindings: usb: dwc3: Add the Amlogic A1 Family DWC3
 Glue Bindings
Date: Fri, 27 Dec 2019 14:36:42 +0800
Message-ID: <1577428606-69855-3-git-send-email-hanjie.lin@amlogic.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1577428606-69855-1-git-send-email-hanjie.lin@amlogic.com>
References: <1577428606-69855-1-git-send-email-hanjie.lin@amlogic.com>
MIME-Version: 1.0
X-Originating-IP: [10.18.11.213]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_223704_654860_F4B8F1FB 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-usb@vger.kernel.org, Yue Wang <yue.wang@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Liang Yang <liang.yang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jian Hu <jian.hu@amlogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Amlogic A1 SoC Family embeds 1 USB Controllers:
 - a DWC3 IP configured as Host for USB2 and USB3

A glue connects the controllers to the USB2 PHY of A1 SoC.

Signed-off-by: Hanjie Lin <hanjie.lin@amlogic.com>
Signed-off-by: Yue Wang <yue.wang@amlogic.com>
---
 .../bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml  | 57 +++++++++++++++++++---
 1 file changed, 51 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml b/Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml
index 4efb77b..6103cc2 100644
--- a/Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml
+++ b/Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml
@@ -9,6 +9,8 @@ title: Amlogic Meson G12A DWC3 USB SoC Controller Glue
 
 maintainers:
   - Neil Armstrong <narmstrong@baylibre.com>
+  - Hanjie Lin <hanjie.lin@amlogic.com>
+  - Yue Wang <yue.wang@amlogic.com>
 
 description: |
   The Amlogic G12A embeds a DWC3 USB IP Core configured for USB2 and USB3
@@ -22,10 +24,14 @@ description: |
   The DWC3 Glue controls the PHY routing and power, an interrupt line is
   connected to the Glue to serve as OTG ID change detection.
 
+  The Amlogic A1 embeds a DWC3 USB IP Core configured for USB2 in
+  host-only mode.
+
 properties:
   compatible:
     enum:
       - amlogic,meson-g12a-usb-ctrl
+      - amlogic,meson-a1-usb-ctrl
 
   ranges: true
 
@@ -37,6 +43,11 @@ properties:
 
   clocks:
     minItems: 1
+    maxItems: 4
+
+  clock-names:
+    minItems: 1
+    maxItems: 4
 
   resets:
     minItems: 1
@@ -47,17 +58,22 @@ properties:
   interrupts:
     maxItems: 1
 
+  phys:
+    minItems: 1
+    maxItems: 3
+
   phy-names:
     items:
       - const: usb2-phy0 # USB2 PHY0 if USBHOST_A port is used
       - const: usb2-phy1 # USB2 PHY1 if USBOTG_B port is used
       - const: usb3-phy0 # USB3 PHY if USB3_0 is used
 
-  phys:
-    minItems: 1
-    maxItems: 3
-
-  dr_mode: true
+  dr_mode:
+    description: usb mode for G12A
+    enum:
+      - host
+      - peripheral
+      - otg
 
   power-domains:
     maxItems: 1
@@ -80,9 +96,9 @@ required:
   - resets
   - reg
   - interrupts
-  - phy-names
   - phys
   - dr_mode
+  - phy-names
 
 examples:
   - |
@@ -124,4 +140,33 @@ examples:
               snps,quirk-frame-length-adjustment;
           };
     };
+  - |
+    a1_usb: usb@ffe09000 {
+          status = "okay";
+          compatible = "amlogic,meson-a1-usb-ctrl";
+          reg = <0 0xffe09000 0x0 0xa0>;
+          #address-cells = <1>;
+          #size-cells = <1>;
+          ranges;
 
+          clocks = <&clkc_periphs 36>,
+                   <&clkc_periphs 85>,
+                   <&clkc_periphs 2>,
+                   <&clkc_periphs 3>;
+          clock-names = "usb_ctrl", "usb_bus", "xtal_usb_phy",
+                        "xtal_usb_ctrl";
+
+          resets = <&reset 36>;
+
+          phys = <&usb2_phy1>;
+          phy-names = "usb2-phy1";
+
+          a1_dwc3: usb@ff400000 {
+                  compatible = "snps,dwc3";
+                  reg = <0xff400000 0x100000>;
+                  interrupts = <0 90 4>;
+                  dr_mode = "host";
+                  snps,dis_u2_susphy_quirk;
+                  snps,quirk-frame-length-adjustment = <0x20>;
+          };
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
