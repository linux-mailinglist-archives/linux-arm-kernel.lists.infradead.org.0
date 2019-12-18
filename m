Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FC5123D50
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 03:44:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V3sexmHWx1ouee7cODYGHUsV6LLC03mrZvHFPT3u5Ws=; b=Fe6bYBIsmOM1hv
	gow0AzT0RfW+YwRBBZ9stOUFT+yiztQfzpEL4Iy7BReBdDoFDWpoD9kRuim0mE6ZRWQYIoKTSNjjs
	2JbPz4Z4qwyE53Ig+x5sapv3amm7soUrNdbgt8p/1qVmOVk7VLQ3XRcTAVYcm/sOQ3oMAxSiyxvIb
	KW6s+54r6exYnzC83Y7FbSqFVsgICO+2LITFphw9kZxIKj+ASet81HZnh3UfqpJflHqT71Y4tBNlh
	YRyhX60bE+GA4Vl4uHQiDSVnRujTQ1jhte6kNLsgIcTcGsZZVvyz0DU0OxoJ5Aqje+DHY8sLCEwLK
	cBumndyZnEhuBviW+mEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihPJo-0007kT-7M; Wed, 18 Dec 2019 02:44:08 +0000
Received: from mail-sh.amlogic.com ([58.32.228.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihPIi-0006uW-UQ; Wed, 18 Dec 2019 02:43:02 +0000
Received: from droid10.amlogic.com (10.18.11.213) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server id 15.1.1591.10; Wed, 18 Dec 2019
 10:43:24 +0800
From: Hanjie Lin <hanjie.lin@amlogic.com>
To: Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong
 <narmstrong@baylibre.com>, Rob Herring <robh@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Felipe Balbi <felipe.balbi@linux.intel.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH v2 2/6] dt-bindings: usb: dwc3: Add the Amlogic A1 Family DWC3
 Glue Bindings
Date: Wed, 18 Dec 2019 10:42:20 +0800
Message-ID: <1576636944-196192-3-git-send-email-hanjie.lin@amlogic.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576636944-196192-1-git-send-email-hanjie.lin@amlogic.com>
References: <1576636944-196192-1-git-send-email-hanjie.lin@amlogic.com>
MIME-Version: 1.0
X-Originating-IP: [10.18.11.213]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_184301_011721_45650AAC 
X-CRM114-Status: UNSURE (   6.81  )
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
 .../bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml  | 32 ++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml b/Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml
index 4efb77b..9740027 100644
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
 
@@ -124,4 +130,30 @@ examples:
               snps,quirk-frame-length-adjustment;
           };
     };
+  - |
+    usb: usb@ffe09000 {
+          status = "okay";
+          compatible = "amlogic,meson-a1-usb-ctrl";
+          reg = <0x0 0xffe09000 0x0 0xa0>;
+          #address-cells = <2>;
+          #size-cells = <2>;
+          ranges;
 
+          clocks = <&clkc_periphs CLKID_USB_CTRL>,
+           <&clkc_periphs CLKID_USB_BUS>,
+           <&clkc_periphs CLKID_XTAL_USB_PHY>,
+           <&clkc_periphs CLKID_XTAL_USB_CTRL>;
+          clock-names = "usb_ctrl", "usb_bus", "xtal_usb_phy", "xtal_usb_ctrl";
+          resets = <&reset RESET_USBCTRL>;
+          phys = <&usb2_phy0>;
+          phy-names = "usb2-phy0";
+
+          dwc3: usb@ff400000 {
+                  compatible = "snps,dwc3";
+                  reg = <0x0 0xff400000 0x0 0x100000>;
+                  interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
+                  dr_mode = "host";
+                  snps,dis_u2_susphy_quirk;
+                  snps,quirk-frame-length-adjustment = <0x20>;
+          };
+  };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
