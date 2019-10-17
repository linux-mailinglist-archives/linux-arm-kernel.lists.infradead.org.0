Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7685DDA754
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 10:27:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0my600Nv+I7VaTh+1uCfSA/8O5cY/zEH8TaMNLrFZww=; b=YixYP4WqMircti
	2xO84S7mBHFZ0M7xXFmJl3SQ2fJa4i562b1UAcJv+m6s7OyVECyVIpIBlyQaQfqR0MFzZ3AkMUN1O
	L3RtyAS/hG6kUQjfd7/keSfLjm3uTwt1rxpGX2AWUESzC2gLQqW//GYRUYyMladCZtKnDUdjYBLvR
	YJxe3ru7jYYTRwnFB8sncmb1KVp9GruKwRXPOSeu/FVH7q1QCwfR4pm3FLuOhPiwjKiw61POwbUMX
	djrr64ISm9gBlWc0nmDE0dzUVCb461N+ya7RZLfavAOKT/5xiDkUwb+d0yZ+c4PXdat1TmtFPRBXu
	Uf1h95Yq9cyz3+l7WoPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL181-0001gl-B6; Thu, 17 Oct 2019 08:27:25 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL171-00010J-9v; Thu, 17 Oct 2019 08:26:24 +0000
X-UUID: 0862b45ea57148b4bd7394c102c41da9-20191017
X-UUID: 0862b45ea57148b4bd7394c102c41da9-20191017
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <min.guo@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1080391445; Thu, 17 Oct 2019 00:26:07 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 17 Oct 2019 01:26:13 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 17 Oct 2019 16:26:10 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 17 Oct 2019 16:26:10 +0800
From: <min.guo@mediatek.com>
To: Bin Liu <b-liu@ti.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH RESEND v7 1/6] dt-bindings: usb: musb: Add support for
 MediaTek musb controller
Date: Thu, 17 Oct 2019 16:25:49 +0800
Message-ID: <20191017082554.27953-2-min.guo@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191017082554.27953-1-min.guo@mediatek.com>
References: <20191017082554.27953-1-min.guo@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 4ED10C889B902A1A82AC1FD48C18778CAA1FE575CE1BD26985FC9F20878486BE2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_012623_387231_0B40AA65 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 hdegoede@redhat.com, tony@atomide.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Alan Stern <stern@rowland.harvard.edu>, Min Guo <min.guo@mediatek.com>,
 chunfeng.yun@mediatek.com, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Min Guo <min.guo@mediatek.com>

This adds support for MediaTek musb controller in
host, peripheral and otg mode.

Signed-off-by: Min Guo <min.guo@mediatek.com>
---
changes in v7:
1. Modify compatible as
- compatible : should be one of:
               "mediatek,mt2701-musb"
               ...
               followed by "mediatek,mtk-musb"
2. Change usb connector child node compatible as "gpio-usb-b-connector" 

changes in v6:
1. Modify usb connector child node

changes in v5:
suggested by Rob:
1. Modify compatible as 
- compatible : should be one of:
               "mediatek,mt-2701"
               ...
               followed by "mediatek,mtk-musb"
2. Add usb connector child node

changes in v4:
suggested by Sergei:
1. String alignment

changes in v3:
1. no changes

changes in v2:
suggested by Bin:
1. Modify DRC to DRD
suggested by Rob:
2. Drop the "<soc-model>-musb" in compatible
3. Remove phy-names
4. Add space after comma in clock-names
---
 .../devicetree/bindings/usb/mediatek,musb.txt      | 55 ++++++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/mediatek,musb.txt

diff --git a/Documentation/devicetree/bindings/usb/mediatek,musb.txt b/Documentation/devicetree/bindings/usb/mediatek,musb.txt
new file mode 100644
index 0000000..e53c482
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/mediatek,musb.txt
@@ -0,0 +1,55 @@
+MediaTek musb DRD/OTG controller
+-------------------------------------------
+
+Required properties:
+ - compatible      : should be one of:
+                     "mediatek,mt2701-musb"
+                     ...
+                     followed by "mediatek,mtk-musb"
+ - reg             : specifies physical base address and size of
+                     the registers
+ - interrupts      : interrupt used by musb controller
+ - interrupt-names : must be "mc"
+ - phys            : PHY specifier for the OTG phy
+ - dr_mode         : should be one of "host", "peripheral" or "otg",
+                     refer to usb/generic.txt
+ - clocks          : a list of phandle + clock-specifier pairs, one for
+                     each entry in clock-names
+ - clock-names     : must contain "main", "mcu", "univpll"
+                     for clocks of controller
+
+Optional properties:
+ - power-domains   : a phandle to USB power domain node to control USB's
+                     MTCMOS
+
+Required child nodes:
+ usb connector node as defined in bindings/connector/usb-connector.txt
+Optional properties:
+ - id-gpios        : input GPIO for USB ID pin.
+ - vbus-gpios      : input GPIO for USB VBUS pin.
+ - vbus-supply     : reference to the VBUS regulator, needed when supports
+                     dual-role mode
+
+Example:
+
+usb2: usb@11200000 {
+	compatible = "mediatek,mt2701-musb",
+		     "mediatek,mtk-musb";
+	reg = <0 0x11200000 0 0x1000>;
+	interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_LOW>;
+	interrupt-names = "mc";
+	phys = <&u2port2 PHY_TYPE_USB2>;
+	dr_mode = "otg";
+	clocks = <&pericfg CLK_PERI_USB0>,
+		 <&pericfg CLK_PERI_USB0_MCU>,
+		 <&pericfg CLK_PERI_USB_SLV>;
+	clock-names = "main","mcu","univpll";
+	power-domains = <&scpsys MT2701_POWER_DOMAIN_IFR_MSC>;
+	connector{
+		compatible = "gpio-usb-b-connector";
+		label = "micro-USB";
+		type = "micro";
+		id-gpios = <&pio 44 GPIO_ACTIVE_HIGH>;
+		vbus-supply = <&usb_vbus>;
+	};
+};
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
